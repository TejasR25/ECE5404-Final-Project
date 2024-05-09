//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2024 04:35:38
// Design Name: 
// Module Name: pca_score
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module maj_pca_score
#(
    parameter FP_SIZE = 64,
    parameter PC_NUM = 32,
    parameter MAJ_PC_NUM = 10)
    (
 //   input wire clk, reset,
    input wire [FP_SIZE-1:0] maj_eigen_values [0:MAJ_PC_NUM-1],
    input wire [FP_SIZE-1:0] maj_principal_comps [0:MAJ_PC_NUM-1],
    output wire [FP_SIZE-1:0] maj_pc_score
    );
//------------------------------------------------- NO CLOCK AND RESET ----------------------------------------------------
wire [FP_SIZE-1:0] temp [0:PC_NUM-1];
wire [FP_SIZE-1:0] sum_sq;

 assign sum_sq = {FP_SIZE{1'b0}};
genvar i;
generate
    for (i = 0; i < PC_NUM; i = i + 1) begin : SQ_LOOP
        assign temp[i] = maj_principal_comps[i] * maj_principal_comps[i] / maj_eigen_values[i];
        assign sum_sq = sum_sq + temp[i];
    end
endgenerate
//-------------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------- CLOCK AND RESET ----------------------------------------------------
//reg [FP_SIZE-1:0] temp [0:PC_NUM-1];
//reg [FP_SIZE-1:0] sum_sq;

//always @(*) begin
//    if (reset) begin
//        sum_sq <= {FP_SIZE{1'b0}};
//    end else begin
//        sum_sq <= {FP_SIZE{1'b0}};
//        for (int i = 0; i < MAJ_PC_NUM; i = i + 1) begin
//            temp[i] <= maj_principal_comps[i] * maj_principal_comps[i] / maj_eigen_values[i];
//            sum_sq <= sum_sq + temp[i];
//        end
//    end
//end

//----------------------------------------------------------------------------------------------------------------------------
assign maj_pc_score = sum_sq;

endmodule
