#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/yuzou/bnn-fpga-k7/accelerator/solution1/.autopilot/db/a.g.bc ${1+"$@"}
