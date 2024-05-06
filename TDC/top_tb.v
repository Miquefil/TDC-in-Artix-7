`timescale  1ns/1ns

`include "defines.v"

module top_tb(
    );
    reg                                clk_p, clk_n;
    reg                                hit;
    reg                                but_rst_read = 1'b0;
    reg                                rst;
    reg                                startWr;
    reg                                startRead;
    wire                               led_ReadERR, led_WriteERR;


    wire                               TX, RX, CTS, RTS;

    wire                        merge_done; 
    top u_top(
        .clk_p(clk_p),
        .clk_n(clk_n),
        .irst(rst),
        .hit(hit),
        .but_rst_read(but_rst_read),
        .startWriting(startWr),
        .startReading(startRead),
        .led_ReadERR(led_ReadERR),
        .led_WriteERR(led_WriteERR),
        .RX(RX),
        .TX(TX),
        .CTS(CTS),
        .RTS(RTS)
    );

    localparam TCLK = 5;
    initial begin
        forever begin
            clk_n = 1'b0;
            clk_p = 1'b1;
            #2; 
            clk_p = 1'b0;
            clk_n = 1'b1; 
            #3; 
        end
    end

    initial begin     
        //med1   
        #10
        hit        = 1'b0;
        startRead  = 1'b0;
        startWr    = 1'b0;
        rst        = 1'b0;
        // #(4_500_000);   //este delay es importante en 150nS, starting time
        #(300_000);
        hit        = 1'b0;
        startRead  = 1'b0;
        startWr    = 1'b1;
        #5 rst     = 1'b0;
        #5 rst     = 1'b1; 
        #5 rst     = 1'b0;
        #100;   //este delay es importante en 150nS, starting time

        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;


        hit     = 1'b1;
        #(2*TCLK);
        hit     = 1'b0;

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)


        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)


        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)

        //med2
        #1000
        hit        = 1'b0;
        startWr    = 1'b1;
        #21
        hit     = 1'b1;
        #(3*TCLK);
        hit     = 1'b0;
        #(100*TCLK)




        #(100_000)
        //!!IMPORTANT DELAY: usually 'empty' flag foes off about 2 (slowest) clock after being written
        startWr     = 1'b0;
        startRead   = 1'b1;
        
        #(5*TCLK)
        $finish;
    end

endmodule