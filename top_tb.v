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
    reg                                 start_debug = 1'b0;
    wire                               led_ReadERR, led_WriteERR, led_writestage, led_readstage;


    wire                               TX, RX, CTS, RTS;
    wire                               selector_0, selector_1;
    reg [1:0]                          selector;
    assign  selector_0 = selector[0] ;
    assign  selector_1 = selector[1] ;

    wire                        merge_done; 
    top u_top(
        .clk_p                (clk_p),                          //input  wire
        .clk_n                (clk_n),                          //input  wire
//        .but_rst              (rst),                            //input  wire
        .hit_p                (hit_p),                          //input  wire
        .hit_n                (hit_n),                          //input  wire
        .but_startWriting     (startWr),                        //input  wire
        .but_startReading     (startRead),                      //input  wire
        .but_debugmode        (start_debug),
        .selector_0           (selector_0),                     //input  wire
        .selector_1           (selector_1),                     //input  wire
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


    //60mhz hit signal for testing
    reg             signal_p, signal_n;
    initial begin
        forever begin
            signal_n = 1'b0;
            signal_p = 1'b1;
            #7; 
            signal_n = 1'b1; 
            signal_p = 1'b0;
            #8; 
        end
    end


    integer i = 0;
    initial begin     
        //med1   
        #50
        selector        = 2'b00;
        hit_p           = 1'b0;
        hit_n           = 1'b1;
        startRead       = 1'b0;
        startWr         = 1'b0;
        start_debug     = 1'b0;
        rst             = 1'b0;
        // #(4_500_000);   //este delay es importante en 150nS, starting time
        #(300_000);


        // start_debug = 1'b1;
        // #15 start_debug = 1'b0;
        // // #(400_000);
        // #(3_200_000);

       
        //Prueba de superposición de medidas
        startWr    = 1'b1;
        #5;
        startWr    = 1'b0;
        for (i = 0; i < 300 ; i=i+1) begin
            hit_p        = 1'b1;
            hit_n        = 1'b0;
            #($urandom %50);
            // #(20*TCLK);
            // #7
            hit_p        = 1'b0;
            hit_n        = 1'b1;            
            // #(20*TCLK);
            // #8;
            #3;   //este delay es importante en 150nS, starting time
        end

        // startWr    = 1'b1;
        // #5;
        // startWr    = 1'b0;
        // for (i = 0; i < 300 ; i=i+1) begin
        //     hit_p        = 1'b1;
        //     hit_n        = 1'b0;
        //     #($urandom %50);
        //     // #(20*TCLK);
        //     // #7
        //     hit_p        = 1'b0;
        //     hit_n        = 1'b1;            
        //     #(20*TCLK);
        //     // #8;
        //     #50;   //este delay es importante en 150nS, starting time
        // end

        #100000;       //IMPORTANT delay
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
        #10 startRead   = 1'b0;
        
        #(3_000_000);
        #(5*TCLK);
        $finish;
    end

endmodule