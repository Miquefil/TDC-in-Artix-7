//////////////////////////////////////////////////////////////////////
// Module Name: top
//              manage TDC, FIFO and SPI
//
// Author: Miqueas Filsinger
// Date: 21-04-2024
//
//////////////////////////////////////////////////////////////////////
`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module top (
    input  wire                     clk,
    input  wire                     rst,
    input  wire                     hit,
    input  wire                     startWriting,
    input  wire                     startReading,

    output reg                      led_ReadERR,
    output reg                      led_WriteERR
    );
    

    wire [`DIG_OUT-1:0]             data;
    wire                            measure_done;
    reg                             startTDC;
    TDC u_tdc(
        .iClk(WriteClk),
        .iRst(rst),
        .iHit(hit),
        .enable(startTDC),
        .oTDC(data),
        .done(measure_done)
    );

    ///////////------ MEMORY -----------------------------------------------------
    wire                                                            rCLK;//
    wire                                                            wCLK;//
    reg                                                             readEN;
    reg                                                             writeEN;//
    wire [31:0]                                                     mem_input;//
    wire [31:0]                                                     mem_output;
    wire                                                            mem_busy;
    wire                                                            mem_full;
    wire                                                            mem_empty;
    wire                                                            almost_full;
    wire                                                            almost_empty;
    wire                                                            mem_readerr;//
    wire                                                            mem_writeerr;//

    memory_ctrl u_memory (
        .Rclk(rCLK),                        //input
        .Wclk(wCLK),                        //input  
        .ReadEN(readEN),                    //input  
        .WriteEN(writeEN),                  //input  
        .data_input(mem_input),             //input  
        .data_output(mem_output),           //input  
        .full(mem_full),                    //output //1: memory full
        .empty(mem_empty),
        .almost_full(almost_full),          //output
        .almost_empty(almost_empty),        //output
        .readERR(mem_readerr),              //output 
        .writeERR(mem_writeerr)             //output 
    );

    assign      mem_input[`DIG_OUT-1:0]     = data;
    assign      wCLK                        = clk;

    //assign      writeEN                     = measure_done;     //TODO: checkear los timings acá
    
    ////////----------------------READ---------------------------------------------------
    always @(posedge wCLK) begin
        //Starting the whole TDC
        if (startWriting) begin
            startTDC <= 1'b1;
        end
        else if(startReading) begin
            startTDC <= 1'b0;
        end

        //Enabling Write
        if(startWriting & measure_done & !almost_full) begin
            writeEN <= 1;
        end 
        else begin
            writeEN <= 0;
        end
        

        //Write Error:
        if(mem_writeerr) begin
            led_WriteERR     <= 1;
        end
    end
    ///////////////////////------------------------------------------------------------

    ///////////------ UART ------------------------------------------------------------
    wire                            uart_clk;
    wire                            uart_interr;
    wire [63:0]                     uart_dataIn;                            
    wire                            uart_active;
    wire                            uart_dataOut;          //salida serie
    wire                            uart_done; 
    block_clock_wrapper u_clk (
        .CLK_IN1_D_0_clk_n(clk),                           // input
        .CLK_IN1_D_0_clk_p(),                           // input
        .clk_out_0(uart_clk),                                   // output
        .locked_0(),                                    // output
        .reset_0()                                      // input
        );

    uart_tx u_uart (
            .i_Clock(uart_clk),               //input       
            .i_Tx_DV(uart_interr),            //input       
            .i_Tx_Byte(uart_dataIn),          //input [7:0] 
            .o_Tx_Active(uart_active),        //output      
            .o_Tx_Serial(uart_dataOut),       //output  reg 
            .o_Tx_Done(uart_done)             //output  wire
    );
    reg                     uart_Now;
    reg [31:0]              uart_buffer; 
    reg [4:0]   	        counter;
    reg                     readCounter;
    //reg [63:0]              uart_dataInput;
    
    assign                  rCLK = readCounter;
    assign                  uart_interr = uart_Now;
    assign                  uart_dataIn = {uart_buffer[31:0], {16{2'b01}}};

    //Empezamos a leer      --- CODIGO HECHO PARA CLOCKS MEMORIA<-->UART iguales
    always @(posedge rCLK) begin
        if((startReading) & (counter<5'b11111)) begin //Counter
            counter <= counter + 1'b1;    
        end 
        else begin
            counter            <= 0;
        end

        if(startReading)//clock for FIFO
        begin
            if (counter==5'b11111) begin
                readCounter <= ~readCounter;
            end 
        end
        else begin
            readCounter <= 1'b0;
        end

        if(startReading&(~mem_empty)) begin  //Read Enable
            readEN  <= 1'b1;
        end 
        else begin
            readEN  <= 1'b0;
        end

        
        if(startReading) begin  //Transmitting
            if ((counter == 0)&(~mem_empty)) begin  //transmito en el 0
                uart_Now <= 1'b1;    
            end 
            else begin
                uart_Now <= 1'b0;
            end
        end

        if(startReading) begin      //refreshing buffer
            uart_buffer <= mem_output;
        end
        else begin
            uart_buffer <= 0;
        end

        if(mem_readerr) begin //Read Error:
            led_ReadERR     <= 1;
        end
    end
    ///////////------------------------------------------------------------------------------
endmodule //