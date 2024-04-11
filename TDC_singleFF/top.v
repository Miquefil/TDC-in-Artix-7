//`include "defines.v"

module top #(parameter NUM = 12)  (
    input              clk,
    input              hit,
    output[NUM-1:0]    taps,
    output[NUM-1:0]    ff
    );



    Fine #(NUM) my_chain_inst (
        .clk(clk),
        .hit(hit),
        .outTaps(taps),
        .outFF(ff)
    );

endmodule