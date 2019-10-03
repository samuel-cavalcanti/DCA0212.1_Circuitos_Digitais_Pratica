onerror {quit -f}
vlib work
vlog -work work pacemaker.vo
vlog -work work pacemaker.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.pacemaker_controller_vlg_vec_tst
vcd file -direction pacemaker.msim.vcd
vcd add -internal pacemaker_controller_vlg_vec_tst/*
vcd add -internal pacemaker_controller_vlg_vec_tst/i1/*
add wave /*
run -all
