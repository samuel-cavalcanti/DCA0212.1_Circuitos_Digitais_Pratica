onerror {quit -f}
vlib work
vlog -work work processador_programavel.vo
vlog -work work processador_programavel.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.menorq_vlg_vec_tst
vcd file -direction processador_programavel.msim.vcd
vcd add -internal menorq_vlg_vec_tst/*
vcd add -internal menorq_vlg_vec_tst/i1/*
add wave /*
run -all
