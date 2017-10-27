onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dmem_o_opt

do {wave.do}

view wave
view structure
view signals

do {dmem_o.udo}

run -all

quit -force
