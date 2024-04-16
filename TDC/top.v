//`include "defines.v"


`define NUM_TAPS    = 120
`define NUM_DECODE  = 7

module top #(parameter NUM = 12)  (
    input              iClk,
    input              iRst,
    input              iHit,
    output[NUM-1:0]    taps,
    output[NUM-1:0]    ff
    );

    wire                rst;                //manages internal and external rst
    wire                Rise, Fall;
    wire[NUM_TAPS]      Stop, Start;



    Edge u_EdgeDetector(
        .iClk       (iClk),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (Rise),
        .oFall      (Fall)
    );
    
    Fine #(`NUM_TAPS) u_FineDelay(
        .clk            (iClk),
        .iRst            (rst),
        .iHit           (iHit),
        .iStopEnable    (Fall),
        .iStartEnable   (Rise),
        .oFFStart      (Start),       //FF outputs of Start column
        .oFFStop        (Stop),       //FF outputs of Stop column
        .outTaps           ( ),        //output from the Carrys output
        .outFF             ( ) 
    );

endmodule