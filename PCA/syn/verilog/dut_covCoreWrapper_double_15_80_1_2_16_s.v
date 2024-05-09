// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module dut_covCoreWrapper_double_15_80_1_2_16_s (
        rows,
        cols,
        input_r_address0,
        input_r_ce0,
        input_r_d0,
        input_r_q0,
        input_r_we0,
        input_r_address1,
        input_r_ce1,
        input_r_d1,
        input_r_q1,
        input_r_we1,
        outCovMatrix_address0,
        outCovMatrix_ce0,
        outCovMatrix_d0,
        outCovMatrix_q0,
        outCovMatrix_we0,
        outCovMatrix_address1,
        outCovMatrix_ce1,
        outCovMatrix_d1,
        outCovMatrix_q1,
        outCovMatrix_we1,
        ap_clk,
        ap_rst,
        rows_ap_vld,
        cols_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] rows;
input  [31:0] cols;
output  [10:0] input_r_address0;
output   input_r_ce0;
output  [63:0] input_r_d0;
input  [63:0] input_r_q0;
output   input_r_we0;
output  [10:0] input_r_address1;
output   input_r_ce1;
output  [63:0] input_r_d1;
input  [63:0] input_r_q1;
output   input_r_we1;
output  [7:0] outCovMatrix_address0;
output   outCovMatrix_ce0;
output  [63:0] outCovMatrix_d0;
input  [63:0] outCovMatrix_q0;
output   outCovMatrix_we0;
output  [7:0] outCovMatrix_address1;
output   outCovMatrix_ce1;
output  [63:0] outCovMatrix_d1;
input  [63:0] outCovMatrix_q1;
output   outCovMatrix_we1;
input   ap_clk;
input   ap_rst;
input   rows_ap_vld;
input   cols_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    covCorePart1_double_15_80_1_2_16_U0_ap_start;
wire    covCorePart1_double_15_80_1_2_16_U0_ap_done;
wire    covCorePart1_double_15_80_1_2_16_U0_ap_continue;
wire    covCorePart1_double_15_80_1_2_16_U0_ap_idle;
wire    covCorePart1_double_15_80_1_2_16_U0_ap_ready;
wire    covCorePart1_double_15_80_1_2_16_U0_start_out;
wire    covCorePart1_double_15_80_1_2_16_U0_start_write;
wire   [10:0] covCorePart1_double_15_80_1_2_16_U0_input_r_address0;
wire    covCorePart1_double_15_80_1_2_16_U0_input_r_ce0;
wire   [10:0] covCorePart1_double_15_80_1_2_16_U0_input_r_address1;
wire    covCorePart1_double_15_80_1_2_16_U0_input_r_ce1;
wire   [63:0] covCorePart1_double_15_80_1_2_16_U0_values2Strm_0_din;
wire    covCorePart1_double_15_80_1_2_16_U0_values2Strm_0_write;
wire   [63:0] covCorePart1_double_15_80_1_2_16_U0_values2Strm_1_din;
wire    covCorePart1_double_15_80_1_2_16_U0_values2Strm_1_write;
wire   [31:0] covCorePart1_double_15_80_1_2_16_U0_rows_c_din;
wire    covCorePart1_double_15_80_1_2_16_U0_rows_c_write;
wire   [31:0] covCorePart1_double_15_80_1_2_16_U0_cols_c_din;
wire    covCorePart1_double_15_80_1_2_16_U0_cols_c_write;
wire    covCorePart2_double_15_2_16_U0_ap_start;
wire    covCorePart2_double_15_2_16_U0_ap_done;
wire    covCorePart2_double_15_2_16_U0_ap_continue;
wire    covCorePart2_double_15_2_16_U0_ap_idle;
wire    covCorePart2_double_15_2_16_U0_ap_ready;
wire    covCorePart2_double_15_2_16_U0_rows_read;
wire    covCorePart2_double_15_2_16_U0_cols_read;
wire    covCorePart2_double_15_2_16_U0_values2Strm_0_read;
wire    covCorePart2_double_15_2_16_U0_values2Strm_1_read;
wire   [7:0] covCorePart2_double_15_2_16_U0_outCovMatrix_address0;
wire    covCorePart2_double_15_2_16_U0_outCovMatrix_ce0;
wire    covCorePart2_double_15_2_16_U0_outCovMatrix_we0;
wire   [63:0] covCorePart2_double_15_2_16_U0_outCovMatrix_d0;
wire    values2Strm_full_n;
wire   [63:0] values2Strm_dout;
wire   [5:0] values2Strm_num_data_valid;
wire   [5:0] values2Strm_fifo_cap;
wire    values2Strm_empty_n;
wire    values2Strm_1_full_n;
wire   [63:0] values2Strm_1_dout;
wire   [5:0] values2Strm_1_num_data_valid;
wire   [5:0] values2Strm_1_fifo_cap;
wire    values2Strm_1_empty_n;
wire    rows_c_full_n;
wire   [31:0] rows_c_dout;
wire   [2:0] rows_c_num_data_valid;
wire   [2:0] rows_c_fifo_cap;
wire    rows_c_empty_n;
wire    cols_c_full_n;
wire   [31:0] cols_c_dout;
wire   [2:0] cols_c_num_data_valid;
wire   [2:0] cols_c_fifo_cap;
wire    cols_c_empty_n;
wire   [0:0] start_for_covCorePart2_double_15_2_16_U0_din;
wire    start_for_covCorePart2_double_15_2_16_U0_full_n;
wire   [0:0] start_for_covCorePart2_double_15_2_16_U0_dout;
wire    start_for_covCorePart2_double_15_2_16_U0_empty_n;

