//////////////////////////////////////////////////////////////////////
// Module Name: 6LUT_counter_tb
//              
//
// Author: Miqueas Filsinger
// Date: 07-06-2024
//
// Revision History:
//////////////////////////////////////////////////////////////////////
`timescale 1ns/1ns
module LUT_counter_tb (
    // Ports here
);
    wire [2:0]              out;
    reg  [5:0]              in;

    LUT_counter u_lut(
    .iData(in),               //input [5:0]  wire 
    .oData(out)                //output[2:0]  wire 
);

    //Tasks-----------------------------------
    // task esperar(
    //   		input [1:0] exp_out,
    //   		input [1:0] actual_out,
    //   		input [4:0]   numero
    // );
    //     reg condicion;
    //     condicion = (exp_out == actual_out);
    //     if (condicion) begin
    //         $display("TEST N %h PASSED", numero);
    //     end 
    //     else begin
    //         $display("TEST N %h FAILED: Expected %h and obtained %h", numero, exp_out, actual_out);
    //     end
    // endtask

    initial begin
        in = 6'b000000; #5; //esperar(0, out, 0);
        in = 6'b000001; #5; //esperar(2'd1, out, 1);
        in = 6'b000010; #5; //esperar(2'd1, out, 1);
        in = 6'b000100; #5; //esperar(2'd1, out, 1);
        in = 6'b001000; #5; //esperar(2'd1, out, 1);
        in = 6'b010000; #5; //esperar(2'd1, out, 1);
        in = 6'b000011; #5; //esperar(2'd2, out, 2);
        in = 6'b000101; #5; //esperar(2'd2, out, 2);
        in = 6'b001001; #5; //esperar(2'd2, out, 2);
        in = 6'b010001; #5; //esperar(2'd2, out, 2);
        in = 6'b000110; #5; //esperar(2'd2, out, 2);
        in = 6'b001010; #5; //esperar(2'd2, out, 2);
        in = 6'b010010; #5; //esperar(2'd2, out, 2);
        in = 6'b001100; #5; //esperar(2'd2, out, 2);
        in = 6'b011000; #5; //esperar(2'd2, out, 2);
        
        in = 6'b000111; #5; //esperar(2'd3, out, 3);
        in = 6'b001011; #5; //esperar(2'd3, out, 3);
        in = 6'b010011; #5; //esperar(2'd3, out, 3);
        in = 6'b100011; #5; //esperar(2'd3, out, 3);
        in = 6'b001110; #5; //esperar(2'd3, out, 3);
        in = 6'b010110; #5; //esperar(2'd3, out, 3);
        in = 6'b100110; #5; //esperar(2'd3, out, 3);
        in = 6'b011100; #5; //esperar(2'd3, out, 3);
        in = 6'b101100; #5; //esperar(2'd3, out, 3);

        //prueba de 4
        in = 6'b001111; #5; //esperar(2'd3, out, 3);
        in = 6'b010111; #5; //esperar(2'd3, out, 3);
        in = 6'b100111; #5; //esperar(2'd3, out, 3);
        in = 6'b011110; #5; //esperar(2'd3, out, 3);
        in = 6'b11110; #5; //esperar(2'd3, out, 3);
        //prueba de 5
        in = 6'b111110; #5; //esperar(2'd3, out, 3);
        in = 6'b111101; #5; //esperar(2'd3, out, 3);
        in = 6'b110111; #5; //esperar(2'd3, out, 3);
        in = 6'b101111; #5; //esperar(2'd3, out, 3);
        in = 6'b011111; #5; //esperar(2'd3, out, 3);
        //prueba de 6
        in = 6'b111111; #5; //esperar(2'd3, out, 3);

    end

endmodule //