// Resulta que Vivado necesita que todos los modulos que usan una macro incluyan el mismo define,
// por lo que almacenamos todo acá y lo incluimos en todos los modulos.
// https://support.xilinx.com/s/question/0D52E00006hpXsFSAU/scope-of-define-in-verilog?language=en_US

`ifndef FLAG
    `define FLAG                1
    `define NUM_TAPS            400
    `define HALF_NUM_TAPS       150
    `define NUM_LUT6            50
    `define NUM_DECODE          10               //2^(NUM_DECODE) >= NUM_TAPS
    `define HALF_NUM_DECODE     5
    `define COUNTER_DIG         12
    `define DIG_OUT             32          //CoarseCounter + 2*Decoders
    `define TOLERANCE_COARSE    205             // Phase in PLL is 40°, that is 1/8Tclk of delay, so we expect
                                                // to have 7/8 of NUM_TAPS asserted high
`endif 