dut_covCorePart1_double_15_80_1_2_16_s covCorePart1_double_15_80_1_2_16_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(covCorePart1_double_15_80_1_2_16_U0_ap_start),
    .start_full_n(start_for_covCorePart2_double_15_2_16_U0_full_n),
    .ap_done(covCorePart1_double_15_80_1_2_16_U0_ap_done),
    .ap_continue(covCorePart1_double_15_80_1_2_16_U0_ap_continue),
    .ap_idle(covCorePart1_double_15_80_1_2_16_U0_ap_idle),
    .ap_ready(covCorePart1_double_15_80_1_2_16_U0_ap_ready),
    .start_out(covCorePart1_double_15_80_1_2_16_U0_start_out),
    .start_write(covCorePart1_double_15_80_1_2_16_U0_start_write),
    .rows(rows),
    .cols(cols),
    .input_r_address0(covCorePart1_double_15_80_1_2_16_U0_input_r_address0),
    .input_r_ce0(covCorePart1_double_15_80_1_2_16_U0_input_r_ce0),
    .input_r_q0(input_r_q0),
    .input_r_address1(covCorePart1_double_15_80_1_2_16_U0_input_r_address1),
    .input_r_ce1(covCorePart1_double_15_80_1_2_16_U0_input_r_ce1),
    .input_r_q1(input_r_q1),
    .values2Strm_0_din(covCorePart1_double_15_80_1_2_16_U0_values2Strm_0_din),
    .values2Strm_0_num_data_valid(values2Strm_num_data_valid),
    .values2Strm_0_fifo_cap(values2Strm_fifo_cap),
    .values2Strm_0_full_n(values2Strm_full_n),
    .values2Strm_0_write(covCorePart1_double_15_80_1_2_16_U0_values2Strm_0_write),
    .values2Strm_1_din(covCorePart1_double_15_80_1_2_16_U0_values2Strm_1_din),
    .values2Strm_1_num_data_valid(values2Strm_1_num_data_valid),
    .values2Strm_1_fifo_cap(values2Strm_1_fifo_cap),
    .values2Strm_1_full_n(values2Strm_1_full_n),
    .values2Strm_1_write(covCorePart1_double_15_80_1_2_16_U0_values2Strm_1_write),
    .rows_c_din(covCorePart1_double_15_80_1_2_16_U0_rows_c_din),
    .rows_c_num_data_valid(rows_c_num_data_valid),
    .rows_c_fifo_cap(rows_c_fifo_cap),
    .rows_c_full_n(rows_c_full_n),
    .rows_c_write(covCorePart1_double_15_80_1_2_16_U0_rows_c_write),
    .cols_c_din(covCorePart1_double_15_80_1_2_16_U0_cols_c_din),
    .cols_c_num_data_valid(cols_c_num_data_valid),
    .cols_c_fifo_cap(cols_c_fifo_cap),
    .cols_c_full_n(cols_c_full_n),
    .cols_c_write(covCorePart1_double_15_80_1_2_16_U0_cols_c_write)
);

