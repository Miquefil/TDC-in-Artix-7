//////////////////////////////////////////////////////////////////////
// Module Name: merging
// Description: When fall edge comes, it counts N clocks and computes 
//              the output. Also manages busy output, rst, and ready.
//              
//
// Author: Miqueas Filsinger
// Date: 17-04-2024
//
// Revision History:
//////////////////////////////////////////////////////////////////////
`include "defines.v"

module merging (
    input  wire                         clk,
    input  wire                         fall,
    input  wire                         irst,
    input  wire[`NUM_DECODE-1:0]        FallEdge,
    input  wire[`NUM_DECODE-1:0]        StartEdge,
    input  wire[`NUM_DECODE-1:0]        Coarse,

    output reg[`DIG_OUT-1:0]            out
);
    wire                                        rst;
    reg                                         rst_int;
    (* DONT_TOUCH = "yes" *) reg                enable_counter;
    (* DONT_TOUCH = "yes" *) reg[3:0]           counter;

    //TODO: parametrizarlo a N

    assign rst = (rst_int|irst);        //rst_int: RESET INTERNO para overflow
                                        //irst   : RESET EXTERNO 

    always @(posedge fall, posedge rst) begin
        if(rst) begin
            enable_counter <= 1'b0;
        end
        else begin
            enable_counter <= 1'b1;     
        end
    end

    always @(posedge clk) begin
        if(rst) begin
            counter         <= 4'h0;
        end 
        else begin
            if (enable_counter)  begin
                counter <= counter + 1;
            end
        end
        if(counter == 4'hf) begin
            out     <=  {Coarse, StartEdge, FallEdge};
        end
    end

    always @(*) begin
        rst_int = 1'b0;
        if(counter == 4'hf) begin
            rst_int =  1'b1;
        end
    end

endmodule //