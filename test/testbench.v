`timescale 1ns/1ns

module tb_test ();

    reg t_a, t_b, t_c, t_d, t_e;
    wire t_l0, t_l1, t_l2, t_l3;

    test dut (
        .a (t_a), .b (t_b), .c (t_c), .d (t_d), .e (t_e),
        .l0 (t_l0), .l1 (t_l1), .l2 (t_l2), .l3 (t_l3)
    );

    initial begin
        //arranco todo en cero
        t_a = 1'b0; t_b = 1'b0; t_c = 1'b0; t_d = 1'b0; t_e = 1'b0;
        #10 
        //pongo a=1, el resto en cero y voy cambiando de a poco
        t_a = 1'b1; #5; //Prende L0
        t_b = 1'b1; t_c = 1'b1; #5; //Prende L1
        t_d = 1'b1; #5; //Prende L2 
        t_d = 1'b0; #1; t_e = 1'b1; #5; //Blink L2
        t_a = 1'b0; #5; //Prende L3

        $finish;
    end
/*------------------------------END OF TESTBENCH----------------------------------*/

endmodule
