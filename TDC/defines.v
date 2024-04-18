// Resulta que Vivado necesita que todos los modulos que usan una macro incluyan el mismo define,
// por lo que almacenamos todo acá y lo incluimos en todos los modulos.
// https://support.xilinx.com/s/question/0D52E00006hpXsFSAU/scope-of-define-in-verilog?language=en_US

`ifndef FLAG
    `define FLAG        1
    `define NUM_TAPS    240
    `define NUM_DECODE  8
    `define COUNTER_DIG 16
    `define DIG_OUT     26
`endif 