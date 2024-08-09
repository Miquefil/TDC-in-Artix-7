//////////////////////////////////////////////////////////////////////
// Module Name: debugger
//              - debugger pulses for TDC
//
// Author: Miqueas Filsinger
// Date: 10-06-2024
//
//////////////////////////////////////////////////////////////////////
`include "defines.v"
module debugger (
    input   wire            clk,
    input   wire            rst,
    input   wire            enabler,            //Hit enabler
    input   wire            debug_enabler,      //Whole module enabler
    output  wire            debug_hit,          //Hit
    output  wire            finished
);

    reg                                     one_counter_cycle   = 1'b0;
    reg[8:0]                                debug_hit_counter   = 9'b000000000;
    reg[8:0]                                debug_hit_compare   = 9'b000000001;
    reg[8:0]                                debug_writing_steps = 9'b000000000;
    reg[2:0]                                debug_cycles        = 3'h0;
    reg                                     debug_flag_finished = 1'b0;


    //debug hit counter: counter goes from 0 to 240 
    //debug writing steps: counts how many hits has been given to TDC
    //debug hit compare: compare with counter, giving high to hit
    always @(posedge clk ) begin
        if(rst) begin
            debug_hit_counter   <= 9'h000;
            debug_hit_compare   <= 9'b000000001;
            debug_writing_steps <= 9'b000000000;
        end
        else if(debug_enabler) begin
            if(debug_hit_counter < 9'd`NUM_TAPS) begin
                //counter always working
                debug_hit_counter   <= debug_hit_counter + 9'b000000001;
            end
            else begin      
                //
                // one_counter_cycle function: allows a hit every 2 counter overflows
                debug_hit_counter   <= 9'h00;
                one_counter_cycle   <= ~one_counter_cycle;
                if(enabler && !debug_flag_finished && !one_counter_cycle) begin     
                    if(debug_writing_steps < (9'd`NUM_TAPS - 9'd1)) begin
                        debug_hit_compare   <= debug_hit_compare   + 9'b000000001;
                        debug_writing_steps <= debug_writing_steps + 9'b000000001;        
                    end
                    else begin
                        debug_cycles        <= debug_cycles + 3'd1;
                        debug_writing_steps <= 9'b000000000;
                        debug_hit_compare   <= 9'b000000001;
                    end
                end
            end
        end
         
        if(debug_cycles == 3) begin
            debug_flag_finished <= 1'b1;
        end
    end
    assign  finished    = debug_flag_finished;

    wire debug_hit_aux;
    assign  debug_hit_aux   = (debug_hit_counter < debug_hit_compare)&
                            (!debug_flag_finished)&(enabler)&(debug_enabler)&(one_counter_cycle);

    wire [3:0] carry_out;
    (* DONT_TOUCH = "yes" *)
    CARRY4 carry_debugger
    (   .CO(carry_out),           // 4-bit carry out
        .O(),                  // 4-bit carry chain XOR data out
        .CI(1'b0),                          // 1-bit carry cascade input
        .CYINIT(debug_hit_aux),                   // 1-bit carry initialization
        .DI(4'b0000),                       // 4-bit carry-MUX data in
        .S(4'b1111)                         // 4-bit carry-MUX select input
    );

    assign debug_hit = carry_out[3];
    
endmodule //