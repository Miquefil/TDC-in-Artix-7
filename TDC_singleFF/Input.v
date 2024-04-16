//////////////////////////////////////////////////////////////////////
// Module Name: Input
// Description: Reset for delay chain
//
// Author: Miqueas Filsinger
// Date: Date 
//
// Revision History:
//
// Notes:
// - 
//
//////////////////////////////////////////////////////////////////////

(* keep_hierarchy = "TRUE" *) 
module  Input(
    input   wire    clk,
    input   wire    iRst,
    input   wire    iHit,
    input   wire    iTap,

    output  wire    oHit
);
    wire a;

    (* DONT_TOUCH = "yes" *) FDCE FFa (
        .Q(oHit)        ,   // 1-bit output: Data
        .C(iHit)         ,   // 1-bit input: Clock
        .CE()           ,   // 1-bit input: Clock enable
        .CLR(a)         ,
        .D(1'b1)        ,   // 1-bit input: Data
    );

    (* DONT_TOUCH = "yes" *) FDCE FFb (
        .Q(a)        ,   // 1-bit output: Data
        .C(clk)        ,   // 1-bit input: Clock
        .CE()           , // 1-bit input: Clock enable
        .CLR()         ,
        .D(iHit)        ,   // 1-bit input: Data
    );

endmodule //