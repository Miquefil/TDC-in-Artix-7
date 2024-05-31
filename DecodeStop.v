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
(* keep_hierarchy = "TRUE" *) 
module DecodeStop #(parameter  NUM_FF= 1, parameter BITS_DECO = 8) (
    input    wire[NUM_FF-1:0]         wDecoStoptIn,
    output   wire[BITS_DECO-1:0]      wDecoStopOut
);

    reg [BITS_DECO-1:0] bin = {BITS_DECO{1'b0}};
    integer i;
    
    
    // always @(*) begin
    //     bin = 0;
    //     for (i = 0; i < NUM_FF-4; i=i+1'b1) begin
    //         if( ~wDecoStoptIn[i] & wDecoStoptIn[i+1] & wDecoStoptIn[i+2] & wDecoStoptIn[i+3] & wDecoStoptIn[i+4] ) begin
    //             bin = i+1;
    //         end
    //     end
    // end

    //Implementing Ones Counter
    always @(*) begin
        for (i = 0; i < NUM_FF; i=i+1) begin
            if(wDecoStoptIn[i] == 1'b1) begin
                bin = bin + 1'b1;
            end
        end
    end

    assign wDecoStopOut = bin;
endmodule //