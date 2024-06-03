//////////////////////////////////////////////////////////////////////
// Module Name: Module Name
// Description: Brief description of the module's functionality
//
// Author: Miqueas Filsinger
// Date: 02-06-2024
//
// Revision History:
//
// Notes:
// - Edge detector decoder:
//              - go should be for only one clock
//              - finished is asserted high just for one clock
//////////////////////////////////////////////////////////////////////
`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module decode #(parameter falling = 1'b0) (
    input   wire                            go,
    input   wire                            rst,
    input   wire                            clk,
    input   wire    [`NUM_TAPS-1:0]         wDecodeIn,
    output  wire                            finished,
    output  wire    [`NUM_DECODE-1:0]       wDecodeOut
);
    reg [`NUM_DECODE-1:0]   bin                 = {`NUM_DECODE{1'b0}};
    
    parameter               N_FILTER            = 5;                    //Always odd number
    parameter               N_MAX_SUM           = 3;                    //Number of bits for max sum of filter

    
    reg [N_FILTER-1:0]      r_shift_register    = {N_FILTER{1'b0}};
    reg [`NUM_DECODE-1:0]   r_center            = {`NUM_DECODE{1'b0}};
    reg [N_MAX_SUM-1:0]     r_sum               = {N_MAX_SUM{1'b0}};
    reg                     r_start_filtering   = 1'b0;
    reg                     r_filter_ended      = 1'b0;
    reg [`NUM_TAPS-1:0]     r_out_filter        = {`NUM_TAPS{1'b0}};
    reg                     r_starting          = 1'b1;
    integer i;
    // integer j;

    //Edge detector

    always @(posedge clk) begin
        if(rst) begin
            r_start_filtering   <= 1'b0;
            r_shift_register    <= {N_FILTER{1'b0}};
            r_center            <= {`NUM_DECODE{1'b0}};
            r_sum               <= {N_MAX_SUM{1'b0}};
            r_out_filter        <= {`NUM_TAPS{1'b0}};
        end
        else begin
            if (r_starting & go) begin//START SHOULD BE ONLY FOR ONE CLOCK
                r_start_filtering                   <= 1'b1;
                r_shift_register[N_FILTER-1:0]      <= wDecodeIn[N_FILTER-1:0];                 //initialiting shift register
                r_center                            <= {{N_FILTER-2{1'b0}}, 2'd2};             //!!CHANGE 2'd2 is for N_FILTER 5
                r_starting                          <= 1'b0;
            end

            if(r_start_filtering) begin       
                r_center                            <= r_center + {{`NUM_DECODE-1{1'b0}}, 1'b1};    //updating the center
                if  (r_center < (`NUM_TAPS - 3)) begin
                    r_shift_register[N_FILTER-1:1]  <= r_shift_register[N_FILTER-2:0];              //refreshing shift register
                    r_shift_register[0]             <= wDecodeIn[r_center - 2];
                    if(r_sum >= 3'd3) begin            //!!CHANGE 3 is for N_FILTER 5
                        r_out_filter[r_center]      <= 1'b1;
                    end
                end
                else begin
                    r_start_filtering               <= 1'b0;
                    r_filter_ended                  <= 1'b1;
                end 
            end
        end

        if(r_filter_ended) begin
            r_filter_ended                          <= 1'b0;
            r_starting                              <= 1'b1;
        end
    end

    // Ensuring first and last bits are passed through unchanged
    

    assign wDecodeOut = bin;
    assign finished   = r_filter_ended;

    always @(*) begin
        r_out_filter[0]              = wDecodeIn[0];
        r_out_filter[1]              = wDecodeIn[1];
        r_out_filter[`NUM_TAPS-1]    = wDecodeIn[`NUM_TAPS-1];
        r_out_filter[`NUM_TAPS-2]    = wDecodeIn[`NUM_TAPS-2];
        r_sum                        = r_shift_register[0] + r_shift_register[1] + r_shift_register[2] + r_shift_register[3] + r_shift_register[4];    //!!CHANGE this is for N_FILTER 5    

        //edge detecting
        if(falling == 1'b0) begin            //START EDGE DETECTOR
            for (i = 0; i < `NUM_TAPS-4; i=i+1) begin
                if( r_out_filter[i] & ~r_out_filter[i+1] & ~r_out_filter[i+2] & ~r_out_filter[i+3] & ~r_out_filter[i+4] ) begin
                    bin = i+1;
                end
            end    
        end
        else if(falling == 1'b1) begin
            for (i = 0; i < `NUM_TAPS-4; i=i+1) begin
                if( ~r_out_filter[i] & r_out_filter[i+1] & r_out_filter[i+2] & r_out_filter[i+3] & r_out_filter[i+4] ) begin
                    bin = i+1;
                end
            end 
        end
        
    end

    //END OF EDGE DETECTOR
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    // reg [BITS_DECO-1 : 0] r_left_samples    = {BITS_DECO{1'b0}};  //Used in Ones Counter architecture
    // reg [BITS_DECO-1 : 0] r_right_samples   = {BITS_DECO{1'b0}};  //Used in Ones Counter architecture
    // integer j;

    //Ones Counter Architecture
    // always @(*) begin
    //     if(rst) begin
    //         bin                 = 0;
    //         r_left_samples      = 0;
    //         r_right_samples     = 0;
    //     end
    //     else begin
    //         for (i = 0; i < NUM_FF; i=i+1) begin
    //             if(wDecoStopIn[i] == 1'b1) begin
    //                 bin = bin + 1'b1;
    //             end
    //         end

    //         //ones counter indicator: the main idea is to solve the question of where is the edge
    //         //based on the ones counted. We may take half samples in the first half part of 
    //         //the fine chain, and half of the samples in the second half of the delay chain. 
    //         //We count every two taps
    //         for (j = 0; j < `NUM_TAPS ; j=j+2) begin
    //             //60 samples on left, 60 samples on right
    //             if(j < `HALF_NUM_TAPS) begin
    //                 //left samples
    //                 if (wDecoStopIn[j] == 1'b1) begin
    //                     r_left_samples  = r_left_samples + {{BITS_DECO-1{1'b0}}, 1'b1};
    //                 end
    //             end
    //             else begin
    //                 //right samples
    //                 if (wDecoStopIn[j] == 1'b1) begin
    //                     r_right_samples = r_right_samples + {{BITS_DECO-1{1'b0}}, 1'b1};
    //                 end
    //             end
    //         end
            
    //         if(r_right_samples > r_left_samples) begin     //edge is on right side 
    //             if(bin <= `HALF_NUM_TAPS) begin
    //                 //if its detected on the right then the edge is in NUM_TAPS-ones_count
    //                 bin = 8'hf0 - bin;
    //             end
    //         end
    //     end
        
    // end

    assign wDecodeOut = bin;

endmodule //