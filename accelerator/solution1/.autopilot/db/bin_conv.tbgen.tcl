set moduleName bin_conv
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {bin_conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ wt_mem_0_V int 64 regular {array 2341 { 1 3 } 1 1 }  }
	{ wt_mem_1_V int 64 regular {array 2341 { 1 3 } 1 1 }  }
	{ nc_V int 16 regular  }
	{ dmem_0_0_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ dmem_0_1_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ dmem_1_0_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ dmem_1_1_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ d_i_idx_V int 1 regular  }
	{ d_o_idx_V int 1 regular  }
	{ n_inputs int 16 regular  }
	{ o_index_V int 16 regular  }
	{ new_batch_V int 1 regular  }
	{ width_mode_V int 2 regular  }
	{ norm_mode_V int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wt_mem_0_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wt_mem_1_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "nc_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "dmem_0_0_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dmem_0_1_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dmem_1_0_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dmem_1_1_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "d_i_idx_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_idx_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "n_inputs", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "o_index_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "new_batch_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "width_mode_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "norm_mode_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ wt_mem_0_V_address0 sc_out sc_lv 12 signal 0 } 
	{ wt_mem_0_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ wt_mem_0_V_q0 sc_in sc_lv 64 signal 0 } 
	{ wt_mem_1_V_address0 sc_out sc_lv 12 signal 1 } 
	{ wt_mem_1_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ wt_mem_1_V_q0 sc_in sc_lv 64 signal 1 } 
	{ nc_V sc_in sc_lv 16 signal 2 } 
	{ dmem_0_0_V_address0 sc_out sc_lv 10 signal 3 } 
	{ dmem_0_0_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ dmem_0_0_V_we0 sc_out sc_logic 1 signal 3 } 
	{ dmem_0_0_V_d0 sc_out sc_lv 64 signal 3 } 
	{ dmem_0_0_V_q0 sc_in sc_lv 64 signal 3 } 
	{ dmem_0_1_V_address0 sc_out sc_lv 10 signal 4 } 
	{ dmem_0_1_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ dmem_0_1_V_we0 sc_out sc_logic 1 signal 4 } 
	{ dmem_0_1_V_d0 sc_out sc_lv 64 signal 4 } 
	{ dmem_0_1_V_q0 sc_in sc_lv 64 signal 4 } 
	{ dmem_1_0_V_address0 sc_out sc_lv 10 signal 5 } 
	{ dmem_1_0_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ dmem_1_0_V_we0 sc_out sc_logic 1 signal 5 } 
	{ dmem_1_0_V_d0 sc_out sc_lv 64 signal 5 } 
	{ dmem_1_0_V_q0 sc_in sc_lv 64 signal 5 } 
	{ dmem_1_1_V_address0 sc_out sc_lv 10 signal 6 } 
	{ dmem_1_1_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ dmem_1_1_V_we0 sc_out sc_logic 1 signal 6 } 
	{ dmem_1_1_V_d0 sc_out sc_lv 64 signal 6 } 
	{ dmem_1_1_V_q0 sc_in sc_lv 64 signal 6 } 
	{ d_i_idx_V sc_in sc_lv 1 signal 7 } 
	{ d_o_idx_V sc_in sc_lv 1 signal 8 } 
	{ n_inputs sc_in sc_lv 16 signal 9 } 
	{ o_index_V sc_in sc_lv 16 signal 10 } 
	{ new_batch_V sc_in sc_lv 1 signal 11 } 
	{ width_mode_V sc_in sc_lv 2 signal 12 } 
	{ norm_mode_V sc_in sc_lv 2 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "wt_mem_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "wt_mem_0_V", "role": "address0" }} , 
 	{ "name": "wt_mem_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_mem_0_V", "role": "ce0" }} , 
 	{ "name": "wt_mem_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wt_mem_0_V", "role": "q0" }} , 
 	{ "name": "wt_mem_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "wt_mem_1_V", "role": "address0" }} , 
 	{ "name": "wt_mem_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_mem_1_V", "role": "ce0" }} , 
 	{ "name": "wt_mem_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wt_mem_1_V", "role": "q0" }} , 
 	{ "name": "nc_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "nc_V", "role": "default" }} , 
 	{ "name": "dmem_0_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dmem_0_0_V", "role": "address0" }} , 
 	{ "name": "dmem_0_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_0_0_V", "role": "ce0" }} , 
 	{ "name": "dmem_0_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_0_0_V", "role": "we0" }} , 
 	{ "name": "dmem_0_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_0_0_V", "role": "d0" }} , 
 	{ "name": "dmem_0_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_0_0_V", "role": "q0" }} , 
 	{ "name": "dmem_0_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dmem_0_1_V", "role": "address0" }} , 
 	{ "name": "dmem_0_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_0_1_V", "role": "ce0" }} , 
 	{ "name": "dmem_0_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_0_1_V", "role": "we0" }} , 
 	{ "name": "dmem_0_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_0_1_V", "role": "d0" }} , 
 	{ "name": "dmem_0_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_0_1_V", "role": "q0" }} , 
 	{ "name": "dmem_1_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dmem_1_0_V", "role": "address0" }} , 
 	{ "name": "dmem_1_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_1_0_V", "role": "ce0" }} , 
 	{ "name": "dmem_1_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_1_0_V", "role": "we0" }} , 
 	{ "name": "dmem_1_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_1_0_V", "role": "d0" }} , 
 	{ "name": "dmem_1_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_1_0_V", "role": "q0" }} , 
 	{ "name": "dmem_1_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dmem_1_1_V", "role": "address0" }} , 
 	{ "name": "dmem_1_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_1_1_V", "role": "ce0" }} , 
 	{ "name": "dmem_1_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_1_1_V", "role": "we0" }} , 
 	{ "name": "dmem_1_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_1_1_V", "role": "d0" }} , 
 	{ "name": "dmem_1_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_1_1_V", "role": "q0" }} , 
 	{ "name": "d_i_idx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "d_i_idx_V", "role": "default" }} , 
 	{ "name": "d_o_idx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "d_o_idx_V", "role": "default" }} , 
 	{ "name": "n_inputs", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "n_inputs", "role": "default" }} , 
 	{ "name": "o_index_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "o_index_V", "role": "default" }} , 
 	{ "name": "new_batch_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "new_batch_V", "role": "default" }} , 
 	{ "name": "width_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width_mode_V", "role": "default" }} , 
 	{ "name": "norm_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "norm_mode_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
		"CDFG" : "bin_conv",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "wt_mem_0_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "wt_mem_1_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "nc_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "dmem_0_0_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_0_1_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_1_0_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_1_1_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "d_i_idx_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "d_o_idx_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "n_inputs", "Type" : "None", "Direction" : "I"},
		{"Name" : "o_index_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "new_batch_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "width_mode_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "norm_mode_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "wt_addr_V", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "wt_offset_V", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "outword_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_0_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_2_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_3_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_4_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_5_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_6_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_7_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_8_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_9_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_10_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_11_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_12_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_13_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_14_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_15_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_16_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_17_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_18_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_19_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_20_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_21_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_22_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_23_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_24_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_25_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_26_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_27_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_28_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_29_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_30_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_31_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_32_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_33_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_34_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_35_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_36_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_37_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_38_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_39_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_40_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_41_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_42_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_43_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_44_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_45_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_46_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_47_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_48_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_49_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_50_V_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_51_V_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_52_V_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_53_V_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_54_V_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_55_V_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_56_V_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_57_V_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_58_V_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_59_V_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_60_V_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_61_V_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_62_V_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fixed_buffer_63_V_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mul_10ns_5ns_bek_U15", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U16", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U17", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U18", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U19", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U20", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U21", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U22", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U23", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U24", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U25", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U26", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U27", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U28", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U29", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U30", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U31", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U32", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U33", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U34", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U35", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U36", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U37", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U38", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U39", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U40", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U41", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U42", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U43", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U44", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U45", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U46", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U47", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U48", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U49", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U50", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U51", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U52", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_83_2_1_U53", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mul_15ns_5ns_bfk_U54", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "88", "Max" : "37453"}
	, {"Name" : "Interval", "Min" : "88", "Max" : "37453"}
]}

set Spec2ImplPortList { 
	wt_mem_0_V { ap_memory {  { wt_mem_0_V_address0 mem_address 1 12 }  { wt_mem_0_V_ce0 mem_ce 1 1 }  { wt_mem_0_V_q0 mem_dout 0 64 } } }
	wt_mem_1_V { ap_memory {  { wt_mem_1_V_address0 mem_address 1 12 }  { wt_mem_1_V_ce0 mem_ce 1 1 }  { wt_mem_1_V_q0 mem_dout 0 64 } } }
	nc_V { ap_none {  { nc_V in_data 0 16 } } }
	dmem_0_0_V { ap_memory {  { dmem_0_0_V_address0 mem_address 1 10 }  { dmem_0_0_V_ce0 mem_ce 1 1 }  { dmem_0_0_V_we0 mem_we 1 1 }  { dmem_0_0_V_d0 mem_din 1 64 }  { dmem_0_0_V_q0 mem_dout 0 64 } } }
	dmem_0_1_V { ap_memory {  { dmem_0_1_V_address0 mem_address 1 10 }  { dmem_0_1_V_ce0 mem_ce 1 1 }  { dmem_0_1_V_we0 mem_we 1 1 }  { dmem_0_1_V_d0 mem_din 1 64 }  { dmem_0_1_V_q0 mem_dout 0 64 } } }
	dmem_1_0_V { ap_memory {  { dmem_1_0_V_address0 mem_address 1 10 }  { dmem_1_0_V_ce0 mem_ce 1 1 }  { dmem_1_0_V_we0 mem_we 1 1 }  { dmem_1_0_V_d0 mem_din 1 64 }  { dmem_1_0_V_q0 mem_dout 0 64 } } }
	dmem_1_1_V { ap_memory {  { dmem_1_1_V_address0 mem_address 1 10 }  { dmem_1_1_V_ce0 mem_ce 1 1 }  { dmem_1_1_V_we0 mem_we 1 1 }  { dmem_1_1_V_d0 mem_din 1 64 }  { dmem_1_1_V_q0 mem_dout 0 64 } } }
	d_i_idx_V { ap_none {  { d_i_idx_V in_data 0 1 } } }
	d_o_idx_V { ap_none {  { d_o_idx_V in_data 0 1 } } }
	n_inputs { ap_none {  { n_inputs in_data 0 16 } } }
	o_index_V { ap_none {  { o_index_V in_data 0 16 } } }
	new_batch_V { ap_none {  { new_batch_V in_data 0 1 } } }
	width_mode_V { ap_none {  { width_mode_V in_data 0 2 } } }
	norm_mode_V { ap_none {  { norm_mode_V in_data 0 2 } } }
}
