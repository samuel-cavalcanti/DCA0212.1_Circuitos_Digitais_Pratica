transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/pacemaker/pacemaker.vhd}
vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/pacemaker/timer.vhd}

