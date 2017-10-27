onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dmem_o -L xil_defaultlib -L xpm -L blk_mem_gen_v8_3_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dmem_o xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dmem_o.udo}

run -all

endsim

quit -force
