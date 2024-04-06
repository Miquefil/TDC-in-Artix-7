`timescale 1ns/1ns

module test(
    input   a, b, c, d, e,
    output  l0, l1, l2, l3
    );
//comentario

assign l0 = a;
assign l1 = b&c;
assign l2 = d|e;
assign l3 = e&~a;

endmodule