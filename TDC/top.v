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
    input  wire                     ReadClk,
    input  wire                     WriteClk,
    input  wire                     rst,
    input  wire                     hit,

    output reg                      led_ReadERR,
    output reg                      led_WriteERR
    );
    

    wire [`DIG_OUT-1:0]             data;
    wire                            measure_done;
    TDC u_tdc(
        .iClk(WriteClk),
        .iRst(rst),
        .iHit(hit),
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
    assign      wCLK                        = WriteClk;
    assign      rCLK                        = ReadClk;

    //assign      writeEN                     = measure_done;     //TODO: checkear los timings acá


    ////////------ SPI ------------------------------------------------------------
    blockdesign_wrapper u_spi(
        .AXI_LITE_0_araddr ( ),                //input       [6:0]
        .AXI_LITE_0_arready ( ),                    //output      
        .AXI_LITE_0_arvalid ( ),                    //input       
        .AXI_LITE_0_awaddr ( ),                //input       [6:0]
        .AXI_LITE_0_awready ( ),                    //output      
        .AXI_LITE_0_awvalid ( ),                    //input       
        .AXI_LITE_0_bready ( ),                     //input       
        .AXI_LITE_0_bresp ( ),                 //output      [1:0]
        .AXI_LITE_0_bvalid ( ),                     //output      
        .AXI_LITE_0_rdata ( ),                //output      [31:0]
        .AXI_LITE_0_rready ( ),                     //input       
        .AXI_LITE_0_rresp ( ),                 //output      [1:0]
        .AXI_LITE_0_rvalid ( ),                     //output      
        .AXI_LITE_0_wdata ( ),                //input       [31:0]
        .AXI_LITE_0_wready ( ),                     //output      
        .AXI_LITE_0_wstrb ( ),                 //input       [3:0]
        .AXI_LITE_0_wvalid ( ),                     //input       
        .SPI_0_0_io0_io ( ),                        //inout       
        .SPI_0_0_io1_io ( ),                        //inout       
        .SPI_0_0_io2_io ( ),                        //inout       
        .SPI_0_0_io3_io ( ),                        //inout       
        .SPI_0_0_ss_io ( ),                         //inout       
        .STARTUP_IO_0_cfgclk ( ),                   //output      
        .STARTUP_IO_0_cfgmclk ( ),                  //output      
        .STARTUP_IO_0_eos ( ),                      //output      
        .STARTUP_IO_0_preq ( ),                     //output      
        .ext_spi_clk_0 ( ),                         //input       
        .ip2intc_irpt_0 ( ),                        //output      
        .s_axi_aclk_0 ( ),                          //input       
        .s_axi_aresetn_0 ( )                        //input       
    );

    always ( ) @(posedge wCLK) begin
    //Enabling Write
        if(measure_done & !almost_full) begin
            writeEN <= 1;
        end 
        else begin
            writeEN <= 0;
        end

    //Write Error:
        if(mem_writeerr) begin
            led_WriteERR     <= 1;
        end

    //Read Error:
        if(mem_readerr) begin
            led_ReadERR     <= 1;
        end




    end
    ///////////------------------------------------------------------------------------------
endmodule //