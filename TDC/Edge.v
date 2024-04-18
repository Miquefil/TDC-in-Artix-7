//////////////////////////////////////////////////////////////////////
// Module Name: Edge
// Description: Rising and Falling Edge detector
//
// Author: Miqueas Filsinger
// Date: Date Created or Last Modified
//
//
//////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "TRUE" *) 
module Edge(
    input           iClk, iRst, iHit,
    output          oRise, oFall,      //[0]:

    //Debugging
    output          q1, q2
);

    wire [1:0] wEDGE;
    assign q1 = wEDGE[0];
    assign q2 = wEDGE[1];


    (* dont_touch = "TRUE" *) FDCE #(.INIT(1'b0)) edge_detector_ffd0(
        .Q(wEDGE[0]),
        .C(iClk),
        .CE(1'b1),
        .CLR(iRst),
        .D(iHit)
    );

    (* dont_touch = "TRUE" *) FDCE #(.INIT(1'b0)) edge_detector_ffd1(
        .Q(wEDGE[1]),
        .C(iClk),
        .CE(1'b1),
        .CLR(iRst),
        .D(wEDGE[0])
    );


    assign oRise = wEDGE[0] & ~wEDGE[1];
    assign oFall = wEDGE[1] & ~wEDGE[0];

endmodule //