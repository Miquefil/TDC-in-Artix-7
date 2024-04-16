//////////////////////////////////////////////////////////////////////
// Module Name: RiseAndFallDetector
// Description: Brief description of the module's functionality
//
// Author: Miqueas Filsinger
// Date: Date Created or Last Modified
//
// Revision History:
// - Date: Description of changes made
// - Date: Description of changes made
//
// Notes:
// - Any additional notes or considerations
//
//////////////////////////////////////////////////////////////////////

module RiseAndFallDetector (
    // Ports here
);


//HIT RISE AND FALL EDGE DETECTION

    wire [1:0] wEDGE;
    wire wRISEEDGE;
    wire wFALLEDGE;

    (* dont_touch = "TRUE" *) FDCE #(.INIT(1'b0)) edge_detector_ffd0(
        .Q(wEDGE[0]),
        .C(iCLK0),
        .CE(1'b1),
        .CLR(iRST),
        .D(wHIT)
    );

    (* dont_touch = "TRUE" *) FDCE #(.INIT(1'b0)) edge_detector_ffd1(
        .Q(wEDGE[1]),
        .C(iCLK0),
        .CE(1'b1),
        .CLR(iRST),
        .D(wEDGE[0])
    );


    assign wRISEEDGE = wEDGE[0] & ~wEDGE[1];
    assign wFALLEDGE = wEDGE[1] & ~wEDGE[0];

    // Module implementation here

endmodule //