transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/processador_programavel/controller/bloco_de_controle.vhd}
vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/processador_programavel/controller/decoder/decodificador.vhd}
vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/processador_programavel/controller/decoder/ALU_decoder/decodificador_ALU.vhd}
vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/processador_programavel/controller/decoder/data_memory_decoder/decodificador_memoria_de_dados.vhd}
vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/processador_programavel/controller/decoder/register_banck_decoder/decodificador_banco.vhd}
vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/processador_programavel/controller/decoder/mux3x1_decoder/decodificador_mux.vhd}
vcom -93 -work work {/home/samuel/Documents/UFRN/CIRCUITOS DIGITAIS/pratica/QuartusProjects/atividades/processador_programavel/controller/state_machine/maquina_de_estados.vhd}

