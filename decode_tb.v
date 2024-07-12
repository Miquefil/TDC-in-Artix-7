//////////////////////////////////////////////////////////////////////
// Module Name: decode_tb
// 
//
// Author: Miqueas Filsinger
// Date: 03-06-2024
//
// Revision History:
// 
// Notes:
// - Any additional notes or considerations
//
//////////////////////////////////////////////////////////////////////
`timescale 1ns/1ns
`define NUM_TAPS 300
`define NUM_DECODE 10    //ONLY FOR TESTBENCH!
// `define NUM_LUT6 6
module decode_tb (
    // Ports here
);

    // reg[`NUM_TAPS-1:0]      test_reg    = 32'hffdf0000;         //falling test
    reg[`NUM_TAPS-1:0]      test_reg    = {`NUM_TAPS{1'b0}};         //rising test
    reg                     start       = 1'b0;
    reg                     rst         = 1'b0;
    wire                    finished;
    wire[`NUM_DECODE-1:0]   out;

    //Clock generation-----------------------------------
    localparam  TCLK = 10;
    reg         clk;
    initial begin
        clk=1'b0;
        forever #(TCLK/2) clk=~clk;
    end////////////////////////////////

    decode #(.falling(1'b1)) u_decode (
        .go             (start),                  //input   wire
        .rst            (rst),                    //input   wire
        .clk            (clk),                    //input   wire
        .wDecodeIn      (test_reg),               //input   wire
        .finished       (finished),               //output  wire
        .wDecodeOut     (out)                     //output  wire
    );

    integer i;
    initial begin
        rst             = 1'b1;
        #3  rst         = 1'b0;
        #10; 

        //TEST START
        // for (i = 0; i < `NUM_TAPS; i=i+1) begin
        //     @(posedge clk);
        //     test_reg[0]             <= 1'b1;
        //     test_reg[`NUM_TAPS-1:1] <= test_reg[`NUM_TAPS-2:0];
        //     #10;
        //     start       = 1'b1;
        //     #3 start    = 1'b0;
        // end
        
        //TEST STOP
        for (i = 0; i < `NUM_TAPS; i=i+1) begin
            @(posedge clk);
            test_reg[`NUM_TAPS-1]             <= 1'b1;
            test_reg[`NUM_TAPS-2:0] <= test_reg[`NUM_TAPS-1:1];
            #10;
            start       = 1'b1;
            #3 start    = 1'b0;
        end


        #500;

    end
endmodule //