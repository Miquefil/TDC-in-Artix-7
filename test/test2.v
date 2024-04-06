module test2(
    input   a, b, c, d, e,
    output  l0, l1, l2, l3
    );
//comentario

assign l0 = a^b;
assign l1 = b&c;
assign l2 = d|l0;
assign l3 = e&~a;

endmodule