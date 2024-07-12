//////////////////////////////////////////////////////////////////////
// Module Name: Decode Stop
// Description: From the FF Column of start, it looks for the bin where the
//              rise edge is, and delivers the number of it
//
// Author: Miqueas Filsinger
//
// Revision History:
//
// Notes:
//
//////////////////////////////////////////////////////////////////////
`include "defines.v"
(* keep_hierarchy = "TRUE" *) 
module DecodeStop #(parameter  NUM_FF= 1, parameter BITS_DECO = 8) (
    input    wire[NUM_FF-1:0]           wDecodeIn,
    input    wire                       rst,
    output   wire[BITS_DECO-1:0]        wDecodeOut
);

    reg [BITS_DECO-1:0] bin = {BITS_DECO{1'b0}};
    reg [BITS_DECO-1 : 0] r_left_samples    = {BITS_DECO{1'b0}};  //Used in Ones Counter architecture
    reg [BITS_DECO-1 : 0] r_right_samples   = {BITS_DECO{1'b0}};  //Used in Ones Counter architecture
    integer i;
    integer j;
    
    // always @(*) begin
    //     bin = 0;
    //     for (i = 0; i < NUM_FF-4; i=i+1'b1) begin
    //         if( ~wDecoStoptIn[i] & wDecoStoptIn[i+1] & wDecoStoptIn[i+2] & wDecoStoptIn[i+3] & wDecoStoptIn[i+4] ) begin
    //             bin = i+1;
    //         end
    //     end
    // end

    //Implementing Ones Counter
    // `include "decode_strategy.vh"

endmodule //