`define NUM_TAPS     120
`define NUM_DECODE   7
`define COUNTER_DIG  10
`define DIG_OUT      24

module top (
    input              iClk,
    input              iRst,
    input              iHit,
    //output[NUM_TAPS-1:0]    taps,
    output[`DIG_OUT-1:0]     oTDC,



    //Debugging Signals
    output[`NUM_TAPS-1:0]         FFStart, FFStop,
    output[`NUM_TAPS-1:0]         taps
    );

    wire                         rst;                //manages internal and external rst
    wire                         Rise, Fall;
    wire[`NUM_TAPS-1:0]          Stop, Start;
    wire[`NUM_DECODE-1:0]        DecodedStop, DecodedStart;
    
    assign FFStart = Start;
    assign FFStop  = Stop;


    Edge u_EdgeDetector(
        .iClk       (iClk),
        .iRst        (rst),
        .iHit       (iHit),
        .oRise      (Rise),
        .oFall      (Fall)
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




    wire                StartDelay, StopDelay, ConvertionFinish;
    reg                 DelayCounter;
    reg[`DIG_OUT-1:0]    ValorTDC;

    assign StopDelay = DelayCounter;

    (* dont_touch = "TRUE" *)FDCE #(.INIT(1'b0)) enable_delay_dff(
    .Q          (StartDelay),
    .C          (Fall),
    .CE         (1'b1),
    .CLR        (StopDelay),
    .D          (1'b1)
);

    always @(posedge iClk) begin
        if (StopDelay) begin
            DelayCounter <= 0;        
        end
        else if (StartDelay) begin
            DelayCounter <= DelayCounter + 1'b1;
        end
    end
    
    always @(posedge iClk) begin
        if(rst) begin
            ValorTDC <= 0;
        end
        else if(StopDelay) begin
            ValorTDC <= {CoarseStamp, DecodedStart, DecodedStop};
        end
    end

    assign oTDC = ValorTDC;

endmodule