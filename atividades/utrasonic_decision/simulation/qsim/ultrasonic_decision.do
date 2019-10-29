onerror {quit -f}
vlib work
vlog -work work ultrasonic_decision.vo
vlog -work work ultrasonic_decision.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.utrassonic_sensor_vlg_vec_tst
vcd file -direction ultrasonic_decision.msim.vcd
vcd add -internal utrassonic_sensor_vlg_vec_tst/*
vcd add -internal utrassonic_sensor_vlg_vec_tst/i1/*
add wave /*
run -all
