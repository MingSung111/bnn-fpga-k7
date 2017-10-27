`timescale 1ns / 1ps

// Control flow and data are the same as used in accel_test_random (provided by bnn-fpga hls C code)

/* width of feature map */
`define S 8

/* each word contrains 7 filters (each 3 * 3) */
`define CONV_W_PER_WORD 7
`define WT_SIZE 9
`define CONVOLVER 2
`define WORD_SIZE 64

`define KH_PER_WORD 4

/*Struct AccelInfo*/
`define WT_OFFSET	0:12
`define KH_OFFSET	13:18
`define N_INPUTS 	19:50
`define N_OUTPUTS 	51:81
`define LAYER_MODE 	82:84
`define WIDTH_MODE 	85:87
`define NORM_MODE 	88:89

`define LAYER_CONV1	0
`define LAYER_CONV 	1
`define LAYER_DENSE	2
`define LAYER_LAST	3

module accelerator_test;

reg rst, clk;
initial begin
	clk = 0;
	rst = 1;
	# 50 rst = 0;
end

always #2.5 clk = ~clk;

reg 		dmem_i_en;
reg 		dmem_i_we;
reg[10:0]	dmem_i_addr;
wire[63:0]	dmem_i_dout;
reg[63:0]	dmem_i_din;

reg 		dmem_o_en;
reg 		dmem_o_we;
reg[6:0]	dmem_o_addr;
wire[63:0]	dmem_o_dout;
reg[63:0]	dmem_o_din;

reg 		kh_i_en;
reg 		kh_i_we;
reg[5:0]	kh_i_addr;
wire[63:0]	kh_i_dout;
reg[63:0]	kh_i_din;

reg 		wt_i_en;
reg 		wt_i_we;
reg[12:0]	wt_i_addr;
wire[63:0]	wt_i_dout;
reg[63:0]	wt_i_din;

reg 		wt_i_V_ce0;
reg[12:0] 	wt_i_V_address0;
reg[63:0] 	wt_i_V_q0;
reg 		kh_i_V_ce0;
reg[5:0] 	kh_i_V_address0;
reg[63:0] 	kh_i_V_q0;
reg 		dmem_i_V_ce0;
reg[10:0] 	dmem_i_V_address0;
reg[63:0] 	dmem_i_V_q0;
wire 		dmem_o_V_ce0;
wire[6:0] 	dmem_o_V_address0;
wire[63:0] 	dmem_o_V_q0;
reg[15:0] 	n_inputs_V;
reg[15:0] 	n_outputs_V;
reg[15:0] 	input_words_V;
reg[15:0] 	output_words_V;
reg[2:0] 	layer_mode_V;
reg 		dmem_mode_V;
reg[1:0] 	width_mode_V;
reg[1:0] 	norm_mode_V;
reg 		ap_start;
wire 		ap_done;
wire 		ap_idle;
wire 		ap_ready;

bnn_accelerator accelerator(
	.wt_i_V_ce0(wt_i_V_ce0),
	.kh_i_V_ce0(kh_i_V_ce0),
	.dmem_i_V_ce0(dmem_i_V_ce0),
	.dmem_o_V_ce0(dmem_o_V_ce0),
	.dmem_o_V_we0(dmem_o_V_we0),
	.ap_clk(clk),
	.ap_rst(rst),
	.ap_start(ap_start),
	.ap_done(ap_done),
	.ap_idle(ap_idle),
	.ap_ready(ap_ready),
	.wt_i_V_address0(wt_i_V_address0),
	.wt_i_V_q0(wt_i_V_q0),
	.kh_i_V_address0(kh_i_V_address0),
	.kh_i_V_q0(kh_i_V_q0),
	.dmem_i_V_address0(dmem_i_V_address0),
	.dmem_i_V_q0(dmem_i_V_q0),
	.dmem_o_V_address0(dmem_o_V_address0),
	.dmem_o_V_d0(dmem_o_V_d0),
	.n_inputs_V(n_inputs_V),
	.n_outputs_V(n_outputs_V),
	.input_words_V(input_words_V),
	.output_words_V(output_words_V),
	.layer_mode_V(layer_mode_V),
	.dmem_mode_V(dmem_mode_V),
	.width_mode_V(width_mode_V),
	.norm_mode_V(norm_mode_V));

dmem_i dmem_input(
	.clka(clk),
	.ena(dmem_i_en),
	.wea(dmem_i_we),
	.addra(dmem_i_addr),
	.dina(dmem_i_din),
	.douta(dmem_i_dout));

dmem_o dmem_output(
	.clka(clk),
	.ena(dmem_o_en),
	.wea(dmem_o_we),
	.addra(dmem_o_addr),
	.dina(dmem_o_din),
	.douta(dmem_o_dout));

