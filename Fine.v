/////////////////////////////////////FINE MODULE ///////////////////////////////////
// Module Name: Fine
// Description: Implements the delay chain with its respective taps flip-flopped,
//              and also implements the Start and Stop flip-flop columns.
//
// Author: Miqueas Filsinger
// Date: 
//
// Notes:
// - 
////////////////////////////////////////////////////////////////////////////////////
`include "defines.v"
(* keep_hierarchy = "TRUE" *) 
module Fine #(parameter NUM = 12)                    ///parameter should be multiple of 4
    (
        input   wire            clk,
        input   wire            iRst,
        input   wire            iHit,
        input   wire            iStopEnable,
        input   wire            iStartEnable,

        //Real Outputs
        output  wire[NUM-1:0]   oFFStart,       //FF outputs of Start column
        output  wire[NUM-1:0]   oFFStop ,       //FF outputs of Stop column
        output  wire            out_arbiter_start_ff,        //output from the Carrys output
        output  wire            out_arbiter_stop_ff        //output from the Carrys output

    );


    wire[NUM-1: 0]  wCarryOutputs;          //salida de carry outputs
    wire[NUM-1: 0]  wOutput;                //salida de outputs
    wire[NUM-1: 0]  wTapsOut;               //salidas luego de flipflops
    wire[NUM-1: 0]  wFirstFF;               //salidas luego de flipflops
    assign          out_arbiter_start_ff = oFFStart[`TOLERANCE_COARSE];
    assign          out_arbiter_stop_ff  = oFFStop[`TOLERANCE_COARSE];

    /////////INITIALIZATION OF CARRY4s //////////////////////////////////////////////
    //first Carry4
    // (* DONT_TOUCH = "yes" *) CARRY4 carry_40
    //         (   .CO(wCarryOutputs[3: 0]),           // 4-bit carry out
    //             .O(wOutput[3: 0]),                  // 4-bit carry chain XOR data out
    //             .CI(1'b0),                          // 1-bit carry cascade input
    //             .CYINIT(iHit),                   // 1-bit carry initialization
    //             .DI(4'b0000),                       // 4-bit carry-MUX data in
    //             .S(4'b1111)                         // 4-bit carry-MUX select input
    //         );
    //following carry4s
    genvar i;
    // generate
    //     for(i = 1; i <= NUM/4 - 1;  i = i+1) begin
    //         (* DONT_TOUCH = "yes" *) CARRY4 carry_4 (
    //             .CO(wCarryOutputs[4*(i+1)-1: 4*i]),         // 4-bit carry out
    //             .O(wOutput[4*(i+1)-1: 4*i]),             // 4-bit carry chain XOR data out
    //             .CI(wCarryOutputs[4*i-1]),         // 1-bit carry cascade input
    //             .CYINIT(1'b0),                  // 1-bit carry initialization
    //             .DI(4'b0000),                   // 4-bit carry-MUX data in
    //             .S(4'b1111)            // 4-bit carry-MUX select input
    //         );
    //     end
    // endgenerate

    // /////////////////////////////////////////////////////////////
    // //////                  DEBUG MODE!!!                  //////
    // //////              Comment in normal use              //////
    // /////////////////////////////////////////////////////////////
    // reg [`NUM_TAPS-1:0]            debug_stop_out  = {{32{1'b1}}, {`NUM_TAPS-32{1'b0}}};
    // reg [NUM-1:0]                  debug_start_out = {{(NUM-32){1'b0}}, {32{1'b1}}};
    reg [NUM-1:0]                  debug_start_out = {NUM{1'b0}};
    always @(posedge clk) begin
        if(iStartEnable) begin
            if(debug_start_out == {NUM{1'b1}}) begin
                debug_start_out <= {NUM{1'b0}};
            end
            else begin
                //DEBUG FIXED RESULT:
                //we simulate an square hit wave quicker than one clock, that is, it completely
                //enters inside the chain
                // debug_start_out             <= {{50{1'b0}}, {(NUM-100){1'b1}}, {50{1'b0}}};

                //DEBUG OF ZONES:
                

                //DEBUG START:
                // debug_start_out[0]       <= 1'b1;
                // debug_start_out[NUM-1:1] <= debug_start_out[NUM-2:0];    

                //DEBUG STOP:
                debug_start_out[NUM-1]       <= 1'b1;
                debug_start_out[NUM-2:0] <= debug_start_out[NUM-1:1];    
            end
        end
    end
    assign wCarryOutputs = debug_start_out;
    ////////////////////////////////////////////////////////////

    /////////CONSTRUCTION OF FLIP-FLOPS //////////////////////////////////////////////
    //First column
    generate
        for (i = 0; i < NUM ; i=i+1) begin
            (* DONT_TOUCH = "yes" *) FDCE #(.INIT(1'b0)) Firstff(
                .Q(wFirstFF[i])         ,
                .C(clk)                 ,
                .CE(1'b1)               ,   //siempre enableado
                .CLR(iRst)              ,
                .D(wCarryOutputs[i])    
            );
        end
    endgenerate
    
    //Second Column: START COLUMN
    generate
        for (i = 0; i < NUM ; i=i+1) begin
            (* DONT_TOUCH = "yes" *) FDCE #(.INIT(1'b0)) Startff(
                .Q          (oFFStart[i]),   
                .C          (clk),   
                .CE         (iStartEnable),    
                .CLR        (iRst),     
                .D          (wFirstFF[i])          
            );
        end
    endgenerate

    //Third Column: STOP COLUMN

    generate
        for (i = 0; i < NUM ; i=i+1) begin
            (* DONT_TOUCH = "yes" *) FDCE #(.INIT(1'b0)) StopFF(
                .Q(oFFStop[i])      ,     
                .C(clk)             ,     
                .CE(iStopEnable)    ,
                .CLR(iRst)          ,
                .D(wFirstFF[i])   
            );
        end
    endgenerate



    assign outTaps = wCarryOutputs;





endmodule