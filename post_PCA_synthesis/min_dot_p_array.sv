//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name: min_dot_p_array
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

module min_dot_p_array #(
    parameter FP_SIZE = 64, PC_NUM = 32, MIN_PC_NUM = 5)
    (
  //  input wire clk, reset,
    input wire [FP_SIZE-1:0] common_vector [0:PC_NUM -1],
    input wire [FP_SIZE-1:0] long_vector [0:MIN_PC_NUM-1][0:PC_NUM -1],
    output wire [FP_SIZE-1:0] out_vector [0:MIN_PC_NUM-1]
    );

    integer i, j;
    reg [FP_SIZE-1:0] temp_out_vector [0:MIN_PC_NUM-1];
//-------------------------------------------- NO CLOKC INSERTED ----------------------------------------------------------
    always @(*) begin
        for (i = 0; i < MIN_PC_NUM; i = i + 1) begin
            temp_out_vector[i] = 0;
            for (j = 0; j < PC_NUM; j = j + 1) begin
                temp_out_vector[i] = temp_out_vector[i] + (common_vector[j] * long_vector[i][j]);
            end
        end
    end

    assign out_vector = temp_out_vector;
//---------------------------------------------------------------------------------------------------------------------------------

//---------------------------------------------- CLOCK INSERTED ----------------------------------------------------------
//    always @(posedge clk) begin
//        if (reset) begin
//            for (i = 0; i < MIN_PC_NUM; i = i + 1) begin
//                temp_out_vector[i] <= 0;
//            end
//        end else begin
//            for (i = 0; i < MIN_PC_NUM; i = i + 1) begin
//                temp_out_vector[i] <= 0;
//                for (j = 0; j < FP_SIZE; j = j + 1) begin
//                    temp_out_vector[i] <= temp_out_vector[i] + (common_vector[j] * long_vector[i][j]);
//                end
//            end
//        end
//    end

//    assign out_vector = temp_out_vector;
//----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

endmodule

