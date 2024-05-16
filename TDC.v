`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module TDC (
    input  wire                     clk0,
    input  wire                     clk1,
    input  wire                     clk2,
    input  wire                     iRst,
    input  wire                     iHit,
    input  wire                     enable,
    output wire [`DIG_OUT-1:0]      oTDC,
    output wire                     done
    
    //Debugging Signals
    // output                          StopConv,
    // output[`NUM_TAPS-1:0]           FFStart, FFStop,
    // output[`NUM_TAPS-1:0]           taps
    );  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////


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
    
    Edge u_EdgeDetector(
        .iClk        (clk0),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (Rise),
        .oFall      (Fall),
        .enable     (enable)
    );
    
    wire    Fall_1;
    Edge u_EdgeDetector_1(
        .iClk        (clk1),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (),
        .oFall      (Fall_1),
        .enable     (enable)
    );

    wire    Fall_2;
    Edge u_EdgeDetector_2(
        .iClk        (clk1),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (),
        .oFall      (Fall_2),
        .enable     (enable)
    );

    Fine #(`NUM_TAPS) u_FineDelay(
        .clk               (clk0),
        .iRst              (rst),
        .iHit              (iHit),
        .iStopEnable       (Fall),
        .iStartEnable      (Rise),
        .oFFStart          (Start_Edge),    //FF outputs of Start_Edge column
        .oFFStop           (Stop_Edge),     //FF outputs of Stop_Edge column
        .outTaps           (),              //output from the Carrys output
        .outFF             () 
    );

    DecodeStart #(`NUM_TAPS, `NUM_DECODE) u_DecStart(
        .wDecoStartIn       (Start_Edge),
        .wDecoStartOut      (DecodedStart)
    );

    DecodeStop  #(`NUM_TAPS, `NUM_DECODE) u_DecStop(
        .wDecoStoptIn       (Stop_Edge),
        .wDecoStopOut       (DecodedStop)
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
    reg[`COUNTER_DIG-1:0]          CoarseStamp_final;
    always @(*) begin
        CoarseStamp_final = CoarseStamp_1;

        if((CoarseStamp_1 == CoarseStamp_2)&&(DecodedStart >= `TOLERANCE_COARSE)) begin
            CoarseStamp_final = CoarseStamp_final - {{`COUNTER_DIG-1{1'b0}}, 1'b1};
        end
        if((CoarseStamp_1 == CoarseStamp_2)&&(DecodedStop >= `TOLERANCE_COARSE)) begin
            CoarseStamp_final = CoarseStamp_final + {{`COUNTER_DIG-1{1'b0}}, 1'b1};
        end
    end

    merging #(.N(3)) u_merge (
        .clk(clk0),
        .irst(rst),
        .fall(Fall),
        .rise(Rise),
        .FallEdge(DecodedStop),
        .StartEdge(DecodedStart),
        .Coarse(CoarseStamp_final),
        .done(done),
        .out(oTDC)
    );

         

endmodule