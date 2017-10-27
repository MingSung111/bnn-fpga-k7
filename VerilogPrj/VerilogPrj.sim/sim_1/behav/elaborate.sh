#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto ed3f9205f99940669c8c48e9f42239ae -m64 --debug typical --relax --mt 8 -L blk_mem_gen_v8_3_5 -L xil_defaultlib -L fifo_generator_v13_1_3 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot accelerator_test_behav xil_defaultlib.accelerator_test xil_defaultlib.glbl -log elaborate.log
