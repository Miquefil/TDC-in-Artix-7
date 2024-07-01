//////////////////////////////////////////////////////////////////////
// Module Name: merging
// Description: When    in_store_stop edge comes, it counts N clocks and computes 
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
    input  wire                         in_store_stop,
    input  wire                         in_store_start,
    input  wire                         irst,
    input  wire[`NUM_DECODE-1:0]        FallEdge,
    input  wire[`NUM_DECODE-1:0]        StartEdge,
    input  wire[`COUNTER_DIG-1:0]       Coarse,

    output wire[`DIG_OUT-1:0]            out,
    output wire                         done            //Used to reset the system JUST ONE CLK 
    //debugging
    //output wire                         debugRst    
    );
    //NOTES:           --------------------------------------------
    //  Stores decodedStart 1 clock later that StartEdge comes
    //  Stores decodedStop 1 clock later that FallEdge comes
    //  Once    in_store_stop' comes: 4 clocks later output is merged


    wire    rst;   
    assign  rst = irst;       


    reg                                                 r_done         = 1'b0;
    reg                                                 enable_counter = 1'b0;
    reg [`NUM_DECODE-1:0]                               StartEdge_stored = {`NUM_DECODE{1'b0}};
    reg                                                 storeStart       = 1'b0;
    reg [`NUM_DECODE-1:0]                               StopEdge_stored  = {`NUM_DECODE{1'b0}};
    reg                                                 storeStop        = 1'b0;
    (* DONT_TOUCH = "yes" *) reg[N-1:0]                 counter          = {N{1'b0}};

    wire                                                TOP_COUNTER;
    assign                                              TOP_COUNTER = (counter == {N{1'b1}});



    //////////////
    //If edge detector detects a rising edge or a rising rst is done:
    always @(posedge in_store_start or posedge rst) begin    
        if (rst) begin
            storeStart          <= 1'b0;
        end
        else begin
            storeStart          <= 1'b1;
        end
    end
    /////////////
    //If edge detector detects a falling edge or a rising rst is done:
    always @(posedge in_store_stop or posedge rst) begin
        if (rst) begin
            enable_counter      <= 1'b0;
            storeStop           <= 1'b0;
        end
        else begin
            enable_counter      <= 1'b1;     
            storeStop           <= 1'b1;
        end
    end
    /////////////////////
    always @(posedge clk) begin
        //Counter
        if(rst) begin
            counter             <= {N{1'b0}};
            StopEdge_stored     <= {`NUM_DECODE{1'b0}};
            StartEdge_stored    <= {`NUM_DECODE{1'b0}};
        end 
        else if (enable_counter) begin
            if (TOP_COUNTER) begin
                counter         <= {N{1'b0}};
                r_done          <= 1'b1;
                //this implementation is important AND SHOULD NOT BE REPLACED BY TOP_COUNTER ASSIGN
                //The systems needs that done output asserts high one clock later of merging module finish
            end
            else begin
                counter         <= counter + {{N-1{1'b0}}, 1'b1};
            end
        end
        
        if(r_done) begin
            r_done <= 1'b0;
        end 

        //Store
        if(storeStart) begin       
            StartEdge_stored <= StartEdge;
        end
        if(storeStop) begin
            StopEdge_stored  <= FallEdge;
        end
    end

    assign done     = r_done;        //resets the whole systems at the same time
    assign out      = {Coarse, StartEdge_stored, StopEdge_stored};

endmodule //