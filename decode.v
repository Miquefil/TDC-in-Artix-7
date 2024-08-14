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
    (* dont_touch = "TRUE" *) reg[`NUM_DECODE-1:0]            r_bin = {`NUM_DECODE{1'b0}};
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

            //ONCE FINISHED COUNTING
            //  -ASSERT FINISH FLAG HIGH
            //  -RESET COUNTER
            //  -SET OUTPUT
            if (finish_counter == 2'b11) begin
                finish_counter      <= 2'b00;
                flag_start          <= 1'b0;
                //TODO: CHECK!!!!!!!!!!!!!!!!!!!!!! ULTIMA IMPLEMENTACIÓN
                r_bin               <= bin;//REGISTER OUTPUT
                r_finished          <= 1'b1;
            end 

            if(r_finished) begin
                r_finished <= 1'b0; // FINISHED_FLAG LOW ASSERTION
            end
        end
    end
    assign finished     = r_finished;
    assign wDecodeOut   = r_bin;

endmodule