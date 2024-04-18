`timescale  1ns/1ns

`include "defines.v"

module top_tb(
    );
    reg                                clk;
    reg                                hit;
    reg                                rst;
    wire[`DIG_OUT-1:0]                 res;


    wire[`NUM_TAPS-1:0]         FFStart, FFStop;
    wire[`NUM_TAPS-1:0]         taps;
    wire                        merge_done; 
    top u_top(
        .iClk(clk),
        .iRst(rst),
        .iHit(hit),
        .oTDC(res),
        .done(merge_done),
        // .StopConv(),         //debugging
        // .FFStart(FFStart),   //debugging
        // .FFStop(FFStop),     //debugging
        .taps(taps)
    );

    localparam TCLK = 8;
    initial begin
        clk = 1'b0;
        forever #(TCLK/2) clk = ~clk;
    end

    initial begin        
        hit     = 1'b0;
        rst     = 1'b1; 
        #5
        rst     = 1'b0;
        #150;   //este delay es importante en 150nS, starting time

        hit = 1'b1;
        #(2*TCLK);

        hit = 1'b0;
        #(5*TCLK)
        $finish;
    end

endmodule