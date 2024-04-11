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

module #(parameter C_DIG = 10) Coarse (
    input wire      clk,
    input wire      iRst,       //reset count
    input wire      iCE,        //enable
    input wire      iStore      //hold count

    output  wire    oCoarse
);

    (* DONT_TOUCH = "yes" *) reg[C_DIG:0]    count;

    always @(posedge clk) begin
        if(!iStore) begin
            if(iRst) begin
                count <= {C_DIG{1'd0}};
            end 
            else begin
                if(iCE) begin
                    count <= count + 1'b1;
                end
            end
        end
    end

    assign oCoarse = count;
endmodule //