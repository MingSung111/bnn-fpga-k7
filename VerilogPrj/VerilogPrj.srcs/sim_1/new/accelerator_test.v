`timescale 1ns / 1ps

// Control flow and data are the same as used in accel_test_random (provided by bnn-fpga hls C code)

/* variable definition in Accel.h */
`define CONVOLVERS 			2
`define	WORD_SIZE			64
`define	WT_SIZE				9
`define CONV_W_PER_WORD		7
`define CONV1_W_PER_WORD	4
`define KH_PER_WORD			4
`define BYTE_SIZE			8
`define K 					3
`define WT_L				(16 * 4 * 512)
`define C_WT_WORDS 			((`WT_L + `CONV_W_PER_WORD - 1) / `CONV_W_PER_WORD + `CONVOLVERS - 1) / `CONVOLVERS
`define WT_WORDS 			(`C_WT_WORDS * `CONVOLVERS)
`define KH_WORDS 			(`WT_L / 128 * 16 / `WORD_SIZE)

`define DMEM_WORDS			(128 * 32 * 32 / `WORD_SIZE)
`define C_DMEM_WORDS		(`DMEM_WORDS / `CONVOLVERS)
`define DMEM_O_WORDS		(512 * 4 * 4 / `WORD_SIZE)
`define DB_MEM_WORDS		(32 * 32)

`define PIX_PER_PHASE		(2 * 32 * 32)

`define MAX_WIDTH			`WORD_SIZE
`define BANK_WIDTH			8
`define LOG_BANK_WIDTH		3

`define CONV_ROWS			3
`define CONV_COLS			(`BANK_WIDTH + 2)
`define CONV_BANKS			(`WORD_SIZE / `BANK_WIDTH)

`define S 					8

/*Struct AccelInfo*/
`define WT_OFFSET	12:0
`define KH_OFFSET	18:13
`define N_INPUTS 	50:19
`define N_OUTPUTS 	81:51
`define LAYER_MODE 	84:82
`define WIDTH_MODE 	87:85
`define NORM_MODE 	89:88

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
	# 2000000 $finish;
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

wire 		wt_i_V_ce0;
wire[12:0] 	wt_i_V_address0;
reg[63:0] 	wt_i_V_q0;
wire 		kh_i_V_ce0;
wire[5:0] 	kh_i_V_address0;
reg[63:0] 	kh_i_V_q0;
wire 		dmem_i_V_ce0;
wire[10:0] 	dmem_i_V_address0;
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
localparam LOAD_SCHEDULE = 1;
localparam LOAD_WT = 2;
localparam LOAD_KH = 3;
localparam LOAD_DATA = 4;
localparam ACCEL_INVOCATION = 5;
localparam DONE = 6;
localparam RESULTS_READ = 7;
localparam COMPARE = 8;
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
reg[63:0]	dram_wt_i[4681:0];
reg[63:0]	dram_kh_i[63:0];
reg[63:0]	dram_data_in[2047:0];

/* Store correct results computed in software, used for checking correctness of hardware output */
reg[63:0]	dram_conv_ref[63:0];
reg[63:0]	dram_bin_ref[63:0];


initial begin
	$readmemb("/home/yuzou/bnn-fpga-k7/wt.bin", dram_wt_i);
	$readmemb("/home/yuzou/bnn-fpga-k7/kh.bin", dram_kh_i);
	$readmemb("/home/yuzou/bnn-fpga-k7/conv_ref.bin", dram_conv_ref);
	$readmemb("/home/yuzou/bnn-fpga-k7/bin_ref.bin", dram_bin_ref);
	$readmemb("/home/yuzou/bnn-fpga-k7/data_in.bin", dram_data_in);
end

integer n, i, m, r, c;
reg[63:0]	data_rd; // data read from dram
reg[63:0]	data_wr; // data to write to input memory
reg[31:0]	curr;
reg[31:0]	addr_i;
reg[31:0]	off_i;
reg[31:0]	wt_words;
reg[63:0]	w_o[`CONVOLVERS-1:0];
reg[31:0]	kh_addr;

reg 		n_idx;
reg[10:0]	r_idx;
reg[10:0]	c_idx;

