onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AccelSchedule_opt

do {wave.do}

view wave
view structure
view signals

do {AccelSchedule.udo}

run -all

quit -force
