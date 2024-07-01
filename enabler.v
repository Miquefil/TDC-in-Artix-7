//////////////////////////////////////////////////////////////////////
// Module Name: enabler
//              TDC enabler 
//
// Author: Miqueas Filsinger
// Date: 04-06-2024
//
//////////////////////////////////////////////////////////////////////

module enabler (
    input   wire            clk,
    input   wire            rst,
    input   wire            hit,
    input   wire            processing_ended,
    output  wire            enable
);
    wire    rise;
    wire    fall;
    Edge u_EdgeDetector_enabler(
        .iClk        (clk),
        .iRst        (rst),
        .iHit        (hit),
        .oRise       (rise),
        .oFall       (fall),
        .enable      (1'b1)
    );

    reg         r_enable            = 1'b0;
    assign      enable              = r_enable;
    
    parameter   SM_RESET            = 3'd1;
    parameter   SM_WAITING          = 3'd2;
    parameter   SM_RISED            = 3'd3;
    parameter   SM_FALL             = 3'd4;
    parameter   SM_ENABLE           = 3'd5;
    parameter   SM_LET_HIT_PASS     = 3'd6;
    parameter   SM_WAIT_FOR_FALL    = 3'd7;
    reg[2:0]    SM_CURRENT_STATE    = SM_RESET;

    always @(posedge clk) begin
        //!Important to have this commented in order to avoid SM_RESET when rst, since when measure is done then the whole TDC is resetted,
        //but if its done during a hit, after reseting de states machine we will wrongly detect a hit
        // if(rst) begin
        //     SM_CURRENT_STATE            <= SM_RESET;
        // end

        case (SM_CURRENT_STATE)
            SM_RESET: begin
                r_enable                <= 1'b0;
                if(!rst)    begin
                    SM_CURRENT_STATE    <= SM_WAITING;
                end
            end

            SM_WAITING: begin               //Nor hit pulse has been detected
                r_enable                <= 1'b1;
                if (rise) begin
                    SM_CURRENT_STATE    <= SM_RISED;
                end
            end 

            SM_RISED: begin
                r_enable                <= 1'b1;
                if(fall) begin
                    SM_CURRENT_STATE    <= SM_FALL;
                end
            end 

            SM_FALL: begin
                //Should block until processing_ended
                //Maybe another rise comes before that, so we should wait the whole hit to pass before enabling
                r_enable                <= 1'b0;
                if(rise) begin
                    SM_CURRENT_STATE    <= SM_LET_HIT_PASS;
                end
                else if(processing_ended && !rise) begin
                    SM_CURRENT_STATE    <= SM_WAITING;
                end
            end

            SM_LET_HIT_PASS: begin
                r_enable                <= 1'b0;
                if(fall) begin
                    SM_CURRENT_STATE    <= SM_FALL;
                end
                if(processing_ended) begin
                    SM_CURRENT_STATE    <= SM_WAIT_FOR_FALL;
                end
            end

            SM_WAIT_FOR_FALL:   begin
                if(fall) begin
                    SM_CURRENT_STATE    <= SM_WAITING;
                end
            end

            default: SM_CURRENT_STATE   <= SM_RESET;
        endcase
    end
endmodule //