kh_i kh_input(
	.clka(clk),
	.ena(kh_i_en),
	.wea(kh_i_we),
	.addra(kh_i_addr),
	.dina(kh_i_din),
	.douta(kh_i_dout));

wt_i wt_input(
	.clka(clk),
	.ena(wt_i_en),
	.wea(wt_i_we),
	.addra(wt_i_addr),
	.dina(wt_i_din),
	.douta(wt_i_dout));

/* vector of accelinfo */
/* In the real implementation, accelinfo comes from PC though PCI-E */
reg[89:0]	accelInfo_i;
reg			sched_wr_en;
reg			sched_rd_en;
wire[89:0]	accelInfo_o;
wire 		sched_full;
wire 		sched_empty;
wire    	sched_valid;
AccelSchedule schedule(
	.clk(clk),
	.srst(rst),
	.din(accelInfo_i),
	.wr_en(sched_wr_en),
	.rd_en(sched_rd_en),
	.dout(accelInfo_o),
	.full(sched_full),
	.empty(sched_empty),
	.valid(sched_valid));

/* Simulate PCI-E, send accelinfo data to scheduler fifo */
/* Each layer may need multiple invocations of the accelerator due to limited on-chip storage of weights */
/* The following assumptions is made :
   1. Only 1 output feature map per invocation
   2. wt_mem_i is large enough to hold the weights for at least 1 output feature map*/
/* These two assumptions come from the code provided by Cornell-Zhang
   However, since we are using KC705 board, which is more capable than ZedBoard which they used, the assumptions can be relaxed in the later optimization*/

/** Control Logic to control the data/weight input/output and invocation of the accelerator**/
reg[5:0] current_state, next_state;
localparam IDLE = 0;
localparam LOAD_DATA_WEIGHT = 1;
localparam ACCEL_INVOCATION = 2;
localparam DONE = 3;
always @ (posedge clk) begin
	if (rst)
		current_state <= IDLE;
	else
		current_state <= next_state;
end

reg[89:0] 	sched_info;
reg[12:0] 	wt_offset;
reg[5:0] 	kh_offset;
reg[31:0] 	n_input;
reg[31:0] 	n_output;
reg[2:0] 	layer_mode;
reg[1:0] 	width_mode;
reg[1:0] 	norm_mode;
/* In the simulation, we are using a register array to simulate DRAM
   In the real implementation, the timing of reading weights from DRAM also needs to be taken care of*/

/* Simulate DRAM to store weights, feature maps are all stored in on-chip memory */
reg[63:0]	dram_wt_i[12:0];
reg[63:0]	dram_kh_i[5:0];

/* Store correct results computed in software, used for checking correctness of hardware output */
reg[63:0]	dram_conv_ref[`S * `S:0];
reg[63:0]	dram_bin_ref[`S * `S:0];

initial begin
	$readmemb("wt.bin", dram_wt_i);
	$readmemb("kh.bin", dram_kh_i);
	$readmemb("bin_ref.bin", dram_bin_ref);
end

genvar n, i, m;
reg[63:0]	data_rd; // data read from dram
reg[63:0]	data_wr; // data to write to input memory
reg[31:0]	curr;
reg[31:0]	addr_i;
reg[31:0]	off_i;
reg[31:0]	wt_words;
reg[63:0]	w_o[CONVOLVER-1:0];
reg[31:0]	kh_addr;

