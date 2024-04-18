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
(* keep_hierarchy = "TRUE" *)
module Edge_tb (
    );
    reg         clk, rst, hit;
    reg         oRise, oFall, aux1, aux2;

    initial begin
        clk = 1'b0;
        forever #5 clk=~clk;
    end

    assign 


    Edge u_edge(
        .iClk(clk)      ,
        .iRst(rst)      ,
        .iHit(hit)      ,
        .oRise(oRise)   ,
        .oFall(oFall)   ,
        .q1(aux1),
        .q2(aux2)
    );
    
    initial begin
        rst = 1'b0;
        hit = 1'b1;

        #22 hit = 1'b1;

        $finish;
    end
endmodule //