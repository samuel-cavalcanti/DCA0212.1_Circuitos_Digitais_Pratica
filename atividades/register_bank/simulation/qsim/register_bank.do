onerror {quit -f}
vlib work
vlog -work work register_bank.vo
vlog -work work register_bank.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.register_bank_vlg_vec_tst
vcd file -direction register_bank.msim.vcd
vcd add -internal register_bank_vlg_vec_tst/*
vcd add -internal register_bank_vlg_vec_tst/i1/*
add wave /*
run -all
