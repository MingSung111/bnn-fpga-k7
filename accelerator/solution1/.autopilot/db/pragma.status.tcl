lappend pragmaStatus0 {pragma "INLINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "conv3x3b" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus1 {pragma "INLINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "encode_bit" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus2 {pragma "INLINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "process_word" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus3 {pragma "INLINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "conv_word" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus4 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top/LOOP_DMEM_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus5 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top/LOOP_DMEM_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus6 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top/LOOP_DMEM_O" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus7 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top/LOOP_DMEM_O" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus8 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top/LOOP_WT_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus9 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top/LOOP_KH_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus10 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top/LOOP_IMG_BATCH" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus11 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_PHASES" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus12 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_WORDS_IN_PHASE" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus13 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_WORDS_IN_PHASE" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus14 {pragma "DEPENDENCE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_WORDS_IN_PHASE" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "fixed_buffer"}
lappend pragmaStatus15 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_WORDS_IN_PHASE" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "wt_word_buffer"}
lappend pragmaStatus16 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_ACC_PHASES" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus17 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_ACC_PHASES_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus18 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_ACC_PHASES_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus19 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_BATCH_NORM" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus20 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv/LOOP_BATCH_NORM" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus21 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv/LOOP_FP_CONV_O" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus22 {pragma "UNROLL" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv/LOOP_RESET_LINEBUFFERS" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus23 {pragma "UNROLL" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv/LOOP_RESET_LINEBUFFERS" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus24 {pragma "UNROLL" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv/LOOP_LOAD_WTS" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus25 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv/LOOP_CONV_COLS" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus26 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv/LOOP_OUTPUT" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus27 {pragma "PIPELINE" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_dense/LOOP_DENSE_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus28 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_dense/LOOP_DENSE_I" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus29 {pragma "LOOP_TRIPCOUNT" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_dense/LOOP_DENSE_O" found 1 funcFound 1 applied 1 ambiguous 0 reason "null"}
lappend pragmaStatus30 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "dmem"}
lappend pragmaStatus31 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "dmem"}
lappend pragmaStatus32 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "top" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "wt_mem"}
lappend pragmaStatus33 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "line_buffer"}
lappend pragmaStatus34 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "conv_params"}
lappend pragmaStatus35 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "fixed_buffer"}
lappend pragmaStatus36 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "fixed_temp"}
lappend pragmaStatus37 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "word_buffer"}
lappend pragmaStatus38 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "old_word_buffer"}
lappend pragmaStatus39 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "lb"}
lappend pragmaStatus40 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "rb"}
lappend pragmaStatus41 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "bin_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "conv_out_buffer"}
lappend pragmaStatus42 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "win"}
lappend pragmaStatus43 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "lbuf"}
lappend pragmaStatus44 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "outwords"}
lappend pragmaStatus45 {pragma "ARRAY_PARTITION" source "/home/yuzou/bnn-fpga-k7/Accel.cpp" location "fp_conv" found 1 funcFound 1 applied 1 ambiguous 0 reason "null" variable "wtbuf"}
