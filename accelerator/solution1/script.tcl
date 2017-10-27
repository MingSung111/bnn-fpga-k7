############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project accelerator
set_top top
add_files Accel.cpp
add_files -tb AccelPrint.cpp
add_files -tb AccelSchedule.cpp
add_files -tb AccelTest.cpp
add_files -tb Common.cpp
add_files -tb Dense.cpp
add_files -tb Timer.cpp
add_files -tb accel_test_random.cpp
open_solution "solution1"
set_part {xc7k325tffg900-2} -tool vivado
create_clock -period 5 -name default
source "./accelerator/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