dut_covCorePart2_double_15_2_16_s covCorePart2_double_15_2_16_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(covCorePart2_double_15_2_16_U0_ap_start),
    .ap_done(covCorePart2_double_15_2_16_U0_ap_done),
    .ap_continue(covCorePart2_double_15_2_16_U0_ap_continue),
    .ap_idle(covCorePart2_double_15_2_16_U0_ap_idle),
    .ap_ready(covCorePart2_double_15_2_16_U0_ap_ready),
    .rows_dout(rows_c_dout),
    .rows_num_data_valid(rows_c_num_data_valid),
    .rows_fifo_cap(rows_c_fifo_cap),
    .rows_empty_n(rows_c_empty_n),
    .rows_read(covCorePart2_double_15_2_16_U0_rows_read),
    .cols_dout(cols_c_dout),
    .cols_num_data_valid(cols_c_num_data_valid),
    .cols_fifo_cap(cols_c_fifo_cap),
    .cols_empty_n(cols_c_empty_n),
    .cols_read(covCorePart2_double_15_2_16_U0_cols_read),
    .values2Strm_0_dout(values2Strm_dout),
    .values2Strm_0_num_data_valid(values2Strm_num_data_valid),
    .values2Strm_0_fifo_cap(values2Strm_fifo_cap),
    .values2Strm_0_empty_n(values2Strm_empty_n),
    .values2Strm_0_read(covCorePart2_double_15_2_16_U0_values2Strm_0_read),
    .values2Strm_1_dout(values2Strm_1_dout),
    .values2Strm_1_num_data_valid(values2Strm_1_num_data_valid),
    .values2Strm_1_fifo_cap(values2Strm_1_fifo_cap),
    .values2Strm_1_empty_n(values2Strm_1_empty_n),
    .values2Strm_1_read(covCorePart2_double_15_2_16_U0_values2Strm_1_read),
    .outCovMatrix_address0(covCorePart2_double_15_2_16_U0_outCovMatrix_address0),
    .outCovMatrix_ce0(covCorePart2_double_15_2_16_U0_outCovMatrix_ce0),
    .outCovMatrix_we0(covCorePart2_double_15_2_16_U0_outCovMatrix_we0),
    .outCovMatrix_d0(covCorePart2_double_15_2_16_U0_outCovMatrix_d0)
);

dut_fifo_w64_d32_A values2Strm_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(covCorePart1_double_15_80_1_2_16_U0_values2Strm_0_din),
    .if_full_n(values2Strm_full_n),
    .if_write(covCorePart1_double_15_80_1_2_16_U0_values2Strm_0_write),
    .if_dout(values2Strm_dout),
    .if_num_data_valid(values2Strm_num_data_valid),
    .if_fifo_cap(values2Strm_fifo_cap),
    .if_empty_n(values2Strm_empty_n),
    .if_read(covCorePart2_double_15_2_16_U0_values2Strm_0_read)
);

dut_fifo_w64_d32_A values2Strm_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(covCorePart1_double_15_80_1_2_16_U0_values2Strm_1_din),
    .if_full_n(values2Strm_1_full_n),
    .if_write(covCorePart1_double_15_80_1_2_16_U0_values2Strm_1_write),
    .if_dout(values2Strm_1_dout),
    .if_num_data_valid(values2Strm_1_num_data_valid),
    .if_fifo_cap(values2Strm_1_fifo_cap),
    .if_empty_n(values2Strm_1_empty_n),
    .if_read(covCorePart2_double_15_2_16_U0_values2Strm_1_read)
);

