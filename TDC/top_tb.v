`timescale  1ns/1ns

`include "defines.v"

module top_tb(
    );
    reg                                clk;
    reg                                hit;
    reg                                rst;
    reg                                startWr;
    reg                                startRead;
    wire                               led_ReadERR, ledWriteERR;
    wire[`DIG_OUT-1:0]                 res;


    wire[`NUM_TAPS-1:0]         FFStart, FFStop;
    wire[`NUM_TAPS-1:0]         taps;
    wire                        merge_done; 
    top u_top(
        .iClk(clk),
        .iRst(rst),
        .iHit(hit),
        .startWriting(startWr),
        .startReading(startRead),
        .led_ReadERR(led_ReadERR),
        .led_WriteERR(led_WriteERR)
    );

    localparam TCLK = 8;
    initial begin
        clk = 1'b0;
        forever #(TCLK/2) clk = ~clk;
    end

    initial begin        
        hit        = 1'b0;
        startRead  = 1'b0;
        #5 rst     = 1'b0;
        #5 rst     = 1'b1; 
        #5 rst     = 1'b0;
        #150;   //este delay es importante en 150nS, starting time

        hit     = 1'b1;
        startWr = 1'b1;
        startRead = 1'b0;
        #(3*TCLK);
        hit     = 1'b0;


        hit     = 1'b1;
        startWr = 1'b1;
        startRead = 1'b0;
        #(2*TCLK);
        hit     = 1'b0;

        #10
        startWr = 1'b0;
        startRead = 1'b1;
        
        #(5*TCLK)
        $finish;
    end

endmodule