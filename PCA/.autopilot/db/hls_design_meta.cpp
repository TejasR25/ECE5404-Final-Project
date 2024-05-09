#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("rows", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("cols", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("input_r_address0", 11, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("input_r_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("input_r_we0", 1, hls_out, 2, "ap_memory", "mem_we", 1),
	Port_Property("input_r_d0", 64, hls_out, 2, "ap_memory", "mem_din", 1),
	Port_Property("input_r_q0", 64, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("input_r_address1", 11, hls_out, 2, "ap_memory", "MemPortADDR2", 1),
	Port_Property("input_r_ce1", 1, hls_out, 2, "ap_memory", "MemPortCE2", 1),
	Port_Property("input_r_we1", 1, hls_out, 2, "ap_memory", "MemPortWE2", 1),
	Port_Property("input_r_d1", 64, hls_out, 2, "ap_memory", "MemPortDIN2", 1),
	Port_Property("input_r_q1", 64, hls_in, 2, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("outputLoadings_0_address0", 4, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("outputLoadings_0_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("outputLoadings_0_we0", 1, hls_out, 3, "ap_memory", "mem_we", 1),
	Port_Property("outputLoadings_0_d0", 64, hls_out, 3, "ap_memory", "mem_din", 1),
	Port_Property("outputLoadings_1_address0", 4, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("outputLoadings_1_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("outputLoadings_1_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("outputLoadings_1_d0", 64, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("outputLoadings_2_address0", 4, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("outputLoadings_2_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("outputLoadings_2_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("outputLoadings_2_d0", 64, hls_out, 5, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "dut";
