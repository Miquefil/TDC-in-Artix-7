// KEEP_HIERARCHY is used to prevent optimizations along
// the hierarchy boundaries. The Vivado synthesis tool 
// attempts to keep the same general hierarchies specified in the RTL,
// but to improve quality of results (QoR), it can flatten or modify them.

//`include "defines.v"
(* keep_hierarchy = "TRUE" *) 
module DelayChain #(parameter NUM = 12)                    ///parameter should be multiple of 4
    (
        input   wire            clk,
        input   wire            rst,
        input   wire            hit,
        output  wire[NUM-1:0]   outTaps,
        output  wire[NUM-1:0]   outFF
    );


    wire[NUM-1: 0]  wCarryOutputs;          //salida de carry outputs
    wire[NUM-1: 0]  wOutput;                //salida de outputs
    wire[NUM-1: 0]  wTapsOut;               //salidas luego de flipflops
    wire[NUM-1: 0]  wOutFirstFF;            //salida de la primer columna de FF


    /////////INITIALIZATION OF CARRY4s //////////////////////////////////////////////
    //first Carry4
    (* DONT_TOUCH = "yes" *) CARRY4 carry_40
            (   .CO(wCarryOutputs[3: 0]),       // 4-bit carry out
                .O(wOutput[3: 0]),             // 4-bit carry chain XOR data out
                .CI(1'b0),                      // 1-bit carry cascade input
                .CYINIT(hit),                  // 1-bit carry initialization
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

    /////////INITIALIZATION OF FLIP-FLOPS //////////////////////////////////////////////
    generate
        for (i = 0; i < NUM ; i=i+1) begin
            (* DONT_TOUCH = "yes" *) FDCE #(.INIT(1'b0)) Firstff(
                .Q(wOutFirstFF[i]),     // 1-bit output: Data
                .C(clk),     // 1-bit input: Clock
                .CE(1'b1),   // 1-bit input: Clock enable
                .CLR(1'b0), // 1-bit input: Asynchronous clear
                .D(wCarryOutputs[i])    // 1-bit input: Data
            );
        end
    endgenerate

    generate
        for (i = 0; i < NUM ; i=i+1) begin
            (* DONT_TOUCH = "yes" *) FDCE #(.INIT(1'b0)) Firstff(
                .Q(outFF[i]),     // 1-bit output: Data
                .C(clk),     // 1-bit input: Clock
                .CE(1'b1),   // 1-bit input: Clock enable
                .CLR(1'b0), // 1-bit input: Asynchronous clear
                .D(wOutFirstFF[i])      // 1-bit input: Data
            );
        end
    endgenerate



    assign outTaps = wCarryOutputs;





endmodule