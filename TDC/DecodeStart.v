//////////////////////////////////////////////////////////////////////
// Module Name: Decode Start
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

module DecodeStart (# parameter  NUM_FF= 1, #parameter BITS_DECO = 8) (
    input    wire[NUM_FF-1:0]         wDecoStartIn,
    output   wire[BITS_DECO-1:0]      wDecoStartOut
);

    reg [BITS_DECO:0] bin;

    always @(*) begin
        bin = 0;
        for (i = 0; i < NUM_FF-20; i=i+1'b1) begin
            if( wDecoStartIn[i] & ~wDecoStartIn[i+1] & ~wDecoStartIn[i+2] & ~wDecoStartIn[i+3] & ~wDecoStartIn[i+4] ) begin
                bin = i+1;
            end
        end
    end

    assign wDecoStartOut = bin;
endmodule //