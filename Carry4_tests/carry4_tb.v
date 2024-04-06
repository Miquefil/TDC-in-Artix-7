`timescale 1ps/100fs

module carry4_tb(
        );

    reg [3:0]     s_t, di_t;
    reg           ci_t, cy_t;
    wire[3:0]     co_t, o_t;


    carry4_t my_CARRY4 (
        .co(co_t),         // 4-bit carry out
        .o(o_t),           // 4-bit carry chain XOR data out
        .ci(ci_t),         // 1-bit carry cascade input
        .cy(cy_t),     // 1-bit carry initialization
        .di(di_t),         // 4-bit carry-MUX data in
        .s(s_t)            // 4-bit carry-MUX select input
    );

    initial begin
        ci_t = 1'b0;    //bit de mux de entrada
        s_t  = 4'b0000; //selector de muxes
        di_t = 4'b0101; //entrada de muxes
        cy_t = 1'b1;    //carry de entrada



        #10; 
        s_t = 4'b1111;
        ci_t = 1'b1;

        $finish;
    end

endmodule