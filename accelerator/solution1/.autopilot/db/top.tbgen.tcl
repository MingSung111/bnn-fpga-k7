set C_TypeInfoList {{ 
"top" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"wt_i": [[], {"array": ["0", [4682]]}] }, {"kh_i": [[], {"array": ["0", [64]]}] }, {"dmem_i": [[], {"array": ["0", [2048]]}] }, {"dmem_o": [[], {"array": ["0", [128]]}] }, {"n_inputs": [["const"],"1"] }, {"n_outputs": [["const"],"1"] }, {"input_words": [["const"],"1"] }, {"output_words": [["const"],"1"] }, {"layer_mode": [["const"],"2"] }, {"dmem_mode": [["const"],"3"] }, {"width_mode": [["const"],"4"] }, {"norm_mode": [["const"],"4"] }],[],""], 
"0": [ "Word", {"typedef": [[[],"5"],""]}], 
"5": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"1": [ "Address", {"typedef": [[[],"6"],""]}], 
"6": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}], 
"2": [ "ap_uint<3>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 3}}]}],[],""]}], 
"3": [ "ap_uint<1>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 1}}]}],[],""]}], 
"4": [ "ap_uint<2>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 2}}]}],[],""]}]
}}
set moduleName top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ wt_i_V int 64 regular {array 4682 { 1 3 } 1 1 }  }
	{ kh_i_V int 64 regular {array 64 { 1 3 } 1 1 }  }
	{ dmem_i_V int 64 regular {array 2048 { 1 3 } 1 1 }  }
	{ dmem_o_V int 64 regular {array 128 { 0 3 } 0 1 }  }
	{ n_inputs_V int 16 regular  }
	{ n_outputs_V int 16 regular  }
	{ input_words_V int 16 regular  }
	{ output_words_V int 16 regular  }
	{ layer_mode_V int 3 regular  }
	{ dmem_mode_V int 1 regular  }
	{ width_mode_V int 2 regular  }
	{ norm_mode_V int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wt_i_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "wt_i.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 4681,"step" : 1}]}]}]} , 
 	{ "Name" : "kh_i_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "kh_i.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "dmem_i_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dmem_i.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 2047,"step" : 1}]}]}]} , 
 	{ "Name" : "dmem_o_V", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dmem_o.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "n_inputs_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "n_inputs.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "n_outputs_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "n_outputs.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "input_words_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_words.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "output_words_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "output_words.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "layer_mode_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "layer_mode.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dmem_mode_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dmem_mode.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "width_mode_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "width_mode.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "norm_mode_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "norm_mode.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ wt_i_V_address0 sc_out sc_lv 13 signal 0 } 
	{ wt_i_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ wt_i_V_q0 sc_in sc_lv 64 signal 0 } 
	{ kh_i_V_address0 sc_out sc_lv 6 signal 1 } 
	{ kh_i_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ kh_i_V_q0 sc_in sc_lv 64 signal 1 } 
	{ dmem_i_V_address0 sc_out sc_lv 11 signal 2 } 
	{ dmem_i_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ dmem_i_V_q0 sc_in sc_lv 64 signal 2 } 
	{ dmem_o_V_address0 sc_out sc_lv 7 signal 3 } 
	{ dmem_o_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ dmem_o_V_we0 sc_out sc_logic 1 signal 3 } 
	{ dmem_o_V_d0 sc_out sc_lv 64 signal 3 } 
	{ n_inputs_V sc_in sc_lv 16 signal 4 } 
	{ n_outputs_V sc_in sc_lv 16 signal 5 } 
	{ input_words_V sc_in sc_lv 16 signal 6 } 
	{ output_words_V sc_in sc_lv 16 signal 7 } 
	{ layer_mode_V sc_in sc_lv 3 signal 8 } 
	{ dmem_mode_V sc_in sc_lv 1 signal 9 } 
	{ width_mode_V sc_in sc_lv 2 signal 10 } 
	{ norm_mode_V sc_in sc_lv 2 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "wt_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "wt_i_V", "role": "address0" }} , 
 	{ "name": "wt_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_i_V", "role": "ce0" }} , 
 	{ "name": "wt_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wt_i_V", "role": "q0" }} , 
 	{ "name": "kh_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "kh_i_V", "role": "address0" }} , 
 	{ "name": "kh_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kh_i_V", "role": "ce0" }} , 
 	{ "name": "kh_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kh_i_V", "role": "q0" }} , 
 	{ "name": "dmem_i_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "dmem_i_V", "role": "address0" }} , 
 	{ "name": "dmem_i_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_i_V", "role": "ce0" }} , 
 	{ "name": "dmem_i_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_i_V", "role": "q0" }} , 
 	{ "name": "dmem_o_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "dmem_o_V", "role": "address0" }} , 
 	{ "name": "dmem_o_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_o_V", "role": "ce0" }} , 
 	{ "name": "dmem_o_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_o_V", "role": "we0" }} , 
 	{ "name": "dmem_o_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_o_V", "role": "d0" }} , 
 	{ "name": "n_inputs_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "n_inputs_V", "role": "default" }} , 
 	{ "name": "n_outputs_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "n_outputs_V", "role": "default" }} , 
 	{ "name": "input_words_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_words_V", "role": "default" }} , 
 	{ "name": "output_words_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_words_V", "role": "default" }} , 
 	{ "name": "layer_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_mode_V", "role": "default" }} , 
 	{ "name": "dmem_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_mode_V", "role": "default" }} , 
 	{ "name": "width_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width_mode_V", "role": "default" }} , 
 	{ "name": "norm_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "norm_mode_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "113", "125", "127"],
		"CDFG" : "top",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "wt_i_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "kh_i_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "dmem_i_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "dmem_o_V", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "n_inputs_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "n_outputs_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "input_words_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "output_words_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "layer_mode_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "dmem_mode_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "width_mode_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "norm_mode_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "kh_index_V", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "o_index_V", "Type" : "OVld", "Direction" : "IO"},
		{"Name" : "kh_mem_V", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "125", "SubInstance" : "grp_bin_dense_fu_691", "Port" : "kh_mem_V"},
			{"ID" : "113", "SubInstance" : "grp_fp_conv_fu_667", "Port" : "kh_mem_V"}]},
		{"Name" : "wt_mem_V_0", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "125", "SubInstance" : "grp_bin_dense_fu_691", "Port" : "wt_mem_0_V"},
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "wt_mem_0_V"},
			{"ID" : "113", "SubInstance" : "grp_fp_conv_fu_667", "Port" : "wt_mem_0_V"}]},
		{"Name" : "wt_mem_V_1", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "125", "SubInstance" : "grp_bin_dense_fu_691", "Port" : "wt_mem_1_V"},
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "wt_mem_1_V"},
			{"ID" : "113", "SubInstance" : "grp_fp_conv_fu_667", "Port" : "wt_mem_1_V"}]},
		{"Name" : "dmem_V_0_0", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "125", "SubInstance" : "grp_bin_dense_fu_691", "Port" : "dmem_0_0_V"},
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "dmem_0_0_V"},
			{"ID" : "113", "SubInstance" : "grp_fp_conv_fu_667", "Port" : "dmem_0_0_V"}]},
		{"Name" : "dmem_V_0_1", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "125", "SubInstance" : "grp_bin_dense_fu_691", "Port" : "dmem_0_1_V"},
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "dmem_0_1_V"},
			{"ID" : "113", "SubInstance" : "grp_fp_conv_fu_667", "Port" : "dmem_0_1_V"}]},
		{"Name" : "dmem_V_1_0", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "125", "SubInstance" : "grp_bin_dense_fu_691", "Port" : "dmem_1_0_V"},
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "dmem_1_0_V"},
			{"ID" : "113", "SubInstance" : "grp_fp_conv_fu_667", "Port" : "dmem_1_0_V"}]},
		{"Name" : "dmem_V_1_1", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "125", "SubInstance" : "grp_bin_dense_fu_691", "Port" : "dmem_1_1_V"},
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "dmem_1_1_V"},
			{"ID" : "113", "SubInstance" : "grp_fp_conv_fu_667", "Port" : "dmem_1_1_V"}]},
		{"Name" : "wt_addr_V", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "wt_addr_V"}]},
		{"Name" : "wt_offset_V", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "wt_offset_V"}]},
		{"Name" : "outword_V", "Type" : "OVld", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_637", "Port" : "outword_V"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bin_conv_fu_637"},
		{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fp_conv_fu_667"},
		{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bin_dense_fu_691"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kh_mem_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wt_mem_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wt_mem_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_0_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_0_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_1_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_1_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_0_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_1_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_2_V_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_3_V_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_4_V_U", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_5_V_U", "Parent" : "8"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_6_V_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_7_V_U", "Parent" : "8"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_8_V_U", "Parent" : "8"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_9_V_U", "Parent" : "8"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_10_V_U", "Parent" : "8"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_11_V_U", "Parent" : "8"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_12_V_U", "Parent" : "8"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_13_V_U", "Parent" : "8"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_14_V_U", "Parent" : "8"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_15_V_U", "Parent" : "8"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_16_V_U", "Parent" : "8"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_17_V_U", "Parent" : "8"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_18_V_U", "Parent" : "8"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_19_V_U", "Parent" : "8"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_20_V_U", "Parent" : "8"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_21_V_U", "Parent" : "8"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_22_V_U", "Parent" : "8"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_23_V_U", "Parent" : "8"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_24_V_U", "Parent" : "8"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_25_V_U", "Parent" : "8"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_26_V_U", "Parent" : "8"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_27_V_U", "Parent" : "8"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_28_V_U", "Parent" : "8"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_29_V_U", "Parent" : "8"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_30_V_U", "Parent" : "8"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_31_V_U", "Parent" : "8"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_32_V_U", "Parent" : "8"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_33_V_U", "Parent" : "8"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_34_V_U", "Parent" : "8"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_35_V_U", "Parent" : "8"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_36_V_U", "Parent" : "8"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_37_V_U", "Parent" : "8"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_38_V_U", "Parent" : "8"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_39_V_U", "Parent" : "8"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_40_V_U", "Parent" : "8"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_41_V_U", "Parent" : "8"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_42_V_U", "Parent" : "8"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_43_V_U", "Parent" : "8"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_44_V_U", "Parent" : "8"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_45_V_U", "Parent" : "8"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_46_V_U", "Parent" : "8"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_47_V_U", "Parent" : "8"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_48_V_U", "Parent" : "8"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_49_V_U", "Parent" : "8"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_50_V_U", "Parent" : "8"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_51_V_U", "Parent" : "8"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_52_V_U", "Parent" : "8"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_53_V_U", "Parent" : "8"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_54_V_U", "Parent" : "8"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_55_V_U", "Parent" : "8"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_56_V_U", "Parent" : "8"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_57_V_U", "Parent" : "8"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_58_V_U", "Parent" : "8"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_59_V_U", "Parent" : "8"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_60_V_U", "Parent" : "8"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_61_V_U", "Parent" : "8"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_62_V_U", "Parent" : "8"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.fixed_buffer_63_V_U", "Parent" : "8"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mul_10ns_5ns_bek_U15", "Parent" : "8"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U16", "Parent" : "8"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U17", "Parent" : "8"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U18", "Parent" : "8"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U19", "Parent" : "8"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U20", "Parent" : "8"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U21", "Parent" : "8"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U22", "Parent" : "8"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U23", "Parent" : "8"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U24", "Parent" : "8"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U25", "Parent" : "8"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U26", "Parent" : "8"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U27", "Parent" : "8"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U28", "Parent" : "8"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U29", "Parent" : "8"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U30", "Parent" : "8"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U31", "Parent" : "8"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U32", "Parent" : "8"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U33", "Parent" : "8"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U34", "Parent" : "8"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U35", "Parent" : "8"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U36", "Parent" : "8"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U37", "Parent" : "8"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U38", "Parent" : "8"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U39", "Parent" : "8"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U40", "Parent" : "8"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U41", "Parent" : "8"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U42", "Parent" : "8"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U43", "Parent" : "8"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U44", "Parent" : "8"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U45", "Parent" : "8"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U46", "Parent" : "8"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U47", "Parent" : "8"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U48", "Parent" : "8"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U49", "Parent" : "8"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U50", "Parent" : "8"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U51", "Parent" : "8"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U52", "Parent" : "8"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mux_83_2_1_U53", "Parent" : "8"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_637.top_mul_15ns_5ns_bfk_U54", "Parent" : "8"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667", "Parent" : "0", "Child" : ["114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "fp_conv",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "wt_mem_0_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "wt_mem_1_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "kh_mem_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "dmem_0_0_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_0_1_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_1_0_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_1_1_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "d_i_idx_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "d_o_idx_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "kh_index_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "o_index_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "N", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U70", "Parent" : "113"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U71", "Parent" : "113"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U72", "Parent" : "113"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U73", "Parent" : "113"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U74", "Parent" : "113"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U75", "Parent" : "113"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U76", "Parent" : "113"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U77", "Parent" : "113"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_325_20_1_U78", "Parent" : "113"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_164_64_1_U79", "Parent" : "113"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_667.top_mux_164_64_1_U80", "Parent" : "113"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bin_dense_fu_691", "Parent" : "0", "Child" : ["126"],
		"CDFG" : "bin_dense",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "wt_mem_0_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "wt_mem_1_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "kh_mem_V", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "dmem_0_0_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_0_1_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_1_0_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "dmem_1_1_V", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "layer_type_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "d_i_idx_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "d_o_idx_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "o_index_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "n_inputs", "Type" : "None", "Direction" : "I"},
		{"Name" : "n_outputs", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_dense_fu_691.top_mul_mul_20s_1bkb_U1", "Parent" : "125"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_15bgk_U93", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4776", "Max" : "42728"}
	, {"Name" : "Interval", "Min" : "4777", "Max" : "42729"}
]}

set Spec2ImplPortList { 
	wt_i_V { ap_memory {  { wt_i_V_address0 mem_address 1 13 }  { wt_i_V_ce0 mem_ce 1 1 }  { wt_i_V_q0 mem_dout 0 64 } } }
	kh_i_V { ap_memory {  { kh_i_V_address0 mem_address 1 6 }  { kh_i_V_ce0 mem_ce 1 1 }  { kh_i_V_q0 mem_dout 0 64 } } }
	dmem_i_V { ap_memory {  { dmem_i_V_address0 mem_address 1 11 }  { dmem_i_V_ce0 mem_ce 1 1 }  { dmem_i_V_q0 mem_dout 0 64 } } }
	dmem_o_V { ap_memory {  { dmem_o_V_address0 mem_address 1 7 }  { dmem_o_V_ce0 mem_ce 1 1 }  { dmem_o_V_we0 mem_we 1 1 }  { dmem_o_V_d0 mem_din 1 64 } } }
	n_inputs_V { ap_none {  { n_inputs_V in_data 0 16 } } }
	n_outputs_V { ap_none {  { n_outputs_V in_data 0 16 } } }
	input_words_V { ap_none {  { input_words_V in_data 0 16 } } }
	output_words_V { ap_none {  { output_words_V in_data 0 16 } } }
	layer_mode_V { ap_none {  { layer_mode_V in_data 0 3 } } }
	dmem_mode_V { ap_none {  { dmem_mode_V in_data 0 1 } } }
	width_mode_V { ap_none {  { width_mode_V in_data 0 2 } } }
	norm_mode_V { ap_none {  { norm_mode_V in_data 0 2 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