dut_fifo_w32_d2_S rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(covCorePart1_double_15_80_1_2_16_U0_rows_c_din),
    .if_full_n(rows_c_full_n),
    .if_write(covCorePart1_double_15_80_1_2_16_U0_rows_c_write),
    .if_dout(rows_c_dout),
    .if_num_data_valid(rows_c_num_data_valid),
    .if_fifo_cap(rows_c_fifo_cap),
    .if_empty_n(rows_c_empty_n),
    .if_read(covCorePart2_double_15_2_16_U0_rows_read)
);

dut_fifo_w32_d2_S cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(covCorePart1_double_15_80_1_2_16_U0_cols_c_din),
    .if_full_n(cols_c_full_n),
    .if_write(covCorePart1_double_15_80_1_2_16_U0_cols_c_write),
    .if_dout(cols_c_dout),
    .if_num_data_valid(cols_c_num_data_valid),
    .if_fifo_cap(cols_c_fifo_cap),
    .if_empty_n(cols_c_empty_n),
    .if_read(covCorePart2_double_15_2_16_U0_cols_read)
);

dut_start_for_covCorePart2_double_15_2_16_U0 start_for_covCorePart2_double_15_2_16_U0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_covCorePart2_double_15_2_16_U0_din),
    .if_full_n(start_for_covCorePart2_double_15_2_16_U0_full_n),
    .if_write(covCorePart1_double_15_80_1_2_16_U0_start_write),
    .if_dout(start_for_covCorePart2_double_15_2_16_U0_dout),
    .if_empty_n(start_for_covCorePart2_double_15_2_16_U0_empty_n),
    .if_read(covCorePart2_double_15_2_16_U0_ap_ready)
);

assign ap_done = covCorePart2_double_15_2_16_U0_ap_done;

assign ap_idle = (covCorePart2_double_15_2_16_U0_ap_idle & covCorePart1_double_15_80_1_2_16_U0_ap_idle);

assign ap_ready = covCorePart1_double_15_80_1_2_16_U0_ap_ready;

assign covCorePart1_double_15_80_1_2_16_U0_ap_continue = 1'b1;

assign covCorePart1_double_15_80_1_2_16_U0_ap_start = ap_start;

assign covCorePart2_double_15_2_16_U0_ap_continue = ap_continue;

assign covCorePart2_double_15_2_16_U0_ap_start = start_for_covCorePart2_double_15_2_16_U0_empty_n;

assign input_r_address0 = covCorePart1_double_15_80_1_2_16_U0_input_r_address0;

assign input_r_address1 = covCorePart1_double_15_80_1_2_16_U0_input_r_address1;

assign input_r_ce0 = covCorePart1_double_15_80_1_2_16_U0_input_r_ce0;

assign input_r_ce1 = covCorePart1_double_15_80_1_2_16_U0_input_r_ce1;

assign input_r_d0 = 64'd0;

assign input_r_d1 = 64'd0;

assign input_r_we0 = 1'b0;

assign input_r_we1 = 1'b0;

assign outCovMatrix_address0 = covCorePart2_double_15_2_16_U0_outCovMatrix_address0;

assign outCovMatrix_address1 = 8'd0;

assign outCovMatrix_ce0 = covCorePart2_double_15_2_16_U0_outCovMatrix_ce0;

assign outCovMatrix_ce1 = 1'b0;

assign outCovMatrix_d0 = covCorePart2_double_15_2_16_U0_outCovMatrix_d0;

assign outCovMatrix_d1 = 64'd0;

assign outCovMatrix_we0 = covCorePart2_double_15_2_16_U0_outCovMatrix_we0;

assign outCovMatrix_we1 = 1'b0;

assign start_for_covCorePart2_double_15_2_16_U0_din = 1'b1;

endmodule //dut_covCoreWrapper_double_15_80_1_2_16_s
