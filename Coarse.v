//////////////////////////////////////////////////////////////////////
// Module Name: Coarse
// Description: Clock counter
//
// Author: Miqueas Filsinger
// Date: Date Created or Last Modified
//
// Revision History:
//
// Notes:
// - Store has precedence over Rst. If Store is held high, it doesnt
//   respond to a rst signal.
//
//////////////////////////////////////////////////////////////////////
(* keep_hierarchy = "TRUE" *) 
module Coarse #(parameter C_DIG = 10) (
    input   wire                clk,
    input   wire                iRst,       //reset count
    input   wire                iCE,        //enable
    input   wire                iStore,     //hold count

    output  wire [C_DIG-1:0]    oCoarse
);

    (* DONT_TOUCH = "yes" *) reg[C_DIG-1:0]    count    = {C_DIG{1'b0}};
    (* DONT_TOUCH = "yes" *) reg[C_DIG-1:0]    stored   = {C_DIG{1'b0}};

    always @(posedge clk) begin
        if(iRst) begin
            count <= {C_DIG{1'd0}};
        end 
        else if(iCE) begin
            count <= count + 1'b1;
        end
    end

    always @(posedge clk) begin
        if (iStore) begin
            stored <= count;
        end
    end

    assign oCoarse = stored;
endmodule //