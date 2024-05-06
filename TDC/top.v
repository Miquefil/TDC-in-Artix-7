//////////////////////////////////////////////////////////////////////
// Module Name: top
//              manage TDC, FIFO and UART
//
// Author: Miqueas Filsinger
// Date: 21-04-2024
//
// Connections:
// --------------------------------------------------------------------
// |--PACKAGE PIN---|--- COMPONENT ---|----wire name----|----Note-----|
// |    M26         |     DS2.2       |       clk       |     clk     |
// |    M26         |     DS2.2       |   led_WriteERR  |     led0    |
// |    T24         |     DS3.2       |   led_ReadERR   |     led1    |
// |    T8          |       J33       |      hit        | Conector SMA|
// |    P6          |      SW3.3      |   startReading  | Boton Norte |
// |    T5          |      SW5.3      |   startWriting  | Boton Sur   |
// |    R5          |      SW7.3      |   but_rst_read  | Boton Oeste |
///////////////////////////////////////////////////////////////////////
`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module top (
    input  wire                     clk_p,
    input  wire                     clk_n,
    input  wire                     irst,
    input  wire                     but_rst_read,
    input  wire                     hit,
    input  wire                     startWriting,
    input  wire                     startReading,

    output wire                     led_ReadERR,
    output wire                     led_WriteERR,

    input  wire                     RX,
    output wire                     TX,
    input  wire                     CTS,
    output wire                     RTS
    );//-------------------------------------------------------
    //NOTES: --------------------------------------------------
    //TODO: Cambié estándar LVDS25 a SSTL15 en la linea del GPIO SMA hit
    ////////////////////////////////////////////////////////////////////
    ///----  LEDS       -----------------------------------------
    reg                             ledWR, ledRE;
    assign                          led_ReadERR  = ledRE;
    assign                          led_WriteERR = ledWR;
    //------------------------------------------------------------

    ///Starting Delay --------------------------------------------
    // reg                     rCLK =1'b0;                             //Read Clock for FIFO
    wire                    rCLK;
    assign                  rCLK = uart_clk;
    reg [3:0]               starting_delay_counter  = 4'b0000;
    reg                     starting_flag  = 1'b1;                  //1:starting delay happening, defined later
    reg                     mem_rst = 1'b0;                         //It needs 5 clocks   
                                                                    //Reset must be held high for at least 5 read clocks, and start 
                                                                    //Also WriteEN=0 4 cycles before reset so we wait 

    always @(posedge rCLK) begin  
        if(starting_flag) begin
            if  (starting_delay_counter < 4'hf) begin
                starting_delay_counter  <= starting_delay_counter + 1'b1;
            end
            else if(starting_delay_counter == 4'hf)begin
                starting_delay_counter  <= 4'h0;
                starting_flag           <= 1'b0;
            end

            if  ((starting_delay_counter < 4'h5)) begin
                mem_rst <= 1'b0;
            end
            else if((starting_delay_counter == 4'h6))begin
                mem_rst <= 1'b1;
            end
            else if (starting_delay_counter == 4'hb) begin
                mem_rst <= 1'b0;
            end
        end

        if(startReading && !starting_flag && !but_rst_read) begin  //Enables UART
            uart_send <= 1'b1;
        end
        else begin
            uart_send <= 1'b0;
        end
    end
    //------------------------------------------------------------


    ///////////------TDC----------------------------------------------------------
    wire                            clk;
    wire                            rst;
    assign                          rst = (irst);
    wire                            wStartTDC;
    reg                             startTDC;
    assign                          wStartTDC = startTDC;
    wire [`DIG_OUT-1:0]             data;
    wire                            measure_done;

    TDC u_tdc(
        .iClk(clk),
        .iRst(rst),
        .iHit(hit),
        .enable(startTDC),
        .oTDC(data),
        .done(measure_done)
    );

    ///////////------ MEMORY -----------------------------------------------------
    wire                                         wCLK;//
    reg                                          readEN  = 1'b0;
    // reg                                          writeEN = 1'b0;//
    wire                                         writeEN;
    wire [31:0]                                  mem_output;
    wire                                         mem_busy;
    wire                                         mem_full;
    wire                                         mem_empty;
    wire                                         almost_full;
    wire                                         almost_empty;
    wire                                         mem_readerr;//
    wire                                         mem_writeerr;//
    wire [31:0]                                  mem_input;//
    //!!Debugging mem and uart--------------------------------------------------------
    // Preloading data to FIFO to check UART -----

    // parameter   MEM_INIT_FILE   = "C:/Users/mique/Desktop/TDC-in-Artix-7/TDC/mem.hex";   
    // reg         [31:0]          mem [255:0];
    // reg         [7:0]           mem_debug_counter = 8'h00;       
    // initial begin
    //     if (MEM_INIT_FILE != "") begin
    //         $readmemh(MEM_INIT_FILE, mem, 0, 255);
    //     end
    // end 
    // assign      mem_input[`DIG_OUT-1:0]       = mem[mem_debug_counter];     //!!DEBUG MODE
    assign      mem_input[`DIG_OUT-1:0]     = data;     //!!NOT DEBUG - data is the output of TDC
    //--------------------------------------------------------------------------------
    memory_ctrl u_memory (
        .Rclk(rCLK),                        //input
        .Wclk(wCLK),                        //input  
        .ReadEN(readEN),                    //input  
        .WriteEN(writeEN),                  //input  
        .rst(mem_rst),                      //input
        .data_input(mem_input),          //input
        .data_output(mem_output),           //input  
        .full(mem_full),                    //output //1: memory full
        .empty(mem_empty),
        .almost_full(almost_full),          //output
        .almost_empty(almost_empty),        //output
        .readERR(mem_readerr),              //output 
        .writeERR(mem_writeerr)             //output 
    );
    ////////////////////////////////////////////////////////////////////////////////////////

    assign      wCLK                        = clk;
    assign      writeEN                     = (measure_done & (~mem_full));     //TODO: check timings
    
    ////////----------------------WRITE---------------------------------------------------
    always @(posedge wCLK) begin
        //!!DEBUGGING: Just for preloaded FIFO ------------------------------------- 
        // if(writeEN && !(mem_debug_counter == 255)) begin
        //     mem_debug_counter <= mem_debug_counter + 1'b1;
        // end
        //_---------------------------------------------------------------------------
        //Starting the whole TDC
        if(startReading && !starting_flag) begin
            startTDC <= 1'b0;
        end
        else if (startWriting && !starting_flag) begin
            startTDC <= 1'b1;
        end

        //Write Error:
        if(mem_writeerr) begin
            ledWR     <= 1;
        end
        else begin
            ledWR      <= 0;
        end
    end
    ///////////////////////------------------------------------------------------------

    ///////////------ CLOCK ------------------------------------------------------------
    wire                            clkWizard;
    block_clock_wrapper u_clk ( 
        .CLK_IN1_D_0_clk_n(clk_n),
        .CLK_IN1_D_0_clk_p(clk_p),
        .clk_out2_0(clk),               //200Mhz
        .clk_out_0(clkWizard)           //7.37... Mhz
        );
    ///////////------ UART ------------------------------------------------------------
    parameter                       NB_UART = 8;      
    reg                             uart_clk = 1'b0;
    reg                             uart_send;     
    wire [NB_UART-1:0]              uart_dataIn;                            
    wire                            uart_active;
    wire                            uart_dataOut;          //salida serie
    wire                            uart_done; 
    wire                            uart_reload;

    assign                          TX  = uart_dataOut;
    // assign      RTS = 1'b1;  //Recommendation to leave it open
    assign                          CTS = 1'b0;
    // assign       RX = 1'b0;  //Recommendation to leave it open

    (* dont_touch = "TRUE" *) reg [NB_UART-1:0]     uart_buffer = {NB_UART{1'b0}}; 
    (* dont_touch = "TRUE" *) reg [31:0]            mem_buffer;
    assign                  uart_dataIn             = uart_buffer;
    uart_tx #(NB_UART) u_uart (                
            .i_Clock            (uart_clk),               //input       
            .i_Tx_DV            (uart_send),              //input       
            .i_Tx_Byte          (uart_dataIn),            //input [7:0] 
            .o_Tx_Active        (uart_active),            //output      
            .o_Tx_Serial        (uart_dataOut),           //output  reg 
            .o_Tx_Done          (uart_done),              //output  wire
            .o_Tx_Reload        (uart_reload)             //toggle for reloading data
    );
    
    parameter                               N_COUNTER_UART_CLK = 5;
    reg [N_COUNTER_UART_CLK-1:0]   	        counter = {N_COUNTER_UART_CLK{1'b0}};
    wire                                    TOP_COUNTER;
    assign                                  TOP_COUNTER = (counter=={N_COUNTER_UART_CLK{1'b1}});

    //UART CLK, MEM BUFFER, and READ ERROR ASSERTION -------------------------------------
    always @(posedge clkWizard) begin
        //Counter-------------------------
        //FIFO Clock and Counter are independent of startReading flag
        if (TOP_COUNTER) begin
            counter     <= {N_COUNTER_UART_CLK{1'b0}};  
            uart_clk    <= ~uart_clk;
        end
        else begin
            counter     <= counter + {{N_COUNTER_UART_CLK-1{1'b0}}, 1'b1};
        end
        ///////////------------------------
        //refreshing buffer----------------
        if(startReading) begin      
            mem_buffer <= mem_output[31:0];
        end
        //read error, show in led ---------------------
        if(mem_readerr) begin //Read Error:
            ledRE      <= 1'b1;
        end
        else begin
            ledRE      <= 1'b0;
        end
    end

    ////////////---- READING AND TRANSMISSION ----------------------------------------------------
    reg [1:0]                       buffer_counter      = 0;
    wire                            TOP_BYTE;
    assign                          TOP_BYTE = (buffer_counter == 3);

    always @(posedge uart_clk) begin
        ////----- Updating uart_buffer --- counting the 4 bytes in mem_buffer
        /// we change the uart_buffer in every reload toggle
        if(uart_reload) begin
            if (TOP_BYTE) begin
                buffer_counter      <= 0;
            end
            else begin
                buffer_counter      <= buffer_counter + 1;
            end
        end
        case (buffer_counter)
            2'b00 : uart_buffer <= mem_buffer[7:0];
            2'b01 : uart_buffer <= mem_buffer[15:8];
            2'b10 : uart_buffer <= mem_buffer[23:16];
            2'b11 : uart_buffer <= mem_buffer[31:24];
            default: uart_buffer <= 8'h00;
        endcase
        //---------------------------------------------------------------------
        // READ ENABLE ---------------------------------------------------------
        // rEN asserted when uart_reload comes high, TDC is in reading mode, and 
        // it is transmitting the last byte, so to synchronize the transmission
        if(readEN) begin
            readEN  <= 1'b0;
        end 
        else if(startReading && !mem_empty && uart_reload && TOP_BYTE)  begin
            readEN  <= 1'b1;
        end
        //-----------------------------------------------------------------------
    end
endmodule //