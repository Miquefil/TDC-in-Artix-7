//////////////////////////////////////////////////////////////////////
// Module Name: memory_ctrl
// Description: Brief description of the module's functionality
//
// Author: Miqueas Filsinger
// Date: 18-04-2024
//
// Revision History:
// - Date: Description of changes made
// - Date: Description of changes made
//
// Notes:
// - Any additional notes or considerations
//
//////////////////////////////////////////////////////////////////////

module memory_ctrl (
    input wire [31:0]                       data_input;
    input wire [31:0]                       data_output;

);
    wire            m_ALMOSTEMPTY;
    wire            m_ALMOSTFULL;
    wire            m_EMPTY;
    wire            m_FULL;
    wire            m_READCLK;
    wire            m_READEN;
    wire            m_READERROR;
    wire            m_RST;
    wire            m_WRTCLK;
    wire            m_WRCOUNT;      //El puerto es de 13 bits (8000 combinaciones) por si usamos datas de 4bitss
    wire            m_WREN;         //Active high
    wire            m_WRERR;        //Error if its full. Synchronous with WRCLK



    FIFO36E1 #(
        .ALMOST_EMPTY_OFFSET(13'h0080),                         // Sets the almost empty threshold
        .ALMOST_FULL_OFFSET(13'h0080),                          // Sets almost full threshold
        .DATA_WIDTH(36),                                        // Sets data width to 4-72
        .DO_REG(1),                                             // Enable output register (1-0) Must be 1 if EN_SYN = FALSE
        .EN_ECC_READ("FALSE"),                                  // Enable ECC decoder, FALSE, TRUE
        .EN_ECC_WRITE("FALSE"),                                 // Enable ECC encoder, FALSE, TRUE
        .EN_SYN("FALSE"),                                       // Specifies FIFO as Asynchronous (FALSE) or Synchronous (TRUE)
        .FIFO_MODE("FIFO36"),                                   // Sets mode to "FIFO36" or "FIFO36_72"
        .FIRST_WORD_FALL_THROUGH("FALSE"),                      // Sets the FIFO FWFT to FALSE, TRUE
        .INIT(72'h000000000000000000),                          // Initial values on output port
        .SIM_DEVICE("7SERIES"),                                 // Must be set to "7SERIES" for simulation behavior
        .SRVAL(72'h000000000000000000)                          // Set/Reset value for output port
    )
    u_FIFO36E1 (
        // ECC Signals: 1-bit (each) output: Error Correction Circuitry ports
        .DBITERR(),                                             // 1-bit output: Double bit error status
        .ECCPARITY(),                                           // 8-bit output: Generated error correction parity
        .SBITERR(),                                             // 1-bit output: Single bit error status
        // Read Data: 64-bit (each) output: Read output data
        .DO(data_output),                                       // 64-bit output: Data output
        .DOP(),                                                 // 8-bit output: Parity data output
        // Status: 1-bit (each) output: Flags and other FIFO status outputs
        .ALMOSTEMPTY(m_ALMOSTEMPTY),                            // 1-bit output: Almost empty flag
        .ALMOSTFULL(m_ALMOSTFULL),                              // 1-bit output: Almost full flag
        .EMPTY(m_EMPTY),                                        // 1-bit output: Empty flag
        .FULL(m_FULL),                                          // 1-bit output: Full flag
        .RDCOUNT(),                                             // 13-bit output: Read count
        .RDERR(m_READERROR),                                               // 1-bit output: Read error
        .WRCOUNT(m_WRCOUNT),                                             // 13-bit output: Write count
        .WRERR(m_WRERR),                                               // 1-bit output: Write error
        // ECC Signals: 1-bit (each) input: Error Correction Circuitry ports
        .INJECTDBITERR(),                                       // 1-bit input: Inject a double bit error input
        .INJECTSBITERR(),
        // Read Control Signals: 1-bit (each) input: Read clock, enable and reset input signals
        .RDCLK(m_READCLK),                                               // 1-bit input: Read clock
        .RDEN(m_READEN),                                                // 1-bit input: Read enable
        .REGCE(),                                               // 1-bit input: Clock enable
        .RST(m_RST),                                                 // 1-bit input: Reset
        .RSTREG(),                                              // 1-bit input: Output register set/reset
        // Write Control Signals: 1-bit (each) input: Write clock and enable input signals
        .WRCLK(m_WRTCLK),                                               // 1-bit input: Rising edge write clock.
        .WREN(m_WREN),                                                // 1-bit input: Write enable
        // Write Data: 64-bit (each) input: Write input data
        .DI(data_input),                                        // 64-bit input: Data input
        .DIP()                                                  // 8-bit input: Parity input
    );

endmodule //