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
//`include "defines.v"
(* keep_hierarchy = "TRUE" *) 
module Fine #(parameter NUM = 12)                    ///parameter should be multiple of 4
    (
        input   wire            clk,
        input   wire            iRst,
        input   wire            iHit,

        output  wire[NUM-1:0]   oFF,       //FF outputs of Start column


        //optional control signals
        output  wire[NUM-1:0]   outTaps,        //output from the Carrys output
        output  wire[NUM-1:0]   outFF           //output from the first column of FF
    );


    wire[NUM-1: 0]  wCarryOutputs;          //salida de carry outputs
    wire[NUM-1: 0]  wOutput;                //salida de outputs
    wire[NUM-1: 0]  wTapsOut;               //salidas luego de flipflops
    wire[NUM-1: 0]  wFirstFF;               //salidas luego de flipflops


    /////////INITIALIZATION OF CARRY4s //////////////////////////////////////////////
    //First Carry4
    (* DONT_TOUCH = "yes" *) CARRY4 carry_40
            (   .CO(wCarryOutputs[3: 0]),       // 4-bit carry out
                .O(wOutput[3: 0]),             // 4-bit carry chain XOR data out
                .CI(1'b0),                      // 1-bit carry cascade input
                .CYINIT(iHit),                  // 1-bit carry initialization
                .DI(4'b0000),                   // 4-bit carry-MUX data in
                .S(4'b1111)                     // 4-bit carry-MUX select input
            );
    //following carry4s
    genvar i;
    generate
        for(i = 1; i <= NUM/4 - 1;  i = i+1) begin
            (* DONT_TOUCH = "yes" *) CARRY4 carry_4 (
                .CO(wCarryOutputs[4*(i+1)-1: 4*i]),         // 4-bit carry out
                .O(wOutput[4*(i+1)-1: 4*i]),             // 4-bit carry chain XOR data out
                .CI(wCarryOutputs[4*i-1]),         // 1-bit carry cascade input
                .CYINIT(1'b0),     // 1-bit carry initialization
                .DI(4'b0000),         // 4-bit carry-MUX data in
                .S(4'b1111)            // 4-bit carry-MUX select input
            );
        end
    endgenerate

    /////////CONSTRUCTION OF FLIP-FLOPS //////////////////////////////////////////////
    //First column
    generate
        for (i = 0; i < NUM ; i=i+1) begin
            (* DONT_TOUCH = "yes" *) FDCE #(.INIT(1'b0)) Firstff(
                .Q(wFirstFF[i])      ,
                .C(clk)                 ,
                .CE(1'b1)               ,   //siempre enableado
                .CLR(iRst)              ,
                .D(wCarryOutputs[i])    
            );
        end
    endgenerate
    
    //Second Column
    generate
        for (i = 0; i < NUM ; i=i+1) begin
            (* DONT_TOUCH = "yes" *) FDCE #(.INIT(1'b0)) Secondff(
                .Q(oFF[i])     ,   
                .C(clk)             ,  
                .CE(iStartEnable)   ,
                .CLR(iRst)          ,
                .D(wFirstFF[i])
            );
        end
    endgenerate

    assign outTaps = wCarryOutputs;

endmodule