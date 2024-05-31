////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Module Name: 6LUT_counter
// Description: Implement a counter of 6bits using 3 6-LUT in parallel,
//              with 7 series primitives
//
// Author: Miqueas Filsinger
// Date: 
//
// Notes:
// Resource https://docs.amd.com/r/en-US/ug953-vivado-7series-libraries/LUT6
// 
// ----HARDCODING OF LUT TABLES: -------------------------------------------- 
//
// Most Significant Bit:
// 1111 1010 0010 1000 1110 1000 1000 0000 1100 1000 1000 0000 1000 0000 0000 0000 ---> FA28E880C8808000
// 63   59   55   51   47   43   39   35   31   27   23   19   15   11   7    3
//
// Middle Bit:
// 1000 0011 0001 0111 0001 0111 0111 1110 0001 0111 0111 1110 0111 1100 1110 1000 ---> 8317177E177E7CE8
// 63   59   55   51   47   43   39   35   31   27   23   19   15   11   7    3
//
// Lowest Bit:
// 0110 1001 1001 0110 1001 0110 0110 1001 1001 0110 0110 1001 0110 1001 1001 0110 ---> 6996966996696996
// 63   59   55   51   47   43   39   35   31   27   23   19   15   11   7    3
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module 6LUT_counter (# parameter ONES_CANT = 1)(
    input [5:0]  wire iData,
    output[2:0]  wire oData
);
    wire s1, s2, s3;
    
    genvar i;
    for (i = 0 ; i <= ONES_CANT; i = i+1 ) begin
        (* DONT_TOUCH = "yes" *) LUT6 #(.INIT(64'hFA28E880C8808000)  //most significant bit
                ) LUT_1 (
            .O5 (s3),            //sum
            .I0(idata[0]), 
            .I1(idata[1]), 
            .I2(idata[2]), 
            .I3(idata[3]), 
            .I4(idata[4]), 
            .I5(idata[5])  // selects double
        );
        (* DONT_TOUCH = "yes" *) LUT6 #(.INIT(64'h8317177E177E7CE8)  //middle bit
                ) LUT_2 (
            .O5 (s2),            //sum
            .I0(idata[0]), 
            .I1(idata[1]), 
            .I2(idata[2]), 
            .I3(idata[3]), 
            .I4(idata[4]), 
            .I5(idata[5])  // selects double
        );
        (* DONT_TOUCH = "yes" *) LUT6 #(.INIT(64'h6996966996696996)  //less significant bit
                ) LUT_3 (
            .O5 (s1),            //sum
            .I0(idata[0]), 
            .I1(idata[1]), 
            .I2(idata[2]), 
            .I3(idata[3]), 
            .I4(idata[4]), 
            .I5(idata[5])  // selects double output
        );
    end

    assign oData[0] = s1;
    assign oData[1] = s2;
    assign oData[2] = s3;

endmodule //