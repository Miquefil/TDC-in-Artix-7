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
// 18/4: Previously rst was just (irst&rst_int) but it seems that when
//  counter changed of values from 1-0 to 0-1, the little time where both
//  bits were high was enough to reset the counter. A FF have been implemented
//  to solve it.
//////////////////////////////////////////////////////////////////////
`include "defines.v"
(* keep_hierarchy = "TRUE" *)
module merging #(parameter N = 2) (
    input  wire                         clk,
    input  wire                         fall,
    input  wire                         irst,
    input  wire[`NUM_DECODE-1:0]        FallEdge,
    input  wire[`NUM_DECODE-1:0]        StartEdge,
    input  wire[`NUM_DECODE-1:0]        Coarse,

    output reg[`DIG_OUT-1:0]            out,
    output wire                         done            //Used to reset the system
    //debugging
    //output wire                         debugRst    
    );


    // reg                                         rst_int;
    wire                                        rst;   
    wire                                        rst_int;
    (* DONT_TOUCH = "yes" *) reg                enable_counter;
    (* DONT_TOUCH = "yes" *) reg                Reg_rstint;
    (* DONT_TOUCH = "yes" *) reg[N-1:0]         counter;
    
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
        //Counter
        if(rst) begin
            counter     <= {N{1'b0}};
        end 
        else begin
            if (enable_counter)  begin
                counter <= counter + 1'b1;
            end
        end
        if(counter == {N{1'b1}}) begin
            out         <=  {Coarse, StartEdge, FallEdge};
        end

        //Rst FlipFlop
        if (counter == {N{1'b1}}) begin
            Reg_rstint <= 1'b1;
        end 
        else begin
            Reg_rstint <= 1'b0;
        end
    end

    assign rst_int = Reg_rstint;
    assign done    = Reg_rstint;        //resets the whole systems at the same time


    // always @(*) begin
    //     rst_int = 1'b0;
    //     if(counter == {N{1'b1}}) begin
    //         rst_int =  1'b1;
    //     end
    // end

endmodule //