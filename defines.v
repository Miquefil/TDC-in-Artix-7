// Resulta que Vivado necesita que todos los modulos que usan una macro incluyan el mismo define,
// por lo que almacenamos todo acá y lo incluimos en todos los modulos.
// https://support.xilinx.com/s/question/0D52E00006hpXsFSAU/scope-of-define-in-verilog?language=en_US

`ifndef FLAG
    `define FLAG                1
    `define NUM_TAPS            240
    `define NUM_DECODE          8               //2^(NUM_DECODE) >= NUM_TAPS
    `define COUNTER_DIG         16
    `define DIG_OUT             16+8+8          //CoarseCounter + 2*Decoders
    `define TOLERANCE_COARSE    205             // Phase in PLL is 40°, that is 1/8Tclk of delay, so we expect
                                                // to have 7/8 of NUM_TAPS asserted high
`endif 