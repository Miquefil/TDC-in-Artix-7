//////////////////////////////////////////////////////////////////////
// Module Name: edge_tb
// Description: test bench for edge detector
//
// Author: Miqueas Filsinger
// Date: 17-04-2024
//
// Revision History:
//////////////////////////////////////////////////////////////////////

`timescale 1ns/1ns

module Edge_tb (
    );
    reg         clk, rst, hit;
    wire        Rise, Fall;
    wire        aux1, aux2;


    localparam TCLK = 10;
    initial begin
        clk = 1'b0;
        forever #(TCLK/2) clk=~clk;
    end


    Edge u_edge(
        .iClk(clk)      ,
        .iRst(rst)      ,
        .iHit(hit)      ,
        .oRise(Rise)   ,
        .oFall(Fall)   ,
        .q1(aux1),
        .q2(aux2)
    );
    
    initial begin
        rst = 1'b0;
        hit = 1'b1;

        #300
        #10 hit = 1'b0;
        #(TCLK) hit = 1'b1;
        #(TCLK)

        $finish;
    end
endmodule //

//El FF empi