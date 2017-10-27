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
ExecStep $xv_path/bin/xsim accelerator_test_behav -key {Behavioral:sim_1:Functional:accelerator_test} -tclbatch accelerator_test.tcl -log simulate.log
