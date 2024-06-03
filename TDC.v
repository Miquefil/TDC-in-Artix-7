`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module TDC (
    input  wire                     clk0,
    input  wire                     clk1,
    input  wire                     clk2,
    input  wire                     debug_mode,
    input  wire                     debug_hit,
    input  wire                     iRst,
    input  wire                     iHit,
    input  wire                     enable,
    output wire [`DIG_OUT-1:0]      oTDC,
    output wire                     done
);  


    wire                         Rise, Fall;
    wire[`NUM_TAPS-1:0]          Stop_Edge, Start_Edge;
    wire[`NUM_DECODE-1:0]        DecodedStop, DecodedStart;


    wire                ready;
    wire                rst_int;    
    assign              rst_int = done;                 //If a measure is done, reset the TDC
    wire                rst;                            //manages internal and external rst
    assign              rst = (~ready|iRst|rst_int);    //reset if NOTready/external/interal

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
    

    ///Edge auxiliar begins --------- this blocks is for counting a rise and a fall edge, if both already happened
    //it allows the principal edge detector to work, if a rise edge happened but a fall edge still didnt, then dont let
    //principal edge detector work
    wire                rise_aux;
    wire                fall_aux;
    reg                 rise_fall_counter   = 1'b1;   //zero: odd number of edges
    reg                 already_merged      = 1'b1;
    reg                 allow_enable        = 1'b1;               
    wire                enable_edge;
    assign              enable_edge         = allow_enable & enable;
    Edge u_EdgeDetector_auxiliar(
        .iClk        (clk0),
        .iRst        (rst),
        .iHit        (iHit),
        .oRise       (rise_aux),
        .oFall       (fall_aux),
        .enable      (1'b1)
    );

    always @(posedge clk0) begin
        if(rise_aux && rise_fall_counter == 1'b1) begin      
            rise_fall_counter   <= 1'b0;
        end
        if(fall_aux && rise_fall_counter == 1'b0) begin
            rise_fall_counter   <= 1'b1;
        end

        if(done) begin
            already_merged <= 1'b1;
        end

        if(rise_fall_counter && already_merged) begin
            allow_enable    <= 1'b1;
        end

        if(Fall) begin
            already_merged  <= 1'b0;
            allow_enable    <= 1'b0;
        end

    end

    Edge u_EdgeDetector(
        .iClk        (clk0),
        .iRst        (rst),
        .iHit        (iHit),
        .oRise       (Rise),
        .oFall       (Fall),
        .enable      (enable_edge)
    );
    
    wire    Fall_1;
    Edge u_EdgeDetector_1(
        .iClk        (clk1),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (),
        .oFall      (Fall_1),
        .enable     (enable_edge)
    );

    wire    Fall_2;
    Edge u_EdgeDetector_2(
        .iClk        (clk1),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (),
        .oFall      (Fall_2),
        .enable     (enable_edge)
    );

    wire arbiter_stop;   
    wire arbiter_start;
    Fine #(`NUM_TAPS) u_FineDelay(
        .clk               (clk0),
        .iRst              (rst),
        .iHit              (iHit),
        .iStopEnable       (Fall),
        .iStartEnable      (Rise),
        .oFFStart          (Start_Edge),    //FF outputs of Start_Edge column
        .oFFStop           (Stop_Edge),     //FF outputs of Stop_Edge column
        .debug_mode        (1'b0),
        .debug_hit         (debug_hit),
        .out_arbiter_start_ff(arbiter_stop),        //output from the Carrys output
        .out_arbiter_stop_ff(arbiter_start)  
    );

    // DecodeStart #(`NUM_TAPS, `NUM_DECODE) u_DecStart(
    //     .wDecoStartIn       (Start_Edge),
    //     .rst                (rst),
    //     .wDecoStartOut      (DecodedStart)
    // );

    wire                    wDecodeGoStart;
    wire                    wDecodeFinishedStart;
    decode #(.falling(1'b0)) u_DecStart(
        .go                 (Rise),               //input   wire
        .rst                (rst),                          //input   wire
        .clk                (clk0),                         //input   wire
        .wDecodeIn          (Start_Edge),                   //input   wire
        .finished           (wDecodeFinishedStart),         //output  wire
        .wDecodeOut         (DecodedStart)                  //output  wire
    );

    // DecodeStop  #(`NUM_TAPS, `NUM_DECODE) u_DecStop(
    //     .wDecoStopIn       (Stop_Edge),
    //     .rst                (rst),
    //     .wDecoStopOut       (DecodedStop)
    // );

    wire                    wDecodeGoStop;
    wire                    wDecodeFinishedStop;
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

    wire[`COUNTER_DIG-1:0]       CoarseStamp_1;
    Coarse #(`COUNTER_DIG) u_Coarse_1 (
        .clk            (clk1),
        .iRst           (rst),       //reset count
        .iCE            (iHit),        //enable
        .iStore         (Fall_1),
        .oCoarse        (CoarseStamp_1)   
    );

    wire[`COUNTER_DIG-1:0]       CoarseStamp_2;
    Coarse #(`COUNTER_DIG) u_Coarse_2 (
        .clk            (clk2),
        .iRst           (rst),       //reset count
        .iCE            (iHit),        //enable
        .iStore         (Fall_2),
        .oCoarse        (CoarseStamp_2)   
    );

    // Arbiter and Merging
    //TODO: solve arbiter_stop/start condition, how to get it when using ones counter
    reg[`COUNTER_DIG-1:0]          CoarseStamp_final;
    always @(*) begin
        CoarseStamp_final = CoarseStamp_1;

        if((CoarseStamp_1 == CoarseStamp_2)&&(CoarseStamp_0 < CoarseStamp_1)) begin
            CoarseStamp_final = CoarseStamp_final - {{`COUNTER_DIG-1{1'b0}}, 1'b1};
        end
        if((CoarseStamp_1 == CoarseStamp_2)&&(CoarseStamp_0 > CoarseStamp_1)) begin
            CoarseStamp_final = CoarseStamp_final + {{`COUNTER_DIG-1{1'b0}}, 1'b1};
        end
    end

    merging #(.N(8)) u_merge (
        .clk            (clk0),
        .irst           (rst),
        .fall           (wDecodeFinishedStop),
        .rise           (wDecodeFinishedStart),
        .FallEdge       (DecodedStop),
        .StartEdge      (DecodedStart),
        .Coarse         (CoarseStamp_final),
        .done           (done),
        .out            (oTDC)
    );

         

endmodule