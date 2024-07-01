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
// 63   59   55   51   47   43   39   35   31   27   23   19   15   11   7    3         FEE8E880E8808000
//                                                                                      
// Middle Bit:
// 1000 0011 0001 0111 0001 0111 0111 1110 0001 0111 0111 1110 0111 1100 1110 1000 ---> 8317177E177E7CE8
// 63   59   55   51   47   43   39   35   31   27   23   19   15   11   7    3         8117177E177E7EE8
//                                                                                      
// Lowest Bit:
// 0110 1001 1001 0110 1001 0110 0110 1001 1001 0110 0110 1001 0110 1001 1001 0110 ---> 6996966996696996
// 63   59   55   51   47   43   39   35   31   27   23   19   15   11   7    3         6996966996696996
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module LUT_counter(
    input  wire [5:0]  iData,
    output wire [2:0]  oData
);
    wire s1, s2, s3;
    
    (* DONT_TOUCH = "yes" *) LUT6 #(
        .INIT(64'hFEE8E880E8808000)  //most significant bit
            ) LUT_1 (
        .O(s3),            //sum
        .I0(iData[0]), 
        .I1(iData[1]), 
        .I2(iData[2]), 
        .I3(iData[3]), 
        .I4(iData[4]), 
        .I5(iData[5])  // selects double
    );
    (* DONT_TOUCH = "yes" *) LUT6 #(
        .INIT(64'h8117177E177E7EE8)  //middle bit
            ) LUT_2 (
        .O(s2),            //sum
        .I0(iData[0]), 
        .I1(iData[1]), 
        .I2(iData[2]), 
        .I3(iData[3]), 
        .I4(iData[4]), 
        .I5(iData[5])  // selects double
    );
    (* DONT_TOUCH = "yes" *) LUT6 #(
        .INIT(64'h6996966996696996)  //less significant bit
            ) LUT_3 (                       //6996966996696996
        .O(s1),            //sum
        .I0(iData[0]), 
        .I1(iData[1]), 
        .I2(iData[2]), 
        .I3(iData[3]), 
        .I4(iData[4]), 
        .I5(iData[5])  // selects double output
    );

    assign oData[0] = s1;
    assign oData[1] = s2;
    assign oData[2] = s3;

endmodule //