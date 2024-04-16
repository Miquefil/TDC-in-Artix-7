`timescale  1ps/1ps

`define NUM_TAPS    = 120
`define NUM_DECODE  = 7
`define COUNTER_DIG = 10
`define DIG_OUT     = 7+7+10

module top_tb(
    );
    reg                                clk2;
    reg                                hit;
    reg['DIG_OUT-1:0]                  res;

    top u_top(
        .iClk(clk2),
        .iRst(),
        .iHit(hit),
        .oTDC(res)
    );

    assign clk = clk2;
    always #5 clk2 = ~clk2; //



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