//////////////////////////////////////////////////////////////////////
// Module Name: top
//              manage TDC, FIFO and UART
//
// Author: Miqueas Filsinger
// Date: 21-04-2024
//
// Connections:
/////////////////////////////////////////////////////////////////////
`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module top (
    input  wire                     clk_p,
    input  wire                     clk_n,
    // input  wire                     but_rst,
    input  wire                     hit_p,
    input  wire                     hit_n,
    input  wire                     but_startWriting,
    input  wire                     but_startReading,
    input  wire                     but_debugmode,
    input  wire                     selector_0,
    input  wire                     selector_1,

    output wire                     led_ReadERR,
    // output wire                     led_debugmode,
    output wire                     led_WriteERR,
    output wire                     led_WriteStage,
    output wire                     led_ReadStage,
    
    input  wire                     RX,
    output wire                     TX,
    input  wire                     CTS,
    output wire                     RTS
    );//-------------------------------------------------------
    //NOTES: --------------------------------------------------
    //TODO: Cambié estándar LVDS25 a SSTL15 en la linea del GPIO SMA hit
    //TODO: Agregar RST
    //TODO: No se borra la FIFO. Averiguar por qué. Si hago una lectura sin escritura, leo lo anterior.
    //TODO: Agregar LEDS de estado
    //TODO: Ver PLL y distintos Coarse Counters.
    //TODO: Hay un offset en la salida de datos en UART. Checkear
    //TODO: Agregar varias fifo en serie.
    ////////////////////////////////////////////////////////////////////
    

    ///----  LEDS       -----------------------------------------
    reg         ledWR                       = 1'b0;
    reg         ledRE                       = 1'b0;
    reg         ledWrite                    = 1'b0;
    reg         ledRead                     = 1'b0;
    

    assign      led_ReadERR                 = ledRE;
    assign      led_WriteERR                = ledWR;
    assign      led_WriteStage              = ledWrite;
    assign      led_ReadStage               = ledRead;
    //------------------------------------------------------------
    //---- DIFERRENTIAL HIT- -------------------------------------
    wire                            external_hit;
    
    IBUFDS #(
        .DIFF_TERM      ("TRUE"),      // //important!!! Set true to have 50ohm at input!!!!!!!!
        .IBUF_LOW_PWR   ("FALSE"),      // Low power="TRUE", Highest performance="FALSE"
        .IOSTANDARD     ("LVDS_25")     // Specify the input I/O standard
        // .IOSTANDARD     ("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst (
        .O(external_hit),  // Buffer output
        .I(hit_p),  // Diff_p buffer input (connect directly to top-level port)
        .IB(hit_n) // Diff_n buffer input (connect directly to top-level port)
    );


    
    ///Starting Delay & Starting Flags --------------------------------------------
    wire[1:0]               selector;
    reg                     start_mem_reset             = 1'b1;
    reg                     finish_mem_reset            = 1'b0;
    reg                     debugmode                   = 1'b0;
    wire                    rCLK;                               //reading clock
    reg                     uart_clk                    = 1'b0;     
    reg [3:0]               starting_delay_counter      = 4'b0000;
    reg                     mem_rst                     = 1'b0;                 //Memory needs 5 clocks:
                                                                                //Reset must be held high for at least 5 read (or write) clocks
                                                                                //Read/Write Enables must be held low 5 clocks before of reset
    reg                     startWriting        = 1'b0;
    reg                     startReading        = 1'b0;
    reg                     startTDC            = 1'b0;
    reg                     starting_flag_reset = 1'b0;

    assign                  led_debugmode       = debugmode;
    assign                  rCLK                = uart_clk;

    assign  selector[0] = selector_0;
    assign  selector[1] = selector_1;

    ///////////------TDC----------------------------------------------------------
    //
    wire                            clk;
    wire                            clk1;
    wire                            clk2;

    reg                             rst_tdc = 1'b0;
    wire [`DIG_OUT-1:0]             data;
    wire                            measure_done;
    reg                             hit;
    wire                            debug_hit;
    wire                            debug_hit_enabler;

    always @(*) begin
        hit         = external_hit;
        case (debugmode)
            1'b0:   hit = external_hit;
            1'b1:   hit = debug_hit;
        endcase
    end
    TDC u_tdc(
        .clk0               (clk),          
        .clk1               (clk1),               
        .clk2               (clk2),  
        // .debug_mode         (debugmode),   
        .iRst               (rst_tdc),                        
        .iHit               (external_hit),                        
        // .iHit               (debug_hit),         
        .enable             (startTDC), 
        // .enable             (1'b1), ///TODO: FUNCIONA BIEN!!
        .oTDC               (data),    
        .debug_hit_enabler  (debug_hit_enabler),        //out wire          
        .done               (measure_done)
    );

    ///////////------ MEMORY -----------------------------------------------------
    reg                 flag_empty = 1'b0;
    wire                wCLK;
    assign              wCLK       = clk;
    reg                 readEN     = 1'b0;
    // wire                readEN;
    wire                writeEN;
    wire                mem_full;
    // assign              writeEN = ((~start_mem_reset) && (~mem_full) && startWriting);   //!!DEBUG MODE -- Comment for normal mode
    assign              writeEN = (measure_done && (~mem_full) && startWriting); //!!NORMAL MODE-- Uncomment
    wire [31:0]         mem_output;
    wire [12:0]         mem_r_count;
    wire                mem_busy;
    wire                mem_empty;
    wire                mem_readerr;//
    wire                mem_writeerr;//
    wire [31:0]         mem_input;//
    //----------> !!Debugging mem and uart (!!!COMMENT ALL THIS SECTION IN NORMAL MODE)
    //---------->  Preloading data to FIFO to check UART 

    // parameter   MEM_INIT_FILE   = "C:/Users/mique/Desktop/TDC-in-Artix-7/mem.hex";   
    // reg         [31:0]          mem [1024:0];
    // reg         [9:0]           mem_debug_counter = 10'd0;       
    // initial begin
    //     if (MEM_INIT_FILE != "") begin
    //         $readmemh(MEM_INIT_FILE, mem, 0, 1024);
    //     end
    // end 
    // assign      mem_input[`DIG_OUT-1:0]       = mem[mem_debug_counter];     //!!DEBUG MODE UP TO HERE
    //----------> !!Debugging Mode
    assign      mem_input[`DIG_OUT-1:0]     = data;  //!!NOT DEBUG - UNCOMMENT IN NORMAL MODE
    
    memory_ctrl u_memory (
        .Rclk                       (rCLK),                                         //input
        .Wclk                       (wCLK),                                         //input  
        .ReadEN                     (readEN),                                       //input  
        .WriteEN                    (writeEN),                                      //input  
        .rst                        (mem_rst),                                      //input
        .data_input                 (mem_input),                                    //input
        .data_output                (mem_output), 
        .full                       (mem_full),                                     //output //1: memory full
        .empty                      (mem_empty),                                    //
        .almost_full                (),                                  //output
        .almost_empty               (),                                 //output
        .readERR                    (mem_readerr),                                  //output 
        .writeERR                   (mem_writeerr)                                  //output 
    );
    ////////////////////////////////////////////////////////////////////////////////////////
    /////
    /////   Condition for readEN:
    ////        when doing the first read, we save the value of rdcounter
    ////        to rdcounter_init
    ////        then readEN is high while rdcounter < rdcounter_init + 1024
    // reg                 first_read_en               = 1'b0;
    // reg                 r_init_saved                = 1'b0;
    // reg [12:0]          rd_counter_init             = 13'd0;
    // wire                rd_counter_condition;
    // assign              rd_counter_condition = ( mem_r_count < (rd_counter_init + 1022) );

    //State Machine ------------------------------------------------
    reg                     reset_debugger  = 1'b0;

    parameter               RESET_STATE     = 3'd0;
    parameter               WAITING_STATE   = 3'd1;
    parameter               WRITING_STATE   = 3'd2;
    parameter               READING_STATE   = 3'd3;
    parameter               DEBUG_STATE     = 3'd4;
    reg[2:0]                TOP_SM          = RESET_STATE;
    //---------------------------------------------------------------
    always @(posedge wCLK) begin
        // // !!DEBUGGING: Just for preloaded FIFO ------COMMENT BETWEEN THIS LINES FOR NORMAL MODE ------------------------------- 
        // if(startWriting && !(mem_debug_counter > 1024)) begin
        //     mem_debug_counter <= mem_debug_counter + 10'd1;    
        // end
    // //    if(but_rst) begin
    // //        mem_debug_counter <= 0;
    // //    end
        // //-----------------------------------------------------DEBUG
        //STATES MACHINE- --------------//

        // if(but_rst) begin
        //     TOP_SM          <= RESET_STATE;
        // end 
        case (TOP_SM)
            RESET_STATE: begin
                //mem reset cycle
                start_mem_reset <= 1'b1;
                if (finish_mem_reset) begin
                    start_mem_reset <= 1'b0;
                    rst_tdc         <= 1'b0;
                    TOP_SM          <= WAITING_STATE;
                end

                //reset flags
                reset_debugger      <= 1'b1;
                debugmode           <= 1'b0;
                rst_tdc             <= 1'b1;
                startReading        <= 1'b0;
                startWriting        <= 1'b0;
                startTDC            <= 1'b0;
                ledWrite            <= 1'b0;
                ledRead             <= 1'b0;             
                ledWR               <= 1'b0;
                ledRE               <= 1'b0;
            end

            WAITING_STATE: begin
                reset_debugger      <= 1'b1;
                rst_tdc             <= 1'b0;
                debugmode           <= 1'b0;
                startReading        <= 1'b0;
                startWriting        <= 1'b0;
                if(but_startWriting) begin
                    TOP_SM          <= WRITING_STATE;
                end 
                else if (but_startReading) begin
                    TOP_SM          <= READING_STATE;
                end 
                else if (but_debugmode) begin
                    TOP_SM          <= DEBUG_STATE;
                end 
            end

            WRITING_STATE: begin
                debugmode           <= 1'b0;
                startReading        <= 1'b0;
                startWriting        <= 1'b1;
                startTDC            <= 1'b1;
                ledWrite            <= 1'b1;
                ledRead             <= 1'b0;
                rst_tdc             <= 1'b0;

                if(but_startReading) begin
                    TOP_SM          <= READING_STATE;
                end 
            end

            READING_STATE: begin
                debugmode           <= 1'b0;
                startReading        <= 1'b1;
                startWriting        <= 1'b0;
                startTDC            <= 1'b0;
                ledWrite            <= 1'b0;
                ledRead             <= 1'b1;
                rst_tdc             <= 1'b0;

                if(but_startWriting) begin
                    TOP_SM          <= WAITING_STATE;    //TODO: Cuidado! puede rebotar de estados
                end 
            end

            DEBUG_STATE: begin
                reset_debugger      <= 1'b0;
                debugmode           <= 1'b1;
                startReading        <= 1'b0;
                startWriting        <= 1'b1;
                startTDC            <= 1'b1;
                ledWrite            <= 1'b1;
                ledRead             <= 1'b0;
                
                if(debug_finished) begin
                    TOP_SM          <= WAITING_STATE;
                end
            end

            default: TOP_SM         <= RESET_STATE;
        endcase

        //Empty flag in FIFO is synchronized with Write Clock.
        //Since this clock is faster than read clock, a flag is implemented
        if(mem_empty && startReading) begin
            flag_empty  <= 1'b1;
        end

        //Write Error:
        if(mem_writeerr) begin
            ledWR       <= 1'b1;
        end
        else begin
            ledWR       <= 1'b0;
        end
        //Read Error:
        if(mem_readerr) begin 
            ledRE      <= 1'b1;
        end
        else begin
            ledRE      <= 1'b0;
        end


        // if(startReading) begin
        //     first_read_en   <= 1'b1;
        // end
        // if(first_read_en & !r_init_saved) begin
        //     rd_counter_init <= mem_r_count;
        //     r_init_saved    <= 1'b1;
        // end
    end
    ///////////////////////------------------------------------------------------------
    ///---  COARSE DEBUGGER ------------------------------------------------------------------
    debugger    u_coarse_debug (
        .clk            (clk),                      //input   wire
        .rst            (reset_debugger),           //input   wire
        .enabler        (debug_hit_enabler),        //input   wire  --- ENABLER FOR HIT
        .debug_enabler  (debugmode),                //input wire -- ENABLER OF THE WHOLE BLOCK
        .debug_hit      (debug_hit),                //output  wire
        .finished       (debug_finished)            //output wire
    );
    //
    ///---  FINE DEBUGGER ------------------------------------------------------------------
    // fine_debugger    u_fine_debug (
    //     .clk            (clk),                      //input   wire
    //     .rst            (reset_debugger),           //input   wire
    //     .delay_sel      (selector),                 //input   wire [1:0]      
    //     .enabler        (debug_hit_enabler),        //input   wire  --- ENABLER FOR HIT
    //     .debug_enabler  (debugmode),                //input wire -- ENABLER OF THE WHOLE BLOCK
    //     .debug_hit      (debug_hit),                //output  wire
    //     .finished       (debug_finished)            //output wire
    // );
    //////////////////////--------------------------------------------------------------
    ///////////------ CLOCK ------------------------------------------------------------
    wire                            clkWizard;
    block_clock_wrapper u_clk ( 
        .CLK_IN1_D_0_clk_n(clk_n),                   //diff
        .CLK_IN1_D_0_clk_p(clk_p),                   //diff
        .clk_out_0(clkWizard),                       //7.33945 Mhz
        .clk_out2_0(clk),                            //200Mhz
        .clk_out3_0(clk1),                           //200Mhz + phase
        .clk_out4_0(clk2),                           //200Mhz + 2*phase
        .locked_0(),                                 //
        .reset_0(),                                   //
        .clk_out_ce_0                            (1'b1),
        .clk_out2_ce_0                          (1'b1),
        .clk_out3_ce_0                          (1'b1),
        .clk_out4_ce_0                           (1'b1)
        );

    ///////////------ UART ------------------------------------------------------------
    parameter                       NB_UART         = 8;
    reg                             uart_send       = 1'b0;     
    wire [NB_UART-1:0]              uart_dataIn;                            
    wire                            uart_active;
    wire                            uart_dataOut;         
    wire                            uart_done; 
    wire                            uart_reload;

    assign                          TX  = uart_dataOut;
    (* dont_touch = "TRUE" *) reg [NB_UART-1:0]     uart_buffer = {NB_UART{1'b0}};      //uart input buffer 
    assign                                          uart_dataIn = uart_buffer;   

    //32 bits counter for driving memory clock --- Every 32 counts it uart_clk toggles, thus 64 clkWizards enters in one uart_clk 
    //in that way if clkWizard has 7.3728Mhz then uart_clk has 115200kHz
    parameter                               N_COUNTER_UART_CLK  = 5;                    
    reg [N_COUNTER_UART_CLK-1:0]   	        counter_uart             = {N_COUNTER_UART_CLK{1'b0}};
    wire                                    TOP_COUNTER;
    assign                                  TOP_COUNTER         = (counter_uart=={N_COUNTER_UART_CLK{1'b1}});

    //UART CLK, MEM BUFFER, and READ ERROR ASSERTION -------------------------------------
    always @(posedge clkWizard) begin
        //Counter-------------------------
        //FIFO Clock and Counter are independent of startReading flag
        if (TOP_COUNTER) begin
            counter_uart        <= {N_COUNTER_UART_CLK{1'b0}};  
            uart_clk            <= ~uart_clk;
        end
        else begin
            counter_uart        <= counter_uart + {{N_COUNTER_UART_CLK-1{1'b0}}, 1'b1};
        end
    end
 
    uart_tx #(NB_UART) u_uart (                
            .i_Clock            (uart_clk),               //input       
            .i_Tx_DV            (uart_send),              //input       
            .i_Tx_Byte          (uart_dataIn),            //input [7:0] 
            .o_Tx_Active        (uart_active),            //output      
            .o_Tx_Serial        (uart_dataOut),           //output  reg 
            .o_Tx_Done          (uart_done),              //output  wire
            .o_Tx_Reload        (uart_reload)             //toggle for reloading data
    );
    
    ////////////---- READING AND TRANSMISSION ----------------------------------------------------
    

    //buffer_counter is a max 4 counter which selects memory output byte by byte to send it via uart
    reg [1:0]                       buffer_counter      = 2'b00;
    wire                            TOP_BYTE;
    assign                          TOP_BYTE = (buffer_counter == 2'b11);

    //Read stop: flag asserts high when more than 1024 reads are intended
    //TODO: important!! ReadEn can be replaced by uart_reload!!!!!! NO!XXXX
    //TODO: read enable will go high when in the middle of buffer_counter = 3 just one clock
    // assign                          readEN = (buffer_counter == 2'b10) & uart_reload;
    reg [2:0]           read_enable_wait_counter = 3'b00;


    reg[10:0]                       read_counts = 11'd0;
    wire                            read_stop;          
    assign                          read_stop = (read_counts >= 1024);
    always @(*) begin
        case (buffer_counter)
            2'b00  : uart_buffer = mem_output[7:0];
            2'b01  : uart_buffer = mem_output[15:8];
            2'b10  : uart_buffer = mem_output[23:16];
            2'b11  : uart_buffer = mem_output[31:24];
            default: uart_buffer = 8'h00;
        endcase
    end


    always @(posedge uart_clk) begin
        ////----- Updating uart_buffer --- counting the 4 bytes in mem_buffer
        /// we change the uart_buffer in every reload toggle
        if(uart_reload) begin
            if (TOP_BYTE || !startReading) begin//while startReading=false then held buffer_counter at first byte
                buffer_counter      <= 2'b00;
            end
            else begin
                buffer_counter      <= buffer_counter + {1'b0, 1'b1};
            end
        end
        //----------------------------------------------------------------------
        // READ ENABLE ---------------------------------------------------------
        // -readEN asserted high just for one clock
        if(readEN) begin        
                readEN  <= 1'b0;
        end 
        if(buffer_counter  == 2'b11) begin
            //When sending the lasy byte (buffer_counter == 3) then
            // wait 5 clocks to make a read.
            //          |---byte0---|---byte1---|---byte2---|---byte3---|
            //readEN:   _______________________________________----______
            if (read_enable_wait_counter == 3'd5) begin
                read_enable_wait_counter    <= 3'b00;
                readEN                      <= 1'b1;
                read_counts                 <= read_counts + 11'd1;
            end
            else begin
                read_enable_wait_counter <= read_enable_wait_counter + 3'b001;
            end
        end  
        else begin
            read_enable_wait_counter        <= 3'd0;
        end 
        //-----------------------------------------------------------------------
    end


    // Read Clock ---------------------------------------------------    
    always @(posedge rCLK) begin  
        //----Starting Reset--------
        if(start_mem_reset) begin
            if  (starting_delay_counter < 4'hf) begin
                starting_delay_counter  <= starting_delay_counter + 1'b1;
            end
            else if(starting_delay_counter == 4'hf)begin
                starting_delay_counter  <= 4'h0;
                starting_flag_reset     <= 1'b1;
                finish_mem_reset        <= 1'b1;
            end

            if(starting_flag_reset) begin       
                //flag for reseting starting_flag
                //due to crossing clock domains
                starting_flag_reset     <= 1'b0;
            end

            if  ((starting_delay_counter < 4'h5)) begin
                mem_rst <= 1'b0;
            end
            else if((starting_delay_counter == 4'h6))begin
                mem_rst <= 1'b1;
            end
            else if (starting_delay_counter >= 4'hb) begin
                mem_rst <= 1'b0;
            end
        end
        /////////----------------


        //----Start UART--------
        //uart_send should be kept high when TDC is in the 'sending data stage'
        if(startReading && !start_mem_reset && 
           !mem_empty && !flag_empty && (!read_stop))    begin  
            uart_send <= 1'b1;
        end
        else begin
            uart_send <= 1'b0;
        end

    end
    //------------------------------------------------------------
endmodule //