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
`include "defines.v"
(* keep_hierarchy = "TRUE" *) 
module DecodeStart #(parameter  NUM_FF= 1, parameter BITS_DECO = 8) (
    input    wire[NUM_FF-1:0]           wDecoStartIn,
    input                               rst,
    output   wire[BITS_DECO-1:0]        wDecoStartOut
);

    reg [BITS_DECO-1 : 0] bin               = {BITS_DECO{1'b0}};
    reg [BITS_DECO-1 : 0] r_left_samples    = {BITS_DECO{1'b0}};  //Used in Ones Counter architecture
    reg [BITS_DECO-1 : 0] r_right_samples   = {BITS_DECO{1'b0}};  //Used in Ones Counter architecture
    integer i;
    integer j;
    
    // always @(*) begin
    //     for (i = 0; i < NUM_FF-4; i=i+1) begin
    //         if( wDecoStartIn[i] & ~wDecoStartIn[i+1] & ~wDecoStartIn[i+2] & ~wDecoStartIn[i+3] & ~wDecoStartIn[i+4] ) begin
    //             bin = i+1;
    //         end
    //     end
    // end


    //Implementing Ones Counter
    always @(*) begin
        if(rst) begin
            bin                 = 0;
            r_left_samples      = 0;
            r_right_samples     = 0;
        end
        else begin
            for (i = 0; i < NUM_FF; i=i+1) begin
                if(wDecoStartIn[i] == 1'b1) begin
                    bin = bin + 1'b1;
                end
            end

            //ones counter indicator: the main idea is to solve the question of where is the edge
            //based on the ones counted. We may take half samples in the first half part of 
            //the fine chain, and half of the samples in the second half of the delay chain. 
            //We count every two taps
            for (j = 0; j < `NUM_TAPS ; j=j+2) begin
                //60 samples on left, 60 samples on right
                if(j < `HALF_NUM_TAPS) begin
                    //left samples
                    if (wDecoStartIn[j] == 1'b1) begin
                        r_left_samples  = r_left_samples + {{BITS_DECO-1{1'b0}}, 1'b1};
                    end
                end
                else begin
                    //right samples
                    if (wDecoStartIn[j] == 1'b1) begin
                        r_right_samples = r_right_samples + {{BITS_DECO-1{1'b0}}, 1'b1};
                    end
                end
            end
            
            if(r_right_samples >= r_left_samples) begin     //edge is on right side 
                if(bin <= `HALF_NUM_TAPS) begin
                    //if its detected on the right then the edge is in NUM_TAPS-ones_count
                    bin = 8'hf0 - bin;
                end
            end
        end
        
    end

    assign wDecoStartOut = bin;
endmodule //