reg[6:0]	n_error;

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

	dmem_i_en = 1'b0;
	dmem_i_addr = 0;
	dmem_i_we = 1'b0;
	dmem_i_din = 0;

	case (current_state)
		IDLE: begin
			if (rst) begin
				next_state = IDLE;
				n_error = 0;
			end else if (sched_valid) begin
				next_state = LOAD_SCHEDULE;
				n_idx = 0;
				r_idx = 0;
				c_idx = 0;
				n_error = 0;
			end else
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
				for (n = 0; n < n_output; n = n + 1) begin
					for (i = 0; i < 3 /* the first layer input only has 3 channels, r, g, b */; i = i + 1) begin
						if (off_i == 0)
							data_rd = dram_wt_i[addr_i];
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
				wt_words = (wt_words + `CONVOLVERS - 1) / `CONVOLVERS * `CONVOLVERS;
				data_rd = dram_wt_i[addr_i] >> (off_i * `WT_SIZE);
				for (i = 0; i < `CONVOLVERS; i = i + 1) begin
					w_o[i] = 0;
				end
				for (n = 0; n < (wt_words + `CONVOLVERS - 1) / `CONVOLVERS; n = n + 1) begin
					for (i = 0; i < `CONV_W_PER_WORD * `CONVOLVERS; i = i + 1) begin
						if (off_i == 0)
							data_rd = dram_wt_i[addr_i];
						// for each 3*3 filter, write it to the corresponding partition
						w_o[i % `CONVOLVERS] = w_o[i % `CONVOLVERS] >> `WT_SIZE;
						w_o[i % `CONVOLVERS][`CONV_W_PER_WORD * `WT_SIZE - 1: (`CONV_W_PER_WORD - 1) * `WT_SIZE] = data_rd[`WT_SIZE - 1: 0];
						data_rd = data_rd >> `WT_SIZE;
						off_i = off_i + 1;
						if (off_i == `CONV_W_PER_WORD) begin
							off_i = 0;
							addr_i = addr_i + 1;
						end
					end
					/* write data to input memory */
					for (m = 0; m < `CONVOLVERS; m = m + 1) begin
						wt_i_en = 1'b1;
						wt_i_addr = n * `CONVOLVERS + m;
						wt_i_we = 1'b1;
						wt_i_din = w_o[m];
					end
				end
			/* load n_in*n_out single bit weights into accelerator */
			end else begin
				for (i = 0; i < n_input * n_output / `WORD_SIZE; i = i + 1) begin
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
			if (layer_mode[2: 1] != `LAYER_LAST) begin
				kh_addr = kh_offset / `KH_PER_WORD;
				for (i = 0; i * `KH_PER_WORD < n_output; i = i + 1) begin
					data_wr = dram_kh_i[kh_addr + i];
					/* write data to input memory */
					kh_i_en = 1'b1;
					kh_i_addr = i;
					kh_i_we = 1'b1;
					kh_i_din = data_wr;
				end
			end else begin
				kh_addr = kh_offset / `KH_PER_WORD;
				for (i = 0; i * `KH_PER_WORD < n_output * `CONVOLVERS; i = i + 1) begin
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
		LOAD_DATA: begin
			for (i = 0; i < `DMEM_WORDS; i = i + 1) begin
				data_wr = dram_data_in[i];
				/* write data to input memory */
				dmem_i_en = 1'b1;
				dmem_i_addr = i;
				dmem_i_we = 1'b1;
				dmem_i_din = data_wr;
			end
			next_state = ACCEL_INVOCATION;
		end
		ACCEL_INVOCATION: begin
			/* call accelerator to do computation */
			/* the timing of signals follows the report of c-synth */
			ap_start = 1'b1;
			
			wt_i_addr = wt_i_V_address0;
			wt_i_en = wt_i_V_ce0;
			wt_i_V_q0 = wt_i_dout;

			kh_i_addr = kh_i_V_address0;
			kh_i_en = kh_i_V_ce0;
			kh_i_V_q0 = kh_i_dout;

			dmem_i_addr = dmem_i_V_address0;
			dmem_i_en = dmem_i_V_ce0;
			dmem_i_V_q0 = dmem_i_dout;

			dmem_o_addr = dmem_o_V_address0;
			dmem_o_en = dmem_o_V_ce0;
			dmem_o_we = dmem_o_V_we0;
			dmem_o_din = dmem_o_V_d0;

			n_inputs_V = n_input;
			n_outputs_V = n_output;

			input_words_V = 64;
			output_words_V = 1;

			layer_mode_V = layer_mode;
			dmem_mode_V = 0;
			width_mode_V = width_mode;
			norm_mode_V = norm_mode;

			if (ap_done) begin
				ap_start = 1'b0;
				next_state = DONE;
			end
		end
		DONE: begin
			next_state = RESULTS_READ;
		end
		RESULTS_READ: begin /* compare results read from memory and reference results */
			if (n_idx < 1) begin
				if (r_idx < `S) begin
					if (c_idx < `S) begin
						dmem_o_en = 1'b1;
						dmem_o_addr = (n_idx * `S * `S + r_idx * `S + c_idx) / `WORD_SIZE;
						next_state = COMPARE;
					end
				end
			end else
				next_state = IDLE;
		end
		COMPARE: begin
			if (dmem_o_dout[(n_idx * `S * `S + r_idx * `S + c_idx) % `WORD_SIZE] != dram_bin_ref[(n_idx * `S * `S + r_idx * `S + c_idx) / `WORD_SIZE][(n_idx * `S * `S + r_idx * `S + c_idx) % `WORD_SIZE])
				n_error = n_error + 1;
			c_idx = c_idx + 1;
			if (c_idx == `S) begin
				c_idx = 0;
				r_idx = r_idx + 1;
				if (r_idx == `S) begin
					r_idx = 0;
					n_idx = n_idx + 1;
				end
			end
			next_state = COMPARE;
		end
	endcase
end

initial begin
	sched_wr_en = 1'b0;
	accelInfo_i = 90'h0;
	#55
	sched_wr_en = 1'b1;
	accelInfo_i = {13'h0/*wt_offset*/, 6'h0/*kh_offset*/, 32'h40/*n_inputs*/, 32'h1/*n_outputs*/, 3'h3/*layer_mode*/, 2'h0/*width_mode*/, 2'h1/*norm_mode*/};
	#60
	sched_wr_en = 1'b0;
	accelInfo_i = 90'h0;
end

initial begin
	$monitor("# of error is: %d", n_error);
end

endmodule