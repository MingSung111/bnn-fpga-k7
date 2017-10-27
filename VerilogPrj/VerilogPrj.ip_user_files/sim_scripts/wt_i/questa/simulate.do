onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib wt_i_opt

do {wave.do}

view wave
view structure
view signals

do {wt_i.udo}

run -all

quit -force
