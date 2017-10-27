set moduleName fp_conv
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fp_conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ wt_mem_0_V int 64 regular {array 2341 { 1 3 } 1 1 }  }
	{ wt_mem_1_V int 64 regular {array 2341 { 1 3 } 1 1 }  }
	{ kh_mem_V int 64 regular {array 64 { 1 3 } 1 1 }  }
	{ dmem_0_0_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ dmem_0_1_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ dmem_1_0_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ dmem_1_1_V int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ d_i_idx_V int 1 regular  }
	{ d_o_idx_V int 1 regular  }
	{ kh_index_V int 1 regular  }
	{ o_index_V int 16 regular  }
	{ N int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wt_mem_0_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "wt_mem_1_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "kh_mem_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dmem_0_0_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dmem_0_1_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dmem_1_0_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "dmem_1_1_V", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "d_i_idx_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_o_idx_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "kh_index_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "o_index_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "N", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
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
	{ kh_mem_V_address0 sc_out sc_lv 6 signal 2 } 
	{ kh_mem_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ kh_mem_V_q0 sc_in sc_lv 64 signal 2 } 
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
	{ kh_index_V sc_in sc_lv 1 signal 9 } 
	{ o_index_V sc_in sc_lv 16 signal 10 } 
	{ N sc_in sc_lv 16 signal 11 } 
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
 	{ "name": "kh_mem_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "kh_mem_V", "role": "address0" }} , 
 	{ "name": "kh_mem_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kh_mem_V", "role": "ce0" }} , 
 	{ "name": "kh_mem_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kh_mem_V", "role": "q0" }} , 
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
 	{ "name": "kh_index_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "kh_index_V", "role": "default" }} , 
 	{ "name": "o_index_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "o_index_V", "role": "default" }} , 
 	{ "name": "N", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "N", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U70", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U71", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U72", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U73", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U74", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U75", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U76", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U77", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_325_20_1_U78", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_164_64_1_U79", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mux_164_64_1_U80", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1117", "Max" : "35713"}
	, {"Name" : "Interval", "Min" : "1117", "Max" : "35713"}
]}

set Spec2ImplPortList { 
	wt_mem_0_V { ap_memory {  { wt_mem_0_V_address0 mem_address 1 12 }  { wt_mem_0_V_ce0 mem_ce 1 1 }  { wt_mem_0_V_q0 mem_dout 0 64 } } }
	wt_mem_1_V { ap_memory {  { wt_mem_1_V_address0 mem_address 1 12 }  { wt_mem_1_V_ce0 mem_ce 1 1 }  { wt_mem_1_V_q0 mem_dout 0 64 } } }
	kh_mem_V { ap_memory {  { kh_mem_V_address0 mem_address 1 6 }  { kh_mem_V_ce0 mem_ce 1 1 }  { kh_mem_V_q0 mem_dout 0 64 } } }
	dmem_0_0_V { ap_memory {  { dmem_0_0_V_address0 mem_address 1 10 }  { dmem_0_0_V_ce0 mem_ce 1 1 }  { dmem_0_0_V_we0 mem_we 1 1 }  { dmem_0_0_V_d0 mem_din 1 64 }  { dmem_0_0_V_q0 mem_dout 0 64 } } }
	dmem_0_1_V { ap_memory {  { dmem_0_1_V_address0 mem_address 1 10 }  { dmem_0_1_V_ce0 mem_ce 1 1 }  { dmem_0_1_V_we0 mem_we 1 1 }  { dmem_0_1_V_d0 mem_din 1 64 }  { dmem_0_1_V_q0 mem_dout 0 64 } } }
	dmem_1_0_V { ap_memory {  { dmem_1_0_V_address0 mem_address 1 10 }  { dmem_1_0_V_ce0 mem_ce 1 1 }  { dmem_1_0_V_we0 mem_we 1 1 }  { dmem_1_0_V_d0 mem_din 1 64 }  { dmem_1_0_V_q0 mem_dout 0 64 } } }
	dmem_1_1_V { ap_memory {  { dmem_1_1_V_address0 mem_address 1 10 }  { dmem_1_1_V_ce0 mem_ce 1 1 }  { dmem_1_1_V_we0 mem_we 1 1 }  { dmem_1_1_V_d0 mem_din 1 64 }  { dmem_1_1_V_q0 mem_dout 0 64 } } }
	d_i_idx_V { ap_none {  { d_i_idx_V in_data 0 1 } } }
	d_o_idx_V { ap_none {  { d_o_idx_V in_data 0 1 } } }
	kh_index_V { ap_none {  { kh_index_V in_data 0 1 } } }
	o_index_V { ap_none {  { o_index_V in_data 0 16 } } }
	N { ap_none {  { N in_data 0 16 } } }
}
