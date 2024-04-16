`timescale  1ps/1ps

`define NUM_TAPS    120
`define NUM_DECODE  7
`define COUNTER_DIG 10
`define DIG_OUT     24

module top_tb(
    );
    reg                                clk2;
    reg                                hit;
    wire[`DIG_OUT-1:0]                  res;


    wire[`NUM_TAPS-1:0]         FFStart, FFStop;
    wire[`NUM_TAPS-1:0]         taps;
    top u_top(
        .iClk(clk2),
        .iRst(),
        .iHit(hit),
        .oTDC(res),
        .FFStart(FFStart),
        .FFStop(FFStop),
        .taps(taps)
    );

    assign clk = clk2;
    always #5 clk2 = ~clk2; //



    initial begin        
        clk2 = 1'b1;    //inicializa el reloj
        hit = 1'b0;
        #2500;

        hit = 1'b1;
        #15000;

        hit = 1'b0;
        #10;

        hit = 1'b0;
        $finish;
    end

endmodule