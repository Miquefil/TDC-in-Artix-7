`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module TDC (
    input  wire                     iClk,
    input  wire                     iRst,
    input  wire                     iHit,
    output wire [`DIG_OUT-1:0]      oTDC,
    output wire                     done
    
    //Debugging Signals
    // output                          StopConv,
    // output[`NUM_TAPS-1:0]           FFStart, FFStop,
    // output[`NUM_TAPS-1:0]           taps
    );  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    wire                         Rise, Fall;
    wire[`NUM_TAPS-1:0]          Stop, Start;
    wire[`NUM_DECODE-1:0]        DecodedStop, DecodedStart;
    
    // assign FFStart = Start;      //TODO: debugging signal
    // assign FFStop  = Stop;       //TODO: debugging signal


    wire                ready;
    wire                rst_int;    
    wire                rst;                            //manages internal and external rst
    assign              rst = (~ready|iRst|rst_int);     //reset if NOTready/external/interal

    //////////////////////Wait for some clocks and then go ready --------------
    wire                FFDelayStart;
    (* dont_touch = "TRUE" *)FDCE #(.INIT(1'b0)) FFDelayStart_1(
        .Q          (FFDelayStart),
        .C          (iClk),
        .CE         (1'b1),
        .CLR        (),
        .D          (1'b1)
    );
    (* dont_touch = "TRUE" *)FDCE #(.INIT(1'b0)) FFDelayStart_2(
        .Q          (ready),
        .C          (iClk),
        .CE         (1'b1),
        .CLR        (done),                 //finishing Merge resets the whole system
        .D          (FFDelayStart)
    );
    /////////-----Start Main TDC --------/////////////////////////////////
    wire        q1, q2;
    Edge u_EdgeDetector(
        .iClk       (iClk),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (Rise),
        .oFall      (Fall),
        .q1         (q1),     //debugging
        .q2         (q2)
    );
    
    Fine #(`NUM_TAPS) u_FineDelay(
        .clk            (iClk),
        .iRst            (rst),
        .iHit           (iHit),
        .iStopEnable    (Fall),
        .iStartEnable   (Rise),
        .oFFStart      (Start),       //FF outputs of Start column
        .oFFStop        (Stop),       //FF outputs of Stop column
        .outTaps        (taps),        //output from the Carrys output
        .outFF             ( ) 
    );

    DecodeStart #(`NUM_TAPS, `NUM_DECODE) u_DecStart(
        .wDecoStartIn          (Start),
        .wDecoStartOut  (DecodedStart)
    );

    DecodeStop  #(`NUM_TAPS, `NUM_DECODE) u_DecStop(
        .wDecoStoptIn          (Stop),
        .wDecoStopOut   (DecodedStop)
    );

    wire[`COUNTER_DIG-1:0]       CoarseStamp;
    Coarse #(`COUNTER_DIG) u_Coarse (
    .clk            (iClk),
    .iRst           (rst),       //reset count
    .iCE            (iHit),        //enable
    .iStore         (Fall),
    .oCoarse         (CoarseStamp)   
    );

    //
    merging #(2) u_merge (
        .clk(iClk),
        .irst(rst),
        .fall(Fall),
        .FallEdge(DecodedStop),
        .StartEdge(DecodedStart),
        .Coarse(CoarseStamp),
        .done(done),
        .out(oTDC)
    );
    assign rst_int = done;        //Resetea el sistema      

endmodule