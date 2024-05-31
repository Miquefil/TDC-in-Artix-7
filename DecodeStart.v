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
(* keep_hierarchy = "TRUE" *) 
module DecodeStart #(parameter  NUM_FF= 1, parameter BITS_DECO = 8) (
    input    wire[NUM_FF-1:0]         wDecoStartIn,
    output   wire[BITS_DECO-1:0]      wDecoStartOut
);

    reg [BITS_DECO-1 : 0] bin = {BITS_DECO{1'b0}};
    integer i;
    
    // always @(*) begin
    //     for (i = 0; i < NUM_FF-4; i=i+1) begin
    //         if( wDecoStartIn[i] & ~wDecoStartIn[i+1] & ~wDecoStartIn[i+2] & ~wDecoStartIn[i+3] & ~wDecoStartIn[i+4] ) begin
    //             bin = i+1;
    //         end
    //     end
    // end


    //Implementing Ones Counter
    always @(*) begin
        for (i = 0; i < NUM_FF; i=i+1) begin
            if(wDecoStartIn[i] == 1'b1) begin
                bin = bin + 1'b1;
            end
        end
    end

    // genvar i;
    // generate
    //     for (i = 0; i < ; i=i+1) begin
            
    //     end
    // endgenerate
    // 6LUT_counter u_6KUT(

    // );

    assign wDecoStartOut = bin;
endmodule //