`define NUM_TAPS    = 120
`define NUM_DECODE  = 7
`define COUNTER_DIG = 10
`define DIG_OUT     = 7+7+10




module top (
    input              iClk,
    input              iRst,
    input              iHit,
    //output[NUM_TAPS-1:0]    taps,
    output[DIG_OUT-1:0]     oTDC
    );

    wire                        rst;                //manages internal and external rst
    wire                        Rise, Fall;
    wire[NUM_TAPS-1:0]          Stop, Start;
    wire[NUM_DECODE-1:0]        DecodedStop, DecodedStart;
    wire[COUNTER_DIG-1:0]       CoarseStamp;


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
        .outTaps           ( ),        //output from the Carrys output
        .outFF             ( ) 
    );

    DecodeStart #(`NUM_TAPS, `NUM_DECODE) u_DecStart(
        .wDecoStartIn          (Start),
        .wDecoStartOut  (DecodedStart)
    );

    DecodeStop  #(`NUM_TAPS, `NUM_DECODE) u_DecStop(
        .wDecoStartIn          (Stop),
        .wDecoStartOut   (DecodedStop)
    );

    Coarse #(`COUNTER_DIG) u_Coarse (
    .clk            (iClk),
    .iRst           (rst),       //reset count
    .iCE            (iHit),        //enable
    .iStore         (Fall),
    oCoarse         (CoarseStamp)   
);

    //Delay post resultado y Merging//////////////////
    //COMMENTS: Originalmente parece que Machado sólo usa un clock como delay así que DelayCounter tiene 1 bit




    wire                StartDelay, StopDelay, ConvertionFinish;
    reg                 DelayCounter;
    reg[DIG_OUT-1:0]    ValorTDC;

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
        elseif(StartDelay) begin
            DelayCounter <= DelayCounter + 1'b1;
        end
    end
    
    always @(posedge iClk) begin
        if(rst) begin
            ValorTDC <= 0;
        end
        elseif(StopDelay) begin
            ValorTDC <= {CoarseStamp, DecodedStart, DecodedStop};
        end
    end

    assign oTDC = ValorTDC;

endmodule