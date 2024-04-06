`timescale  1ps/100fs
`include "defines.v"

module top_tb();
    reg             clk;
    reg             hit;
    wire[11:0]      outs;

    top #(12) my_top(
        .clk(clk),
        .hit(hit),
        .taps(outs)
        );

    initial begin
        clk = 1'b1;
        hit = 1'b0;
        #10;

        hit = 1'b1;
        #30;

        hit = 1'b0;
        #30;

        $finish;
    end

endmodule