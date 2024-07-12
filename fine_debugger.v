//////////////////////////////////////////////////////////////////////
// Module Name: fine_debugger
//              - debugger pulses for TDC
//
// Author: Miqueas Filsinger
// Date: 10-06-2024
//
//////////////////////////////////////////////////////////////////////

module fine_debugger (
    input   wire            clk,
    input   wire            rst,
    input   wire [1:0]      delay_sel,
    input   wire            enabler,            //Hit enabler
    input   wire            debug_enabler,      //Whole module enabler
    output  wire            debug_hit,          //Hit
    output  wire            finished
);


    localparam                      NB_COUNTER          = 5;
    reg [9:0]                       counter_of_hits     = 10'd0;
    reg                             measure_toggle      = 1'b0;
    reg [NB_COUNTER-1:0]            counter             = 5'd0;
    wire                            hit;
    reg                             r_finished          = 1'b0;
    reg                             r_start_counting    = 1'b0;


    always @(posedge clk) begin
        if(rst) begin
            counter             <= 5'd0;
            r_finished          <= 1'b0;
            r_start_counting    <= 1'b1;
        end
        if(debug_enabler) begin
            if(enabler) begin
                r_start_counting            <= 1'b1;
            end 
            if(r_start_counting) begin
                if(counter >= 5'b10000)   begin //if counter exceeds 32 counts
                    counter             <= {NB_COUNTER{1'b0}};              //update counter
                    r_start_counting    <= 1'b0;
                    measure_toggle      <= ~measure_toggle;                 //this makes a whole counting valid for output,
                                                                            //and another whole counting not
                    if(measure_toggle) begin
                        counter_of_hits     <= counter_of_hits + 10'd1;     //update how many hits given
                    end
                end
                else begin
                    counter             <= counter + {{NB_COUNTER-1{1'b0}}, 1'b1};
                end
            end
        end
        if (counter_of_hits == 10'h3FF) begin //1023 measures = h3FF
            r_finished                  <= 1'b1;
        end
    end
    
    assign  hit      = (counter<=5'b10000)&(counter!=5'd0)&(measure_toggle);
    assign  finished = r_finished;
    
    ////////////////////////////---------DELAYS---------------------------------------///////////////////////////////
    /// This first part will implement 4 chains of delays, made out from Buffers.                               /////
    //  The main idea is to select between 4 different options, each chain one has one more buffer than the     /////
    //  chain before (1 buf, 2bufs, 3bufs, 4bufs). Then a decoder made out of MUX7s and a MUX8 is implemented.  /////
    //  Input to chains: Hit    <-- Counter with a fixed quantity of clocks, implemented before                 /////
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // wire w_buffer_chain [3:0][4:0];
    wire [3:0]  out_chain;

    // parameter MAX_BUFFERS = 4;
    // genvar  j;
    // genvar  h;
    // generate
    //     for (h = 0; h<MAX_BUFFERS ; h=h+1) begin: first_delay
    //              (* DONT_TOUCH = "yes" *) OBUF #(
    //                 .DRIVE(12),                     // Specify the output drive strength
    //                 .IOSTANDARD("DEFAULT"),         // Specify the output I/O standard
    //                 .SLEW("FAST")                   // Specify the output slew rate
    //             )
    //             OBUF_delay (
    //                 .O(w_buffer_chain[h][0]), 
    //                 .I(hit)                         //INPUT TO CHAINS
    //             );
    //         for (j=0; j<h; j=j+1) begin: delay_chain
    //              (* DONT_TOUCH = "yes" *) OBUF #(
    //                 .DRIVE(12),                     // Specify the output drive strength
    //                 .IOSTANDARD("DEFAULT"),         // Specify the output I/O standard
    //                 .SLEW("FAST")                   // Specify the output slew rate
    //             )
    //             OBUF_delay_2 (
    //                 .O  (w_buffer_chain[h][j+1]), 
    //                 .I  (w_buffer_chain[h][j])
    //             );
    //         end
    //     end
    // endgenerate
    // assign out_chain[0] = w_buffer_chain[0][0];
    // assign out_chain[1] = w_buffer_chain[1][1];
    // assign out_chain[2] = w_buffer_chain[2][2];
    // assign out_chain[3] = w_buffer_chain[3][3];

    wire o_LUT_delay [3:0];

    (* dont_touch = "TRUE" *) LUT6 #(
        .INIT(64'hAAAAAAAAAAAAAAAA)  // Specify LUT Contents
    ) LUT6_delay_0 (
        .O(o_LUT_delay[0]),   // LUT general output
        .I0(hit), // LUT input
        .I1(1'b0), // LUT input
        .I2(1'b0), // LUT input
        .I3(1'b0), // LUT input
        .I4(1'b0), // LUT input
        .I5(1'b0)  // LUT input
    );
    (* dont_touch = "TRUE" *) LUT6 #(
        .INIT(64'hAAAAAAAAAAAAAAAA)  // Specify LUT Contents
    ) LUT6_delay_1 (
        .O(o_LUT_delay[1]),   // LUT general output
        .I0(o_LUT_delay[0]), // LUT input
        .I1(1'b0), // LUT input
        .I2(1'b0), // LUT input
        .I3(1'b0), // LUT input
        .I4(1'b0), // LUT input
        .I5(1'b0)  // LUT input
    );
    (* dont_touch = "TRUE" *) LUT6 #(
        .INIT(64'hAAAAAAAAAAAAAAAA)  // Specify LUT Contents
    ) LUT6_delay_2 (
        .O(o_LUT_delay[2]),   // LUT general output
        .I0(o_LUT_delay[1]), // LUT input
        .I1(1'b0), // LUT input
        .I2(1'b0), // LUT input
        .I3(1'b0), // LUT input
        .I4(1'b0), // LUT input
        .I5(1'b0)  // LUT input
    );
    (* dont_touch = "TRUE" *) LUT6 #(
        .INIT(64'hAAAAAAAAAAAAAAAA)  // Specify LUT Contents
    ) LUT6_delay_3 (
        .O(o_LUT_delay[3]),   // LUT general output
        .I0(o_LUT_delay[2]), // LUT input
        .I1(1'b0), // LUT input
        .I2(1'b0), // LUT input
        .I3(1'b0), // LUT input
        .I4(1'b0), // LUT input
        .I5(1'b0)  // LUT input
    );
    assign out_chain[0] = o_LUT_delay[0];
    assign out_chain[1] = o_LUT_delay[1];
    assign out_chain[2] = o_LUT_delay[2];
    assign out_chain[3] = o_LUT_delay[3];

    wire[1:0]           mux7_outputs;
   (* dont_touch = "TRUE" *) MUXF7
   MUX7_1 (
        .O      (mux7_outputs[0]),              // Output of MUX to general routing
        .I0     (out_chain[0]),                 // Input (tie to LUT6 O6 pin)
        .I1     (out_chain[1]),                 // Input (tie to LUT6 O6 pin)
        .S      (delay_sel[0])                             //Input select to MUX
    );
    (* dont_touch = "TRUE" *) MUXF7
   MUX7_2 (
        .O      (mux7_outputs[1]),              // Output of MUX to general routing
        .I0     (out_chain[2]),                 // Input (tie to LUT6 O6 pin)
        .I1     (out_chain[3]),                 // Input (tie to LUT6 O6 pin)
        .S      (delay_sel[0])                             //Input select to MUX
    );
    MUXF8 MUXF8_inst (
        .O      (debug_hit),                    //Output of MUX to general routing
        .I0     (mux7_outputs[0]),              // Input (tie to MUXF7 L/LO out)
        .I1     (mux7_outputs[1]),              // Input (tie to MUXF7 L/LO out)
        .S      (delay_sel[1])                  // Input select to MUX
    );

endmodule //