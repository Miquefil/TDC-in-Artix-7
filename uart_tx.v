//////////////////////////////////////////////////////////////////////
// File Downloaded from http://www.nandland.com
//////////////////////////////////////////////////////////////////////
// This file contains the UART Transmitter.  This transmitter is able
// to transmit 8 bits of serial data, one start bit, one stop bit,
// and no parity bit.  When transmit is complete o_Tx_done will be
// driven high for one clock cycle.
//
// Set Parameter CLKS_PER_BIT as follows:
// CLKS_PER_BIT = (Frequency of i_Clock)/(Frequency of UART)
// Example: 10 MHz Clock, 115200 baud UART
// (10000000)/(115200) = 87


// STATES : 0 - IDLE        ------> output High until i_Tx_DV pulse comes. Then it loads Byte, and goes to next state
//          1 - START BIT   ------> output Low for a clock. Next state is Tx_DATA_BITS
//          2 - TX DATA     ------> throughputs data, sets Reload on high, next state stop
//          3 - STOP        ------> puts done on high, sets output High, next state is idle
module uart_tx 
    #(parameter NB = 8) (
    input               i_Clock,            //
    input               i_Tx_DV,            //interrupción para mandar
    input [NB-1:0]      i_Tx_Byte,          //data input
    output              o_Tx_Active,        //Busy
    output  reg         o_Tx_Serial,        //Transmisión
    output  wire        o_Tx_Done,           //Terminó de mandar, está en bit stop
    output  reg         o_Tx_Reload
    );

    localparam N_COMBINATIONS = $clog2(NB);
    parameter s_IDLE         = 3'b000;
    parameter s_TX_START_BIT = 3'b001;
    parameter s_TX_DATA_BITS = 3'b010;
    parameter s_TX_STOP_BIT  = 3'b011;
    parameter s_CLEANUP      = 3'b100;


    reg [2:0]       r_SM_Main     = 0; //? State Machine Main State?
    reg [NB-1:0]    r_Bit_Index   = 0; // Index de la cadena que está mandando
    reg [NB-1:0]    r_Tx_Data     = 0; // Data out
    reg             r_Tx_Done     = 0; // Terminó de transmitir
    reg             r_Tx_Active   = 0; //
    

    always @(posedge i_Clock) begin
    
    case (r_SM_Main)
        s_IDLE :
        begin
            o_Tx_Serial   <= 1'b1;         // Drive Line High for Idle
            r_Tx_Done     <= 1'b0;
            r_Bit_Index   <= 0;
            o_Tx_Reload   <= 1'b0;
            
            if (i_Tx_DV == 1'b1)
            begin
                r_Tx_Active <= 1'b1;
                r_Tx_Data   <= i_Tx_Byte;
                r_SM_Main   <= s_TX_START_BIT;
            end
            else
            r_SM_Main <= s_IDLE;
        end // case: s_IDLE
        
        
        // Send out Start Bit. Start bit = 0
        s_TX_START_BIT :
        begin
            o_Tx_Serial <= 1'b0;
            r_SM_Main     <= s_TX_DATA_BITS;
        end // case: s_TX_START_BIT
        
        s_TX_DATA_BITS :
        begin
            o_Tx_Serial <= r_Tx_Data[r_Bit_Index];
            // Check if we have sent out all bits
            if (r_Bit_Index < {N_COMBINATIONS{1'b1}})  begin         //Aca cambié Serie a 64 bits
                    r_Bit_Index <= r_Bit_Index + 1'b1;
                    r_SM_Main   <= s_TX_DATA_BITS;
            end
            else begin
                    r_Bit_Index <= 0;
                    r_SM_Main   <= s_TX_STOP_BIT;
                    o_Tx_Reload <= 1'b1;
            end 
        end // case: s_TX_DATA_BITS
        
        
        // Send out Stop bit.  Stop bit = 1
        s_TX_STOP_BIT :
        begin
            o_Tx_Reload   <= 1'b0;
            o_Tx_Serial   <= 1'b1;
            r_Tx_Done     <= 1'b1;
            r_SM_Main     <= s_IDLE;    //changed s_CLEANUP to s_IDLE
            r_Tx_Active   <= 1'b0;

        end // case: s_Tx_STOP_BIT
        
        
        // Stay here 1 clock
        // s_CLEANUP :
        // begin
        //     r_Tx_Done <= 1'b1;
        //     r_SM_Main <= s_IDLE;
        // end
        
        
        default :
            r_SM_Main <= s_IDLE;
        
        endcase
    end

    assign o_Tx_Active = r_Tx_Active;
    assign o_Tx_Done   = r_Tx_Done;

endmodule//