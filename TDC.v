`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module TDC (
    input  wire                     clk0,
    input  wire                     clk1,
    input  wire                     clk2,
    input  wire                     iRst,
    input  wire                     iHit,
    input  wire                     enable,
    
    output wire                     debug_hit_enabler,
    output wire [`DIG_OUT-1:0]      oTDC,
    output wire                     done
);  

    wire                         Rise, Fall;
    wire[`NUM_TAPS-1:0]          Stop_Edge, Start_Edge;
    wire[`NUM_DECODE-1:0]        DecodedStop, DecodedStart;


    wire                ready; 
    wire                rst_int;    
    assign              rst_int = done;                 //If a measure is done, reset the TDC
    // wire                rst;                            //manages internal and external rst
    // assign              rst = (~ready|iRst|rst_int);    //reset if NOTready/external/interal
    reg rst;
    always @(posedge clk0) begin
        if(rst) begin
            rst <= 1'b0;
        end
        else begin
            rst <= (~ready|iRst|rst_int);     
        end
    end

    //////////////////////Wait for some clocks and then go ready --------------
    wire                FFDelayStart;
    (* dont_touch = "TRUE" *)FDCE #(.INIT(1'b0)) FFDelayStart_1(
        .Q          (FFDelayStart),
        .C          (clk0),
        .CE         (1'b1),               //hasta que no viene enable HIGH no prendemos
        .CLR        (1'b0),
        .D          (1'b1)
    );
    (* dont_touch = "TRUE" *)FDCE #(.INIT(1'b0)) FFDelayStart_2(
        .Q          (ready),
        .C          (clk0),
        .CE         (1'b1),
        .CLR        (done),                 //finishing Merge resets the whole system
        .D          (FFDelayStart)
    );
    /////////-----Start Main TDC --------/////////////////////////////////
    
    wire            wDecodeFinishedStop;
    wire            wEnabler;
    assign          debug_hit_enabler = wEnabler;
    enabler      u_enabler(
        .clk                (clk0),                     //input   wire
        .rst                (rst),                      //input   wire
        .hit                (iHit),                     //input   wire
        .processing_ended   (done),                     //input   wire
        .enable             (wEnabler),                  //output  wire
        .rise_edge          (),            //output  wire
        .fall_edge          ()             //output  wire
    );

    Edge u_EdgeDetector(
        .iClk        (clk0),
        .iRst        (rst),
        .iHit        (iHit),
        .oRise       (Rise),
        .oFall       (Fall),
        .enable      (wEnabler)
    );
    
    // wire    Fall_1;
    // Edge u_EdgeDetector_1(
    //     .iClk       (clk1),
    //     .iRst       (rst),
    //     .iHit       (iHit),
    //     .oRise      (),
    //     .oFall      (Fall_1),
    //     .enable     (wEnabler)
    // );

    // wire    Fall_2;
    // Edge u_EdgeDetector_2(
    //     .iClk        (clk2),
    //     .iRst        (rst),
    //     .iHit       (iHit),
    //     .oRise      (),
    //     .oFall      (Fall_2),
    //     .enable     (wEnabler)
    // );

    Fine #(`NUM_TAPS) u_FineDelay(
        .clk                    (clk0),
        .iRst                   (rst),
        .iHit                   (iHit),
        .iStopEnable            (Fall),
        .iStartEnable           (Rise),
        .oFFStart               (Start_Edge),    //FF outputs of Start_Edge column
        .oFFStop                (Stop_Edge)     //FF outputs of Stop_Edge column
    );

    decode #(.falling(1'b0)) u_DecStart(
        .go                 (Rise),                     //input   wire
        .rst                (rst),                      //input   wire
        .clk                (clk0),                     //input   wire
        .wDecodeIn          (Start_Edge),            //input   wire
        .finished           (wDecodeFinishedStart),     //output  wire
        .wDecodeOut         (DecodedStart)              //output  wire
    );

    decode #(.falling(1'b1)) u_DecStop(
        .go                 (Fall),                //input   wire
        .rst                (rst),                          //input   wire
        .clk                (clk0),                         //input   wire
        .wDecodeIn          (Stop_Edge),                    //input   wire
        .finished           (wDecodeFinishedStop),          //output  wire
        .wDecodeOut         (DecodedStop)                   //output  wire
    );

    wire[`COUNTER_DIG-1:0]       CoarseStamp_0;
    Coarse #(`COUNTER_DIG) u_Coarse_0 (
        .clk            (clk0),
        .iRst           (rst),       //reset count
        .iCE            (iHit),        //enable
        .iStore         (Fall),
        .oCoarse        (CoarseStamp_0)   
    );

    // wire[`COUNTER_DIG-1:0]       CoarseStamp_1;
    // Coarse #(`COUNTER_DIG) u_Coarse_1 (
    //     .clk            (clk1),
    //     .iRst           (rst),       //reset count
    //     .iCE            (iHit),        //enable
    //     .iStore         (Fall_1),
    //     .oCoarse        (CoarseStamp_1)   
    // );

    // wire[`COUNTER_DIG-1:0]       CoarseStamp_2;
    // Coarse #(`COUNTER_DIG) u_Coarse_2 (
    //     .clk            (clk2),
    //     .iRst           (rst),       //reset count
    //     .iCE            (iHit),        //enable
    //     .iStore         (Fall_2),
    //     .oCoarse        (CoarseStamp_2)   
    // );

    // Arbiter and Merging
    //TODO: solve arbiter_stop/start condition, how to get it when using ones counter
    reg[`COUNTER_DIG-1:0]          CoarseStamp_final        = {`COUNTER_DIG{1'b0}};
    reg[`COUNTER_DIG-1:0]          coarse_bias_start        = {`COUNTER_DIG{1'b0}};
    reg[`COUNTER_DIG-1:0]          coarse_bias_stop         = {`COUNTER_DIG{1'b0}};
    always @(*) begin
        coarse_bias_start   = {`COUNTER_DIG{1'b0}};
        coarse_bias_stop    = {`COUNTER_DIG{1'b0}};

        // if ((CoarseStamp_0 == CoarseStamp_1-1) && (CoarseStamp_1 == CoarseStamp_2) && (DecodedStart > 256)) begin   //Case II
        //     coarse_bias_start   = {{`COUNTER_DIG-1{1'b0}}, 1'b1}; ///substracts 1
        // end
        // if ((CoarseStamp_0 == CoarseStamp_1+1) && (CoarseStamp_1 == CoarseStamp_2) && (DecodedStop > 256)) begin   //Case II
        //     coarse_bias_stop    = {{`COUNTER_DIG-1{1'b0}}, 1'b1}; ///adds 1
        // end
        
        // if ((coarse_bias_stop==1'b0)&&(coarse_bias_start==1'b0)) begin
        //     CoarseStamp_final = CoarseStamp_0;
        // end
        // else begin
        //     CoarseStamp_final = CoarseStamp_1 - coarse_bias_start + coarse_bias_stop;    
        // end
        CoarseStamp_final = CoarseStamp_0;
    end

    merging #(.N(3)) u_merge (
        .clk            (clk0),
        .irst           (rst),
        .in_store_stop  (wDecodeFinishedStop),
        .in_store_start (wDecodeFinishedStart),
        .FallEdge       (DecodedStop),
        .StartEdge      (DecodedStart),  
        .Coarse         (CoarseStamp_final),         
        .done           (done),
        .out            (oTDC)
    );

         

endmodule