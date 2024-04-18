`include "defines.v"

module top (
    input                           iClk,
    input                           iRst,
    input                           iHit,
    output[`DIG_OUT-1:0]            oTDC,
    output reg                      done,

    //Debugging Signals
    output                          StopConv,
    output[`NUM_TAPS-1:0]           FFStart, FFStop,
    output[`NUM_TAPS-1:0]           taps
    );  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    wire                         Rise, Fall;
    wire[`NUM_TAPS-1:0]          Stop, Start;
    wire[`NUM_DECODE-1:0]        DecodedStop, DecodedStart;
    
    assign FFStart = Start;
    assign FFStop  = Stop;


    wire                ready;
    reg                 rst_int;    
    wire                rst;                //manages internal and external rst
    assign              rst = (~ready)&(iRst|rst_int);     //reset if ready AND external/interal reset

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
        .CLR        (done),
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

    //Delay post resultado y Merging//////////////////
    //COMMENTS: Originalmente parece que Machado sólo usa un clock como delay así que DelayCounter tiene 1 bit

    
    // wire                    StartConvertion;        //starting convertion
    // wire                    FinishConvertion;       //finishing convertion
    // wire                    done;                   //convertion done
    // wire                    conv_ready;             //convertion ready --> rst & ready --> done
    // reg[1:0]                DelayCounter;
    // reg[`DIG_OUT-1:0]       ValorTDC;               

    // assign FinishConvertion = &(DelayCounter);  //true if DelayCounter == 11

    // (* dont_touch = "TRUE" *)FDCE #(.INIT(1'b0)) enable_delay_dff(
    // .Q          (StartConvertion),
    // .C          (Fall),
    // .CE         (1'b1),
    // .CLR        (FinishConvertion),
    // .D          (1'b1)
    // );

    // (* dont_touch = "TRUE" *)FDRE #(.INIT(1'b0)) value_ready_dff(
    //     .Q(Done),
    //     .C(iCLK0),
    //     .CE(1'b1),
    //     .R(~FinishConvertion),
    //     .D(1'b1)
    // );

    // //Cuento 4 clocks --> finish
    // always @(posedge iClk) begin
    //     if (StopDelay) begin
    //         DelayCounter <= 0;        
    //     end
    //     else if (StartDelay) begin
    //         DelayCounter <= DelayCounter + 1'b1;
    //     end
    // end //cuenta 0-1-2-3-0-1-2-3-0----
    
    // always @(posedge iClk) begin
    //     if(rst) begin
    //         ValorTDC <= 0;
    //     end
    //     else if(StopDelay) begin
    //         ValorTDC <= {CoarseStamp, DecodedStart, DecodedStop};
    //     end
    // end

    merging u_merge (
        .clk(iClk),
        .irst(rst),
        .fall(Fall),
        .FallEdge(DecodedStop),
        .StartEdge(DecodedStart),
        .Coarse(CoarseStamp),
        .out(oTDC)
    );
    

endmodule