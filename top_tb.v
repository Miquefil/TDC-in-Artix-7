`timescale  1ns/1ns

`include "defines.v"

module top_tb(
    );
    reg                                clk_p, clk_n;
    reg                                hit_p;
    reg                                hit_n;
    reg                                rst;
    reg                                startWr;
    reg                                startRead;
    wire                               led_ReadERR, led_WriteERR, led_writestage, led_readstage;


    wire                               TX, RX, CTS, RTS;

    wire                        merge_done; 
    top u_top(
        .clk_p                (clk_p),                          //input  wire
        .clk_n                (clk_n),                          //input  wire
        .but_rst              (rst),                            //input  wire
        .hit_p                (hit_p),                          //input  wire
        .hit_n                (hit_n),                          //input  wire
        .but_startWriting     (startWr),                        //input  wire
        .but_startReading     (startRead),                      //input  wire
        .led_ReadERR          (led_ReadERR),                    //output wire
        .led_WriteERR         (led_WriteERR),                   //output wire
        .led_WriteStage       (led_writestage),                 //output wire
        .led_ReadStage        (led_readstage),                  //output wire
        .RX                   (RX),                             //input  wire
        .TX                   (TX),                             //output wire
        .CTS                  (CTS),                            //input  wire
        .RTS                  (RTS)                             //output wire
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



    integer i = 0;
    initial begin     
        //med1   
        #10
        hit_p           = 1'b0;
        hit_n           = 1'b1;
        startRead       = 1'b0;
        startWr         = 1'b0;
        rst             = 1'b0;
        // #(4_500_000);   //este delay es importante en 150nS, starting time
        #(300_000);

        startWr    = 1'b1;
        #5;
        startWr    = 1'b0;
        for (i = 0; i < 32 ; i=i+1) begin
            hit_p        = 1'b1;
            hit_n        = 1'b0;
            #($urandom %50);
            #(20*TCLK);
            hit_p        = 1'b0;
            hit_n        = 1'b1;            
            #(20*TCLK);
            #50;   //este delay es importante en 150nS, starting time
        end
    
        startWr         = 1'b0;
        startRead       = 1'b1;
        # 10 startRead  = 1'b0;
        #(12_000_000);
        //!!IMPORTANT DELAY: usually 'empty' flag foes off about 2 (slowest) clock after being written
        


        #(100_000);
        rst         = 1'b1;
        #10 rst     = 1'b0;
        #(300_000);
        
        startRead       = 1'b0;
        startWr         = 1'b1;
        #5; startWr     = 1'b0;
        
        for (i = 0; i < 32 ; i=i+1) begin
            hit_p        = 1'b1;
            hit_n        = 1'b0;
            #($urandom %50);
            #(20*TCLK);
            hit_p        = 1'b0;
            hit_n        = 1'b1;            
            #(20*TCLK);
            #50;   //este delay es importante en 150nS, starting time
        end


        startRead       = 1'b1;
        startWr         = 1'b0;
        
        #(100_000);
        #(5*TCLK);
        $finish;
    end

endmodule