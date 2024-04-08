`timescale  1ps/100fs
//`include "defines.v"

`define cant 12

module top_tb(
        output wire          clk
    );
    reg                  clk2;   //para generar el clock
    reg                  hit;
    wire[`cant-1:0]      outs;
    wire[`cant-1:0]      outFF;

    top #(`cant) my_top(
        .clk(clk),
        .hit(hit),
        .taps(outs),
        .ff(outFF)
        );

    assign clk = clk2;

    always #2 clk2 = ~clk2;
    initial begin        
        clk2 = 1'b1;    //inicializa el reloj
        hit = 1'b0;
        #2500;

        hit = 1'b1;
        #3000;

        hit = 1'b0;
        #10;

        hit = 1'b0;
        $finish;
    end

endmodule