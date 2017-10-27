############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_inline "conv3x3b"
set_directive_inline "encode_bit"
set_directive_inline "process_word"
set_directive_inline "conv_word"
set_directive_pipeline "top/LOOP_DMEM_I"
set_directive_loop_tripcount -min 1 -max 512 "top/LOOP_DMEM_I"
set_directive_pipeline "top/LOOP_DMEM_O"
set_directive_loop_tripcount -min 1 -max 1 "top/LOOP_DMEM_O"
set_directive_pipeline "top/LOOP_WT_I"
set_directive_pipeline "top/LOOP_KH_I"
set_directive_loop_tripcount -min 1 -max 1 "top/LOOP_IMG_BATCH"
set_directive_loop_tripcount -min 1 -max 512 "bin_conv/LOOP_PHASES"
set_directive_pipeline "bin_conv/LOOP_WORDS_IN_PHASE"
set_directive_loop_tripcount -min 17 -max 32 "bin_conv/LOOP_WORDS_IN_PHASE"
set_directive_dependence -variable fixed_buffer -type inter -dependent false "bin_conv/LOOP_WORDS_IN_PHASE"
set_directive_array_partition -type complete -dim 0 "bin_conv/LOOP_WORDS_IN_PHASE" wt_word_buffer
set_directive_loop_tripcount -min 1 -max 1 "bin_conv/LOOP_ACC_PHASES"
set_directive_pipeline "bin_conv/LOOP_ACC_PHASES_I"
set_directive_loop_tripcount -min 1 -max 16 "bin_conv/LOOP_ACC_PHASES_I"
set_directive_pipeline "bin_conv/LOOP_BATCH_NORM"
set_directive_loop_tripcount -min 1 -max 16 "bin_conv/LOOP_BATCH_NORM"
set_directive_loop_tripcount -min 1 -max 32 "fp_conv/LOOP_FP_CONV_O"
set_directive_unroll "fp_conv/LOOP_RESET_LINEBUFFERS"
set_directive_unroll -region "fp_conv/LOOP_RESET_LINEBUFFERS"
set_directive_unroll "fp_conv/LOOP_LOAD_WTS"
set_directive_pipeline "fp_conv/LOOP_CONV_COLS"
set_directive_pipeline "fp_conv/LOOP_OUTPUT"
set_directive_pipeline "bin_dense/LOOP_DENSE_I"
set_directive_loop_tripcount -min 1 -max 64 "bin_dense/LOOP_DENSE_I"
set_directive_loop_tripcount -min 1 -max 1 "bin_dense/LOOP_DENSE_O"
set_directive_array_partition -type complete -dim 1 "top" dmem
set_directive_array_partition -type complete -dim 2 "top" dmem
set_directive_array_partition -type complete -dim 1 "top" wt_mem
set_directive_array_partition -type complete -dim 0 "bin_conv" line_buffer
set_directive_array_partition -type complete -dim 0 "bin_conv" conv_params
set_directive_array_partition -type complete -dim 2 "bin_conv" fixed_buffer
set_directive_array_partition -type complete -dim 0 "bin_conv" fixed_temp
set_directive_array_partition -type complete -dim 0 "bin_conv" word_buffer
set_directive_array_partition -type complete -dim 0 "bin_conv" old_word_buffer
set_directive_array_partition -type complete -dim 0 "bin_conv" lb
set_directive_array_partition -type complete -dim 0 "bin_conv" rb
set_directive_array_partition -type complete -dim 0 "bin_conv" conv_out_buffer
set_directive_array_partition -type complete -dim 0 "fp_conv" win
set_directive_array_partition -type complete -dim 0 "fp_conv" lbuf
set_directive_array_partition -type complete -dim 0 "fp_conv" outwords
set_directive_array_partition -type complete -dim 0 "fp_conv" wtbuf
