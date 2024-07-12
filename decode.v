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
// `define NUM_TAPS 36     //ONLY FOR TESTBENCH!
// `define NUM_DECODE 8    //ONLY FOR TESTBENCH!
// `define NUM_LUT6 6
(* keep_hierarchy = "TRUE" *)
module decode #(parameter falling = 1'b0) (
    input   wire                            go,
    input   wire                            rst,
    input   wire                            clk,
    input   wire    [`NUM_TAPS-1:0]         wDecodeIn,
    output  wire                            finished,
    output  wire    [`NUM_DECODE-1:0]       wDecodeOut
);
    
    //SIMPLE EDGE DETECTOR-------------------------------------------------------------
    //---------------------------------------------------------------------------------
    integer i;
    (* dont_touch = "TRUE" *) reg[`NUM_DECODE-1:0]            bin   = {`NUM_DECODE{1'b0}};
    // (* dont_touch = "TRUE" *) reg[`NUM_DECODE-1:0]            r_bin = {`NUM_DECODE{1'b0}};
    reg[1:0]                        finish_counter          = 2'b00;
    reg                             flag_start              = 1'b0;
    reg                             r_finished              = 1'b0;
    
    always @(*) begin
        bin = 0;
        if(falling) begin       //STOP EDGE DETECTOR
            for (i = 0; i < `NUM_TAPS-4; i=i+1) begin
                if( ~wDecodeIn[i] & wDecodeIn[i+1] & wDecodeIn[i+2] & wDecodeIn[i+3] & wDecodeIn[i+4] ) begin
                    bin = i+1;
                end
            end    
        end
        else begin          //START EDGE DETECTOR
            for (i = 0; i < `NUM_TAPS-4; i=i+1) begin
                if( wDecodeIn[i] & ~wDecodeIn[i+1] & ~wDecodeIn[i+2] & ~wDecodeIn[i+3] & ~wDecodeIn[i+4] ) begin
                    bin = i+1;
                end
            end
        end
    end

    always @(posedge clk) begin
        if(rst) begin
            r_finished          <= 1'b0;
            finish_counter      <= 2'b00;
            flag_start          <= 1'b0;
        end
        else begin
            if(go) begin        //START COUNTER
                flag_start      <= 1'b1;
            end
            if(flag_start && (finish_counter<2'b11)) begin    //COUNT
                finish_counter <= finish_counter + 2'b01;
            end

            //REGISTER OUTPUT
            // if(finish_counter == 2'b10) begin
            //     r_bin <= bin;
            // end

            //ONCE FINISHED COUNTING
            //  -ASSERT FINISH FLAG HIGH
            //  -RESET COUNTER
            if (finish_counter == 2'b11) begin
                finish_counter      <= 2'b00;
                flag_start          <= 1'b0;
                r_finished          <= 1'b1;
            end 

            // FINISHED_FLAG SR
            if(r_finished) begin
                r_finished <= 1'b0;
            end
        end
    end
    assign finished     = r_finished;
    assign wDecodeOut   = bin;



    //FILTER EDITION!!!!--------------------------------------------------------------
    // Median filter applied to incoming signal
    //----------------------------------------------------------------------------------
    // parameter               N_FILTER            = 5;                    //Always odd number
    // parameter               N_MAX_SUM           = 3;                    //Number of bits for max sum of filter
    
    // reg [`NUM_DECODE-1:0]   bin                 = {`NUM_DECODE{1'b0}};
    // reg [N_FILTER-1:0]      r_shift_register    = {N_FILTER{1'b0}};
    // reg [`NUM_DECODE-1:0]   r_center            = {`NUM_DECODE{1'b0}};
    // reg [N_MAX_SUM-1:0]     r_sum               = {N_MAX_SUM{1'b0}};
    // reg                     r_filter_ended      = 1'b0;
    // reg [`NUM_TAPS-1:0]     r_out_filter        = {`NUM_TAPS{1'b0}};
    // wire                    TOPE_CENTRO;
    // assign                  TOPE_CENTRO         = (r_center <= (`NUM_TAPS-3));
    // integer i;
    

    // reg[2:0]                ACTUAL_STATE        = SM_RESET;
    // parameter               SM_RESET            = 3'b000;
    // parameter               SM_READY            = 3'b001;
    // parameter               SM_FILTER           = 3'b010;
    // parameter               SM_FINISH           = 3'b011;
    // parameter               SM_WAITING          = 3'b111;

    

    // //Edge detector

    // always @(posedge clk) begin
    //     if(rst) begin
    //         ACTUAL_STATE    <= SM_RESET;
    //     end

    //     case (ACTUAL_STATE)
    //         SM_WAITING: begin       
    //             //Waiting state. Filter ended, but must hold results until
    //             //a reset comes. (waiting for other processing)
    //             r_filter_ended                      <= 1'b0;
    //             if(rst) begin
    //                 ACTUAL_STATE    <= SM_RESET;
    //             end
    //         end 
    //         SM_RESET: begin
    //             r_filter_ended                      <= 1'b0;
    //             r_shift_register                    <= {N_FILTER{1'b0}};
    //             r_center                            <= {`NUM_DECODE{1'b0}};
    //             r_out_filter                        <= {`NUM_TAPS{1'b0}};
    //             if(go) begin
    //                 if(!ones_counter) begin     ///IF USING EDGE-DETECTOR
    //                     ACTUAL_STATE                    <= SM_READY;       
    //                 end
    //             end
    //         end

    //         SM_READY: begin
    //             r_shift_register[N_FILTER-1:0]      <= wDecodeIn[N_FILTER-1:0];                //initialiting shift register
    //             r_center                            <= {{`NUM_DECODE-2{1'b0}}, 2'd2};             //Center the pointer in second tap
    //             r_out_filter[0]                     <= wDecodeIn[0];
    //             r_out_filter[1]                     <= wDecodeIn[1];
    //             r_out_filter[`NUM_TAPS-1]           <= wDecodeIn[`NUM_TAPS-1];
    //             r_out_filter[`NUM_TAPS-2]           <= wDecodeIn[`NUM_TAPS-2];

    //             ACTUAL_STATE                        <= SM_FILTER;
    //         end

    //         SM_FILTER: begin
    //             r_center                            <= r_center + {{`NUM_DECODE-1{1'b0}}, 1'b1};    //updating the center
    //             if  (TOPE_CENTRO) begin
    //                 r_shift_register[N_FILTER-2:0]  <= r_shift_register[N_FILTER-1:1];              //refreshing shift register
    //                 r_shift_register[N_FILTER-1]    <= wDecodeIn[r_center + 2];
    //                 if(r_sum >= 3'd3) begin            //!!CHANGE 3 is for N_FILTER 5
    //                     r_out_filter[r_center]      <= 1'b1;
    //                 end
    //             end
    //             else begin
    //                 ACTUAL_STATE                    <= SM_FINISH;
    //             end
    //         end

    //         SM_FINISH: begin
    //             r_filter_ended      <= 1'b1;
    //             ACTUAL_STATE        <= SM_WAITING;
    //         end

    //         default: ACTUAL_STATE <= SM_RESET;
    //     endcase
    // end

    // always @(*) begin
    //     if(rst) begin
    //         r_sum       = {N_MAX_SUM{1'b0}};
    //     end 
    //     else begin
    //         r_sum       = r_shift_register[0] + r_shift_register[1] + r_shift_register[2] + r_shift_register[3] + r_shift_register[4];    //!!CHANGE this is for N_FILTER 5    
    //     end
        
    //     //edge detecting
    //     if(!falling) begin            //START EDGE DETECTOR
    //         bin = 0;
    //         for (i = 0; i < `NUM_TAPS-4; i=i+1) begin
    //             if( r_out_filter[i] && !r_out_filter[i+1] && !r_out_filter[i+2] && !r_out_filter[i+3] && !r_out_filter[i+4] ) begin //1-0000
    //                 bin = i + 1;
    //             end
    //         end    
    //     end
    //     else begin                  //STOP EDGE DETECTOR
    //         bin = 0;                //!!Important for not inferring latch
    //         for (i = 0; i < `NUM_TAPS-4; i=i+1) begin
    //             if( !r_out_filter[i] && r_out_filter[i+1] && r_out_filter[i+2] && r_out_filter[i+3] && r_out_filter[i+4] ) begin
    //                 bin = i + 1;
    //             end
    //         end 
    //     end    
    
    // end
    // assign wDecodeOut = bin;
    // assign finished   = r_filter_ended;


    // ////---------------------------------------------------------------------------
    // //// ONES COUNTER!
    // ///     Decoder for fine delay chain. Outputs how many 1s does the delay chain has.
    // ///     To know if the ones counted are to the right, or to the left, of the chain we
    // ///     also count how many ones are in each part, of it (arbiter)
    //  ------------------------------------------------------------------------------------
    // reg[`NUM_DECODE-1:0]                max_taps            = `NUM_DECODE'd`NUM_TAPS;
    // reg[`NUM_DECODE-1:0]                bin                 = {`NUM_DECODE/2{1'b0}};
    // reg[`NUM_DECODE/2-1:0]              bin_right           = {`NUM_DECODE/2{1'b0}};
    // reg[`NUM_DECODE/2-1:0]              bin_left            = {`NUM_DECODE{1'b0}};
    // reg[`NUM_DECODE-1:0]                output_reg          = {`NUM_DECODE{1'b0}};
    // reg                                 start_counter       = 1'b0;
    // reg[1:0]                            counter             = 2'b00;
    // reg                                 r_filter_ended      = 1'b0;
    // assign                              finished            = r_filter_ended;
    // assign                              wDecodeOut          = output_reg;

    // wire [2:0]  LUT_outputs [`NUM_LUT6-1:0];
    // genvar i;
    // LUT_counter u_LUT_Counter (
    //             .iData(wDecodeIn[5:0]),
    //             .oData(LUT_outputs[0])
    //         );
    // generate
    //     for (i = 1; i < `NUM_LUT6; i=i+1) begin
    //         LUT_counter u_LUT_Counter (
    //             .iData(wDecodeIn[(i+1)*6-1:i*6]),
    //             .oData(LUT_outputs[i])
    //         );
    //     end
    // endgenerate

    // integer j;
    // always @(*) begin
    //     //We're using Little indian so, left is on the right part of the wire bus
    //     bin_left = {`NUM_DECODE{1'b0}};
    //     for (j = `NUM_LUT6/2 + 1; j<`NUM_LUT6 ; j=j+1) begin
    //         bin_left = bin_left + LUT_outputs[j];
    //     end

    //     bin_right = {`NUM_DECODE{1'b0}};
    //     for (j = 0; j<`NUM_LUT6/2 ; j=j+1) begin
    //         bin_right = bin_right + LUT_outputs[j];
    //     end

    //     if (bin_left >= bin_right) begin
    //         bin = bin_left + bin_right;
    //     end
    //     else begin
    //         bin = max_taps - bin_left - bin_right;
    //     end
    // end

    // always @(posedge clk) begin
    //     if(go) begin
    //         start_counter   <= 1'b1;
    //     end

    //     if(rst) begin
    //         counter         <= 2'b00;
    //         output_reg      <= {`NUM_DECODE{1'b0}};
    //         start_counter   <= 1'b0;
    //     end
    //     else if(start_counter) begin
    //         counter         <= counter + 2'b01;
    //     end 

    //     if(counter==2'b11) begin
    //         output_reg      <= bin;
    //         counter         <= 2'b00;
    //         r_filter_ended  <= 1'b1;
    //         start_counter   <= 1'b0;
    //     end

    //     if(r_filter_ended) begin
    //         r_filter_ended  <= 1'b0;
    //     end
    // end

endmodule //