always @ (*) begin
	next_state = current_state;
	sched_rd_en = 1'b0;
	
	wt_i_en = 1'b0;
	wt_i_addr = 0;
	wt_i_we = 1'b0;
	wt_i_din = 0;

	kh_i_en = 1'b0;
	kh_i_addr = 0;
	kh_i_we = 1'b0;
	kh_i_din = 0;

	case (current_state)
		IDLE: begin
			if (rst)
				next_state = IDLE;
			else if (sched_valid)
				next_state = LOAD_SCHEDULE;
			else
				next_state = IDLE;
		end
		LOAD_SCHEDULE: begin
			sched_rd_en = 1'b1;
			sched_info = accelInfo_o;
			/* Parse accelInfo and load corresponding data*/
			wt_offset = sched_info[`WT_OFFSET];
			kh_offset = sched_info[`KH_OFFSET];
			n_input = sched_info[`N_INPUTS];
			n_output = sched_info[`N_OUTPUTS];
			layer_mode = sched_info[`LAYER_MODE];
			width_mode = sched_info[`WIDTH_MODE];
			norm_mode = sched_info[`NORM_MODE];
			/**********************************************/
			next_state = LOAD_DATA;
		end
		LOAD_WT: begin
			/*load weights for 1st conv layer, the weights are arranged linearly
			  within the CONVOLVER banks of the wt_input such that the first bank
			  contrains filters 0, 1, 2, ..., C_WT_WORDS-1, etc.*/
			/* 3 filters are packed in a word */
			if (layer_mode[2: 1] == `LAYER_CONV1) begin
				curr = wt_offset * 3;
				addr_i = curr / `CONV_W_PER_WORD;
				off_i = curr / `CONV_W_PER_WORD;
				data_rd = dram_wt_i[addr_i] >> (off_i * `WT_SIZE);
				data_wr = 64'b0;
				for (n = 0; n < n_output; n = i + 1) begin: outer_loop
					for (m = 0; m < 3 /* the first layer input only has 3 channels, r, g, b */; m = m + 1) begin: inner_loop
						if (off_i == 0)
							data_rd = data_rd[addr_i];
						data_wr = data_wr >> `WT_SIZE;
						data_wr[3 * `WT_SIZE - 1: (3 - 1) * `WT_SIZE] = data_rd[`WT_SIZE - 1: 0];
						data_rd = data_rd >> `WT_SIZE;
						off_i = off_i + 1;

						if (off_i == `CONV_W_PER_WORD) begin
							off_i = 0;
							addr_i = addr_i + 1;
						end
					end
					/* write data to input memory */
					wt_i_en = 1'b1;
					wt_i_addr = n;
					wt_i_we = 1'b1;
					wt_i_din = data_wr;
				end
			/* load weights for the bin conv layer, the weights are arranged within
			   the CONVOLVER banks of the wt_input such that the first bank contains
			   filter 0, CONVOLVER, 2*CONVOLVER, ...*/
			end	else if (layer_mode[2: 1] == `LAYER_CONV) begin
				curr = wt_offset * n_input;
				addr_i = curr / `CONV_W_PER_WORD;
				off_i = curr / `CONV_W_PER_WORD;
				wt_words = (n_input * n_output + `CONV_W_PER_WORD - 1) / `CONV_W_PER_WORD;
				wt_words = (wt_words + `CONV_W_PER_WORD - 1) / `CONVOLVER * `CONVOLVER;
				data_rd = dram_wt_i[addr_i] >> (off_i * `WT_SIZE);
				for (i = 0; i < CONVOLVER; i = i + 1) begin: loop
					w_o[i] = 0;
				end
				for (n = 0; n < (wt_words + CONVOLVER - 1) / CONVOLVER; n = n + 1) begin: outer_loop
					for (i = 0; i < CONV_W_PER_WORD * CONVOLVER; i = i + 1) begin: inner_loop
						if (off_i == 0)
							data_rd = dram_wt_i[addr_i];
						// for each 3*3 filter, write it to the corresponding partition
						w_o[i % CONVOLVER] = w_o[i % CONVOLVER] >> WT_SIZE;
						w_o[i% CONVOLVER][CONV_W_PER_WORD * WT_SIZE - 1: (CONV_W_PER_WORD - 1) * WT_SIZE] = data_rd[WT_SIZE - 1: 0];
						data_rd = data_rd >> WT_SIZE;
						off_i = off_i + 1;
						if (off_i == CONV_W_PER_WORD) begin
							off_i = 0;
							addr_i = addr_i + 1;
						end
					end
					/* write data to input memory */
					for (m = 0; m < CONVOLVER; m = m + 1) begin: loop
						wt_i_en = 1'b1;
						wt_i_addr = n * CONVOLVER + m;
						wt_i_we = 1'b1;
						wt_i_din = w_o[m];
					end
				end
			/* load n_in*n_out single bit weights into accelerator */
			end else begin
				for (i = 0; i < n_input * n_output / `WORD_SIZE; i = i + 1) begin: loop
					data_wr = dram_wt_i[wt_offset * n_input / `WORD_SIZE + i];
					/* write data to input memory */
					wt_i_en = 1'b1;
					wt_i_addr = i;
					wt_i_we = 1'b1;
					wt_i_din = data_wr;
				end
			end
			next_state = LOAD_KH;
		end
		LOAD_KH: begin
			if (layer_mode[2: 1] != LAYER_LAST) begin
				kh_addr = kh_offset / KH_PER_WORD;
				for (i = 0; i * KH_PER_WORD < n_output; i = i + 1) begin: loop
					data_wr = dram_kh_i[kh_addr + i];
					/* write data to input memory */
					kh_i_en = 1'b1;
					kh_i_addr = i;
					kh_i_we = 1'b1;
					kh_i_din = data_wr;
				end
			end else begin
				kh_addr = kh_offset / KH_PER_WORD;
				for (i = 0; i * KH_PER_WORD < n_output * CONVOLVER; i = i + 1) begin: loop
					data_wr = dram_kh_i[kh_addr + i];
					/* write data to input memory */
					kh_i_en = 1'b1;
					kh_i_addr = i;
					kh_i_we = 1'b1;
					kh_i_din = data_wr;
				end
			end
			next_state = LOAD_DATA;
		end
		LOAD_DATA:
		ACCEL_INVOCATION:
		DONE:
		COMPARE:
	endcase
end

endmodule