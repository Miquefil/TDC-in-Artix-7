module carry4_t(
        input  wire[3:0]     s, di,
        input  wire         ci, cy,
        output wire[3:0]    co, o
        );

    CARRY4 CARRY4_inst (
        .CO(co),         // 4-bit carry out
        .O(o),             // 4-bit carry chain XOR data out
        .CI(ci),         // 1-bit carry cascade input
        .CYINIT(cy),     // 1-bit carry initialization
        .DI(di),         // 4-bit carry-MUX data in
        .S(s)            // 4-bit carry-MUX select input
    );


endmodule