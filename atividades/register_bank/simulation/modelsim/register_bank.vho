-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/03/2019 11:10:53"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	register_bank IS
    PORT (
	index : IN std_logic_vector(3 DOWNTO 0);
	input_data : IN std_logic_vector(7 DOWNTO 0);
	write_option : IN std_logic;
	read_option : IN std_logic;
	output_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END register_bank;

-- Design Ports Information
-- output_data[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_data[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_data[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_data[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_data[4]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_data[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_data[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output_data[7]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- read_option	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- index[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- index[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- index[2]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- index[3]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[0]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- write_option	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[6]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input_data[7]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF register_bank IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_index : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_input_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_write_option : std_logic;
SIGNAL ww_read_option : std_logic;
SIGNAL ww_output_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \output_data[0]~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ors|output_vec[0]~2_combout\ : std_logic;
SIGNAL \ors|output_vec[0]~3_combout\ : std_logic;
SIGNAL \ors|output_vec[0]~4_combout\ : std_logic;
SIGNAL \ors|output_vec[1]~8_combout\ : std_logic;
SIGNAL \ors|output_vec[2]~10_combout\ : std_logic;
SIGNAL \ors|output_vec[2]~13_combout\ : std_logic;
SIGNAL \ors|output_vec[3]~15_combout\ : std_logic;
SIGNAL \ors|output_vec[3]~16_combout\ : std_logic;
SIGNAL \ors|output_vec[3]~17_combout\ : std_logic;
SIGNAL \ors|output_vec[4]~21_combout\ : std_logic;
SIGNAL \ors|output_vec[5]~26_combout\ : std_logic;
SIGNAL \ors|output_vec[5]~28_combout\ : std_logic;
SIGNAL \ors|output_vec[6]~30_combout\ : std_logic;
SIGNAL \ors|output_vec[6]~34_combout\ : std_logic;
SIGNAL \ors|output_vec[7]~35_combout\ : std_logic;
SIGNAL \ors|output_vec[7]~37_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|load~combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \output_data[0]~9_combout\ : std_logic;
SIGNAL \output_data[0]~9clkctrl_outclk\ : std_logic;
SIGNAL \read_option~combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|mux_out~0_combout\ : std_logic;
SIGNAL \write_option~combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|load~combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|load~combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~0_combout\ : std_logic;
SIGNAL \ors|output_vec[0]~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|load~combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|q[0]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|load~combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|load~combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~0_combout\ : std_logic;
SIGNAL \ors|output_vec[0]~1_combout\ : std_logic;
SIGNAL \output_data~1_combout\ : std_logic;
SIGNAL \output_data[0]~reg0_regout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|load~combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|mux_out~combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|load~combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|load~combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~1_combout\ : std_logic;
SIGNAL \ors|output_vec[1]~9_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|q[1]~feeder_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|load~combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~1_combout\ : std_logic;
SIGNAL \ors|output_vec[1]~5_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|load~combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~1_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~1_combout\ : std_logic;
SIGNAL \ors|output_vec[1]~6_combout\ : std_logic;
SIGNAL \ors|output_vec[1]~7_combout\ : std_logic;
SIGNAL \output_data~2_combout\ : std_logic;
SIGNAL \output_data[1]~reg0_regout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|load~combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~2_combout\ : std_logic;
SIGNAL \ors|output_vec[2]~14_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~2_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|q[2]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:1:reg|data_out~2_combout\ : std_logic;
SIGNAL \ors|output_vec[2]~11_combout\ : std_logic;
SIGNAL \ors|output_vec[2]~12_combout\ : std_logic;
SIGNAL \output_data~3_combout\ : std_logic;
SIGNAL \output_data[2]~reg0_regout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|load~combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|load~combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~3_combout\ : std_logic;
SIGNAL \ors|output_vec[3]~18_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~3_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|q[3]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~3_combout\ : std_logic;
SIGNAL \ors|output_vec[3]~19_combout\ : std_logic;
SIGNAL \output_data~4_combout\ : std_logic;
SIGNAL \output_data[3]~reg0_regout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~4_combout\ : std_logic;
SIGNAL \ors|output_vec[4]~23_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|load~combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:0:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|q[4]~feeder_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~4_combout\ : std_logic;
SIGNAL \ors|output_vec[4]~22_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:3:reg|data_out~4_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~4_combout\ : std_logic;
SIGNAL \ors|output_vec[4]~20_combout\ : std_logic;
SIGNAL \ors|output_vec[4]~24_combout\ : std_logic;
SIGNAL \output_data~5_combout\ : std_logic;
SIGNAL \output_data[4]~reg0_regout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:0:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|q[5]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~5_combout\ : std_logic;
SIGNAL \ors|output_vec[5]~29_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:2:reg|data_out~5_combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|load~combout\ : std_logic;
SIGNAL \registerI:0:registerJ:0:reg|data_out~5_combout\ : std_logic;
SIGNAL \ors|output_vec[5]~25_combout\ : std_logic;
SIGNAL \ors|output_vec[5]~27_combout\ : std_logic;
SIGNAL \output_data~6_combout\ : std_logic;
SIGNAL \output_data[5]~reg0_regout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|mux_out~0_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:1:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~6_combout\ : std_logic;
SIGNAL \ors|output_vec[6]~33_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|q[6]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~6_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~6_combout\ : std_logic;
SIGNAL \ors|output_vec[6]~31_combout\ : std_logic;
SIGNAL \ors|output_vec[6]~32_combout\ : std_logic;
SIGNAL \output_data~7_combout\ : std_logic;
SIGNAL \output_data[6]~reg0_regout\ : std_logic;
SIGNAL \registerI:3:registerJ:2:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:3:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:3:registerJ:1:reg|data_out~7_combout\ : std_logic;
SIGNAL \ors|output_vec[7]~38_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:3:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:2:registerJ:2:reg|data_out~7_combout\ : std_logic;
SIGNAL \ors|output_vec[7]~39_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:2:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:3:reg|data_out~7_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|q[7]~feeder_combout\ : std_logic;
SIGNAL \registerI:1:registerJ:0:reg|data_out~7_combout\ : std_logic;
SIGNAL \ors|output_vec[7]~36_combout\ : std_logic;
SIGNAL \output_data~8_combout\ : std_logic;
SIGNAL \output_data[7]~reg0_regout\ : std_logic;
SIGNAL \registerI:0:registerJ:1:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:0:registerJ:1:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:0:registerJ:2:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:0:registerJ:2:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:0:registerJ:3:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:0:registerJ:3:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:0:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:0:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:1:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:1:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:2:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:2:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:3:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:1:registerJ:3:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:0:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:0:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:1:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:1:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:2:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:2:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:3:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:2:registerJ:3:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:0:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:0:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:0:registerJ:0:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:0:registerJ:0:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:2:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \index~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:1:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:1:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:3:reg|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:3:reg|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \registerI:3:registerJ:2:reg|data_out\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_index <= index;
ww_input_data <= input_data;
ww_write_option <= write_option;
ww_read_option <= read_option;
output_data <= ww_output_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\output_data[0]~9clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \output_data[0]~9_combout\);

-- Location: LCFF_X36_Y30_N13
\registerI:0:registerJ:2:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(0));

-- Location: LCFF_X36_Y30_N11
\registerI:1:registerJ:0:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(0));

-- Location: LCFF_X34_Y28_N9
\registerI:2:registerJ:0:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(0));

-- Location: LCFF_X34_Y26_N9
\registerI:2:registerJ:1:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(0));

-- Location: LCFF_X35_Y26_N27
\registerI:2:registerJ:2:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(0));

-- Location: LCFF_X37_Y26_N25
\registerI:2:registerJ:3:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(0));

-- Location: LCCOMB_X36_Y30_N16
\ors|output_vec[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[0]~2_combout\ = (\registerI:2:registerJ:1:reg|data_out\(0)) # ((\registerI:2:registerJ:2:reg|data_out\(0)) # ((\registerI:2:registerJ:0:reg|data_out\(0)) # (\registerI:2:registerJ:3:reg|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|data_out\(0),
	datab => \registerI:2:registerJ:2:reg|data_out\(0),
	datac => \registerI:2:registerJ:0:reg|data_out\(0),
	datad => \registerI:2:registerJ:3:reg|data_out\(0),
	combout => \ors|output_vec[0]~2_combout\);

-- Location: LCFF_X36_Y30_N3
\registerI:3:registerJ:0:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(0));

-- Location: LCFF_X34_Y25_N17
\registerI:3:registerJ:1:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(0));

-- Location: LCFF_X35_Y29_N1
\registerI:3:registerJ:2:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(0));

-- Location: LCFF_X36_Y25_N1
\registerI:3:registerJ:3:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(0));

-- Location: LCCOMB_X36_Y30_N4
\ors|output_vec[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[0]~3_combout\ = (\registerI:3:registerJ:2:reg|data_out\(0)) # (\registerI:3:registerJ:3:reg|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:2:reg|data_out\(0),
	datad => \registerI:3:registerJ:3:reg|data_out\(0),
	combout => \ors|output_vec[0]~3_combout\);

-- Location: LCCOMB_X36_Y30_N6
\ors|output_vec[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[0]~4_combout\ = (\ors|output_vec[0]~2_combout\) # ((\ors|output_vec[0]~3_combout\) # ((\registerI:3:registerJ:1:reg|data_out\(0)) # (\registerI:3:registerJ:0:reg|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[0]~2_combout\,
	datab => \ors|output_vec[0]~3_combout\,
	datac => \registerI:3:registerJ:1:reg|data_out\(0),
	datad => \registerI:3:registerJ:0:reg|data_out\(0),
	combout => \ors|output_vec[0]~4_combout\);

-- Location: LCFF_X36_Y27_N19
\registerI:0:registerJ:0:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(1));

-- Location: LCFF_X35_Y28_N29
\registerI:1:registerJ:2:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(1));

-- Location: LCFF_X35_Y28_N9
\registerI:2:registerJ:0:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(1));

-- Location: LCFF_X35_Y28_N11
\registerI:2:registerJ:1:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(1));

-- Location: LCFF_X35_Y28_N5
\registerI:2:registerJ:2:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(1));

-- Location: LCFF_X35_Y28_N7
\registerI:2:registerJ:3:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(1));

-- Location: LCCOMB_X35_Y28_N16
\ors|output_vec[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[1]~8_combout\ = (\registerI:2:registerJ:3:reg|data_out\(1)) # ((\registerI:2:registerJ:0:reg|data_out\(1)) # ((\registerI:2:registerJ:2:reg|data_out\(1)) # (\registerI:2:registerJ:1:reg|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:3:reg|data_out\(1),
	datab => \registerI:2:registerJ:0:reg|data_out\(1),
	datac => \registerI:2:registerJ:2:reg|data_out\(1),
	datad => \registerI:2:registerJ:1:reg|data_out\(1),
	combout => \ors|output_vec[1]~8_combout\);

-- Location: LCFF_X35_Y28_N13
\registerI:3:registerJ:1:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(1));

-- Location: LCFF_X36_Y27_N13
\registerI:0:registerJ:0:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(2));

-- Location: LCFF_X35_Y27_N27
\registerI:0:registerJ:1:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(2));

-- Location: LCFF_X35_Y27_N29
\registerI:0:registerJ:2:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(2));

-- Location: LCFF_X35_Y27_N7
\registerI:0:registerJ:3:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(2));

-- Location: LCCOMB_X35_Y27_N16
\ors|output_vec[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[2]~10_combout\ = (\registerI:0:registerJ:3:reg|data_out\(2)) # ((\registerI:0:registerJ:1:reg|data_out\(2)) # ((\registerI:0:registerJ:0:reg|data_out\(2)) # (\registerI:0:registerJ:2:reg|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:3:reg|data_out\(2),
	datab => \registerI:0:registerJ:1:reg|data_out\(2),
	datac => \registerI:0:registerJ:0:reg|data_out\(2),
	datad => \registerI:0:registerJ:2:reg|data_out\(2),
	combout => \ors|output_vec[2]~10_combout\);

-- Location: LCFF_X37_Y29_N3
\registerI:1:registerJ:3:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(2));

-- Location: LCFF_X36_Y26_N1
\registerI:2:registerJ:0:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(2));

-- Location: LCFF_X36_Y26_N11
\registerI:2:registerJ:1:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(2));

-- Location: LCFF_X36_Y26_N21
\registerI:2:registerJ:2:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(2));

-- Location: LCFF_X37_Y26_N19
\registerI:2:registerJ:3:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(2));

-- Location: LCCOMB_X36_Y26_N6
\ors|output_vec[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[2]~13_combout\ = (\registerI:2:registerJ:1:reg|data_out\(2)) # ((\registerI:2:registerJ:0:reg|data_out\(2)) # ((\registerI:2:registerJ:2:reg|data_out\(2)) # (\registerI:2:registerJ:3:reg|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|data_out\(2),
	datab => \registerI:2:registerJ:0:reg|data_out\(2),
	datac => \registerI:2:registerJ:2:reg|data_out\(2),
	datad => \registerI:2:registerJ:3:reg|data_out\(2),
	combout => \ors|output_vec[2]~13_combout\);

-- Location: LCFF_X35_Y29_N27
\registerI:3:registerJ:2:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(2));

-- Location: LCFF_X37_Y27_N7
\registerI:0:registerJ:0:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(3));

-- Location: LCFF_X34_Y29_N27
\registerI:0:registerJ:1:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(3));

-- Location: LCFF_X36_Y30_N1
\registerI:0:registerJ:2:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(3));

-- Location: LCFF_X34_Y27_N27
\registerI:0:registerJ:3:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(3));

-- Location: LCCOMB_X34_Y27_N20
\ors|output_vec[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[3]~15_combout\ = (\registerI:0:registerJ:1:reg|data_out\(3)) # ((\registerI:0:registerJ:3:reg|data_out\(3)) # ((\registerI:0:registerJ:2:reg|data_out\(3)) # (\registerI:0:registerJ:0:reg|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:1:reg|data_out\(3),
	datab => \registerI:0:registerJ:3:reg|data_out\(3),
	datac => \registerI:0:registerJ:2:reg|data_out\(3),
	datad => \registerI:0:registerJ:0:reg|data_out\(3),
	combout => \ors|output_vec[3]~15_combout\);

-- Location: LCFF_X37_Y25_N7
\registerI:1:registerJ:0:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(3));

-- Location: LCFF_X37_Y27_N17
\registerI:1:registerJ:1:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(3));

-- Location: LCCOMB_X33_Y26_N2
\ors|output_vec[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[3]~16_combout\ = (\registerI:1:registerJ:1:reg|data_out\(3)) # (\registerI:1:registerJ:0:reg|data_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:1:reg|data_out\(3),
	datad => \registerI:1:registerJ:0:reg|data_out\(3),
	combout => \ors|output_vec[3]~16_combout\);

-- Location: LCFF_X37_Y28_N11
\registerI:1:registerJ:2:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(3));

-- Location: LCFF_X37_Y29_N29
\registerI:1:registerJ:3:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(3));

-- Location: LCCOMB_X33_Y26_N12
\ors|output_vec[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[3]~17_combout\ = (\ors|output_vec[3]~15_combout\) # ((\ors|output_vec[3]~16_combout\) # ((\registerI:1:registerJ:3:reg|data_out\(3)) # (\registerI:1:registerJ:2:reg|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[3]~15_combout\,
	datab => \ors|output_vec[3]~16_combout\,
	datac => \registerI:1:registerJ:3:reg|data_out\(3),
	datad => \registerI:1:registerJ:2:reg|data_out\(3),
	combout => \ors|output_vec[3]~17_combout\);

-- Location: LCFF_X33_Y26_N7
\registerI:2:registerJ:2:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(3));

-- Location: LCFF_X35_Y25_N13
\registerI:3:registerJ:0:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(3));

-- Location: LCFF_X36_Y27_N23
\registerI:0:registerJ:0:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(4));

-- Location: LCFF_X37_Y25_N9
\registerI:1:registerJ:0:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(4));

-- Location: LCFF_X37_Y27_N27
\registerI:1:registerJ:1:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(4));

-- Location: LCFF_X37_Y28_N29
\registerI:1:registerJ:2:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(4));

-- Location: LCFF_X37_Y29_N23
\registerI:1:registerJ:3:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(4));

-- Location: LCCOMB_X36_Y24_N6
\ors|output_vec[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[4]~21_combout\ = (\registerI:1:registerJ:3:reg|data_out\(4)) # ((\registerI:1:registerJ:0:reg|data_out\(4)) # ((\registerI:1:registerJ:1:reg|data_out\(4)) # (\registerI:1:registerJ:2:reg|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:3:reg|data_out\(4),
	datab => \registerI:1:registerJ:0:reg|data_out\(4),
	datac => \registerI:1:registerJ:1:reg|data_out\(4),
	datad => \registerI:1:registerJ:2:reg|data_out\(4),
	combout => \ors|output_vec[4]~21_combout\);

-- Location: LCFF_X35_Y26_N5
\registerI:2:registerJ:2:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(4));

-- Location: LCFF_X35_Y29_N7
\registerI:3:registerJ:2:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(4));

-- Location: LCFF_X34_Y27_N9
\registerI:0:registerJ:3:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(5));

-- Location: LCFF_X37_Y25_N3
\registerI:1:registerJ:0:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(5));

-- Location: LCFF_X36_Y29_N25
\registerI:1:registerJ:1:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(5));

-- Location: LCFF_X36_Y29_N27
\registerI:1:registerJ:2:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(5));

-- Location: LCFF_X36_Y29_N13
\registerI:1:registerJ:3:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(5));

-- Location: LCCOMB_X36_Y29_N6
\ors|output_vec[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[5]~26_combout\ = (\registerI:1:registerJ:3:reg|data_out\(5)) # ((\registerI:1:registerJ:2:reg|data_out\(5)) # ((\registerI:1:registerJ:1:reg|data_out\(5)) # (\registerI:1:registerJ:0:reg|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:3:reg|data_out\(5),
	datab => \registerI:1:registerJ:2:reg|data_out\(5),
	datac => \registerI:1:registerJ:1:reg|data_out\(5),
	datad => \registerI:1:registerJ:0:reg|data_out\(5),
	combout => \ors|output_vec[5]~26_combout\);

-- Location: LCFF_X36_Y26_N17
\registerI:2:registerJ:0:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(5));

-- Location: LCFF_X34_Y26_N17
\registerI:2:registerJ:1:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(5));

-- Location: LCFF_X35_Y26_N15
\registerI:2:registerJ:2:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(5));

-- Location: LCFF_X36_Y26_N19
\registerI:2:registerJ:3:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(5));

-- Location: LCCOMB_X36_Y26_N4
\ors|output_vec[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[5]~28_combout\ = (\registerI:2:registerJ:1:reg|data_out\(5)) # ((\registerI:2:registerJ:3:reg|data_out\(5)) # ((\registerI:2:registerJ:0:reg|data_out\(5)) # (\registerI:2:registerJ:2:reg|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|data_out\(5),
	datab => \registerI:2:registerJ:3:reg|data_out\(5),
	datac => \registerI:2:registerJ:0:reg|data_out\(5),
	datad => \registerI:2:registerJ:2:reg|data_out\(5),
	combout => \ors|output_vec[5]~28_combout\);

-- Location: LCFF_X34_Y25_N1
\registerI:3:registerJ:1:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(5));

-- Location: LCFF_X36_Y27_N9
\registerI:0:registerJ:0:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(6));

-- Location: LCFF_X35_Y27_N19
\registerI:0:registerJ:1:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(6));

-- Location: LCFF_X36_Y30_N19
\registerI:0:registerJ:2:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(6));

-- Location: LCFF_X34_Y27_N3
\registerI:0:registerJ:3:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(6));

-- Location: LCCOMB_X36_Y27_N10
\ors|output_vec[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[6]~30_combout\ = (\registerI:0:registerJ:3:reg|data_out\(6)) # ((\registerI:0:registerJ:1:reg|data_out\(6)) # ((\registerI:0:registerJ:0:reg|data_out\(6)) # (\registerI:0:registerJ:2:reg|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:3:reg|data_out\(6),
	datab => \registerI:0:registerJ:1:reg|data_out\(6),
	datac => \registerI:0:registerJ:0:reg|data_out\(6),
	datad => \registerI:0:registerJ:2:reg|data_out\(6),
	combout => \ors|output_vec[6]~30_combout\);

-- Location: LCFF_X37_Y27_N21
\registerI:1:registerJ:1:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(6));

-- Location: LCFF_X34_Y28_N23
\registerI:2:registerJ:0:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(6));

-- Location: LCFF_X35_Y25_N19
\registerI:3:registerJ:0:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(6));

-- Location: LCFF_X34_Y25_N11
\registerI:3:registerJ:1:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(6));

-- Location: LCFF_X35_Y29_N19
\registerI:3:registerJ:2:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(6));

-- Location: LCFF_X36_Y25_N27
\registerI:3:registerJ:3:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(6));

-- Location: LCCOMB_X34_Y25_N28
\ors|output_vec[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[6]~34_combout\ = (\registerI:3:registerJ:1:reg|data_out\(6)) # ((\registerI:3:registerJ:0:reg|data_out\(6)) # ((\registerI:3:registerJ:3:reg|data_out\(6)) # (\registerI:3:registerJ:2:reg|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:1:reg|data_out\(6),
	datab => \registerI:3:registerJ:0:reg|data_out\(6),
	datac => \registerI:3:registerJ:3:reg|data_out\(6),
	datad => \registerI:3:registerJ:2:reg|data_out\(6),
	combout => \ors|output_vec[6]~34_combout\);

-- Location: LCFF_X34_Y29_N13
\registerI:0:registerJ:0:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(7));

-- Location: LCFF_X34_Y29_N7
\registerI:0:registerJ:1:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(7));

-- Location: LCFF_X35_Y30_N23
\registerI:0:registerJ:2:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(7));

-- Location: LCFF_X34_Y27_N13
\registerI:0:registerJ:3:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(7));

-- Location: LCCOMB_X34_Y29_N0
\ors|output_vec[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[7]~35_combout\ = (\registerI:0:registerJ:1:reg|data_out\(7)) # ((\registerI:0:registerJ:0:reg|data_out\(7)) # ((\registerI:0:registerJ:3:reg|data_out\(7)) # (\registerI:0:registerJ:2:reg|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:1:reg|data_out\(7),
	datab => \registerI:0:registerJ:0:reg|data_out\(7),
	datac => \registerI:0:registerJ:3:reg|data_out\(7),
	datad => \registerI:0:registerJ:2:reg|data_out\(7),
	combout => \ors|output_vec[7]~35_combout\);

-- Location: LCFF_X37_Y28_N25
\registerI:1:registerJ:1:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(7));

-- Location: LCFF_X34_Y28_N17
\registerI:2:registerJ:0:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(7));

-- Location: LCFF_X34_Y26_N5
\registerI:2:registerJ:1:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(7));

-- Location: LCCOMB_X34_Y28_N2
\ors|output_vec[7]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[7]~37_combout\ = (\registerI:2:registerJ:1:reg|data_out\(7)) # (\registerI:2:registerJ:0:reg|data_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|data_out\(7),
	datac => \registerI:2:registerJ:0:reg|data_out\(7),
	combout => \ors|output_vec[7]~37_combout\);

-- Location: LCFF_X35_Y25_N29
\registerI:3:registerJ:0:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(7));

-- Location: LCFF_X36_Y27_N7
\registerI:0:registerJ:0:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(0),
	sload => VCC,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(0));

-- Location: LCFF_X35_Y30_N17
\registerI:0:registerJ:2:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(0),
	sload => VCC,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(0));

-- Location: LCCOMB_X36_Y30_N12
\registerI:0:registerJ:2:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~0_combout\ = (\registerI:0:registerJ:2:reg|q\(0) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:2:reg|q\(0),
	datac => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~0_combout\);

-- Location: LCFF_X36_Y30_N21
\registerI:1:registerJ:0:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|q[0]~feeder_combout\,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(0));

-- Location: LCCOMB_X36_Y30_N10
\registerI:1:registerJ:0:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~0_combout\ = (\registerI:1:registerJ:0:reg|q\(0) & \registerI:1:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|q\(0),
	datad => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:1:registerJ:0:reg|data_out~0_combout\);

-- Location: LCFF_X34_Y28_N13
\registerI:2:registerJ:0:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|q[0]~feeder_combout\,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(0));

-- Location: LCCOMB_X34_Y28_N8
\registerI:2:registerJ:0:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~0_combout\ = (\registerI:2:registerJ:0:reg|q\(0) & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:0:reg|q\(0),
	datad => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|data_out~0_combout\);

-- Location: LCFF_X34_Y26_N7
\registerI:2:registerJ:1:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|q[0]~feeder_combout\,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(0));

-- Location: LCCOMB_X34_Y26_N8
\registerI:2:registerJ:1:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~0_combout\ = (\registerI:2:registerJ:1:reg|q\(0) & \registerI:2:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|q\(0),
	datac => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:1:reg|data_out~0_combout\);

-- Location: LCFF_X35_Y26_N7
\registerI:2:registerJ:2:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|q[0]~feeder_combout\,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(0));

-- Location: LCCOMB_X35_Y26_N26
\registerI:2:registerJ:2:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~0_combout\ = (\registerI:2:registerJ:2:reg|q\(0) & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:2:reg|q\(0),
	datac => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|data_out~0_combout\);

-- Location: LCFF_X37_Y26_N21
\registerI:2:registerJ:3:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(0),
	sload => VCC,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(0));

-- Location: LCCOMB_X37_Y26_N24
\registerI:2:registerJ:3:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~0_combout\ = (\registerI:2:registerJ:3:reg|q\(0) & \registerI:2:registerJ:3:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:3:reg|q\(0),
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:3:reg|data_out~0_combout\);

-- Location: LCFF_X35_Y25_N23
\registerI:3:registerJ:0:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(0),
	sload => VCC,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(0));

-- Location: LCCOMB_X36_Y30_N2
\registerI:3:registerJ:0:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~0_combout\ = (\registerI:3:registerJ:0:reg|q\(0) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:0:reg|q\(0),
	datac => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~0_combout\);

-- Location: LCFF_X34_Y25_N9
\registerI:3:registerJ:1:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|q[0]~feeder_combout\,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(0));

-- Location: LCCOMB_X34_Y25_N16
\registerI:3:registerJ:1:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~0_combout\ = (\registerI:3:registerJ:1:reg|q\(0) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:1:reg|q\(0),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~0_combout\);

-- Location: LCFF_X35_Y29_N23
\registerI:3:registerJ:2:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(0),
	sload => VCC,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(0));

-- Location: LCCOMB_X35_Y29_N0
\registerI:3:registerJ:2:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~0_combout\ = (\registerI:3:registerJ:2:reg|q\(0) & \registerI:3:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:2:reg|q\(0),
	datad => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:2:reg|data_out~0_combout\);

-- Location: LCFF_X36_Y25_N31
\registerI:3:registerJ:3:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|q[0]~feeder_combout\,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(0));

-- Location: LCCOMB_X36_Y25_N0
\registerI:3:registerJ:3:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~0_combout\ = (\registerI:3:registerJ:3:reg|q\(0) & !\registerI:3:registerJ:3:reg|mux_out~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:3:reg|q\(0),
	datac => \registerI:3:registerJ:3:reg|mux_out~combout\,
	combout => \registerI:3:registerJ:3:reg|data_out~0_combout\);

-- Location: LCFF_X36_Y27_N25
\registerI:0:registerJ:0:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|q[1]~feeder_combout\,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(1));

-- Location: LCCOMB_X36_Y27_N18
\registerI:0:registerJ:0:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~1_combout\ = (\registerI:0:registerJ:0:reg|q\(1) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:0:registerJ:0:reg|q\(1),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~1_combout\);

-- Location: LCFF_X37_Y27_N25
\registerI:1:registerJ:1:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|q[1]~feeder_combout\,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(1));

-- Location: LCFF_X37_Y28_N9
\registerI:1:registerJ:2:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N28
\registerI:1:registerJ:2:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~1_combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \registerI:1:registerJ:2:reg|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:2:reg|q\(1),
	combout => \registerI:1:registerJ:2:reg|data_out~1_combout\);

-- Location: LCFF_X34_Y28_N15
\registerI:2:registerJ:0:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N8
\registerI:2:registerJ:0:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~1_combout\ = (\registerI:2:registerJ:0:reg|q\(1) & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:0:reg|q\(1),
	datac => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|data_out~1_combout\);

-- Location: LCFF_X34_Y26_N25
\registerI:2:registerJ:1:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N10
\registerI:2:registerJ:1:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~1_combout\ = (\registerI:2:registerJ:1:reg|q\(1) & \registerI:2:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:1:reg|q\(1),
	datad => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:1:reg|data_out~1_combout\);

-- Location: LCFF_X35_Y26_N1
\registerI:2:registerJ:2:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|q[1]~feeder_combout\,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N4
\registerI:2:registerJ:2:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~1_combout\ = (\registerI:2:registerJ:2:reg|q\(1) & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:2:reg|q\(1),
	datac => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|data_out~1_combout\);

-- Location: LCFF_X37_Y26_N23
\registerI:2:registerJ:3:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N6
\registerI:2:registerJ:3:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~1_combout\ = (\registerI:2:registerJ:3:reg|q\(1) & \registerI:2:registerJ:3:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:3:reg|q\(1),
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:3:reg|data_out~1_combout\);

-- Location: LCFF_X35_Y28_N21
\registerI:3:registerJ:1:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|q[1]~feeder_combout\,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N12
\registerI:3:registerJ:1:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~1_combout\ = (\registerI:3:registerJ:1:reg|q\(1) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:1:reg|q\(1),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~1_combout\);

-- Location: LCFF_X36_Y27_N27
\registerI:0:registerJ:0:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(2),
	sload => VCC,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(2));

-- Location: LCCOMB_X36_Y27_N12
\registerI:0:registerJ:0:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~2_combout\ = (\registerI:0:registerJ:0:reg|q\(2) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:0:reg|q\(2),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~2_combout\);

-- Location: LCFF_X35_Y27_N9
\registerI:0:registerJ:1:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|q[2]~feeder_combout\,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(2));

-- Location: LCCOMB_X35_Y27_N26
\registerI:0:registerJ:1:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~2_combout\ = (\registerI:0:registerJ:1:reg|q\(2) & \registerI:0:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:0:registerJ:1:reg|q\(2),
	datad => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:1:reg|data_out~2_combout\);

-- Location: LCFF_X35_Y30_N13
\registerI:0:registerJ:2:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|q[2]~feeder_combout\,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(2));

-- Location: LCCOMB_X35_Y27_N28
\registerI:0:registerJ:2:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~2_combout\ = (\registerI:0:registerJ:2:reg|q\(2) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:2:reg|q\(2),
	datad => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~2_combout\);

-- Location: LCFF_X34_Y27_N19
\registerI:0:registerJ:3:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|q[2]~feeder_combout\,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(2));

-- Location: LCCOMB_X35_Y27_N6
\registerI:0:registerJ:3:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~2_combout\ = (\registerI:0:registerJ:3:reg|q\(2) & \registerI:0:registerJ:3:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:3:reg|q\(2),
	datac => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:3:reg|data_out~2_combout\);

-- Location: LCFF_X37_Y29_N19
\registerI:1:registerJ:3:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|q[2]~feeder_combout\,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(2));

-- Location: LCCOMB_X37_Y29_N2
\registerI:1:registerJ:3:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~2_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:3:reg|q\(2),
	combout => \registerI:1:registerJ:3:reg|data_out~2_combout\);

-- Location: LCFF_X36_Y26_N31
\registerI:2:registerJ:0:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|q[2]~feeder_combout\,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(2));

-- Location: LCCOMB_X36_Y26_N0
\registerI:2:registerJ:0:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~2_combout\ = (\registerI:2:registerJ:0:reg|q\(2) & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:0:reg|q\(2),
	datac => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|data_out~2_combout\);

-- Location: LCFF_X34_Y26_N27
\registerI:2:registerJ:1:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(2),
	sload => VCC,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(2));

-- Location: LCCOMB_X36_Y26_N10
\registerI:2:registerJ:1:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~2_combout\ = (\registerI:2:registerJ:1:reg|q\(2) & \registerI:2:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:1:reg|q\(2),
	datad => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:1:reg|data_out~2_combout\);

-- Location: LCFF_X35_Y26_N19
\registerI:2:registerJ:2:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|q[2]~feeder_combout\,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(2));

-- Location: LCCOMB_X36_Y26_N20
\registerI:2:registerJ:2:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~2_combout\ = (\registerI:2:registerJ:2:reg|q\(2) & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:2:reg|q\(2),
	datad => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|data_out~2_combout\);

-- Location: LCFF_X37_Y26_N1
\registerI:2:registerJ:3:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(2),
	sload => VCC,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(2));

-- Location: LCCOMB_X37_Y26_N18
\registerI:2:registerJ:3:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~2_combout\ = (\registerI:2:registerJ:3:reg|mux_out~0_combout\ & \registerI:2:registerJ:3:reg|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:2:registerJ:3:reg|q\(2),
	combout => \registerI:2:registerJ:3:reg|data_out~2_combout\);

-- Location: LCFF_X35_Y29_N3
\registerI:3:registerJ:2:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(2),
	sload => VCC,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(2));

-- Location: LCCOMB_X35_Y29_N26
\registerI:3:registerJ:2:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~2_combout\ = (\registerI:3:registerJ:2:reg|q\(2) & \registerI:3:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:2:reg|q\(2),
	datad => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:2:reg|data_out~2_combout\);

-- Location: LCFF_X36_Y27_N29
\registerI:0:registerJ:0:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(3),
	sload => VCC,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(3));

-- Location: LCCOMB_X37_Y27_N6
\registerI:0:registerJ:0:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~3_combout\ = (\registerI:0:registerJ:0:reg|q\(3) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:0:reg|q\(3),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~3_combout\);

-- Location: LCFF_X35_Y27_N3
\registerI:0:registerJ:1:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|q[3]~feeder_combout\,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(3));

-- Location: LCCOMB_X34_Y29_N26
\registerI:0:registerJ:1:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~3_combout\ = (\registerI:0:registerJ:1:reg|q\(3) & \registerI:0:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:1:reg|q\(3),
	datac => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:1:reg|data_out~3_combout\);

-- Location: LCFF_X35_Y30_N15
\registerI:0:registerJ:2:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|q[3]~feeder_combout\,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(3));

-- Location: LCCOMB_X36_Y30_N0
\registerI:0:registerJ:2:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~3_combout\ = (\registerI:0:registerJ:2:reg|q\(3) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:2:reg|q\(3),
	datac => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~3_combout\);

-- Location: LCFF_X34_Y27_N29
\registerI:0:registerJ:3:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|q[3]~feeder_combout\,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(3));

-- Location: LCCOMB_X34_Y27_N26
\registerI:0:registerJ:3:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~3_combout\ = (\registerI:0:registerJ:3:reg|q\(3) & \registerI:0:registerJ:3:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:3:reg|q\(3),
	datac => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:3:reg|data_out~3_combout\);

-- Location: LCFF_X37_Y25_N13
\registerI:1:registerJ:0:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|q[3]~feeder_combout\,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(3));

-- Location: LCCOMB_X37_Y25_N6
\registerI:1:registerJ:0:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~3_combout\ = (\registerI:1:registerJ:0:reg|mux_out~0_combout\ & \registerI:1:registerJ:0:reg|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:0:reg|q\(3),
	combout => \registerI:1:registerJ:0:reg|data_out~3_combout\);

-- Location: LCFF_X37_Y27_N29
\registerI:1:registerJ:1:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|q[3]~feeder_combout\,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(3));

-- Location: LCCOMB_X37_Y27_N16
\registerI:1:registerJ:1:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~3_combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \registerI:1:registerJ:1:reg|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:1:reg|q\(3),
	combout => \registerI:1:registerJ:1:reg|data_out~3_combout\);

-- Location: LCFF_X37_Y28_N21
\registerI:1:registerJ:2:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|q[3]~feeder_combout\,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(3));

-- Location: LCCOMB_X37_Y28_N10
\registerI:1:registerJ:2:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~3_combout\ = (\registerI:1:registerJ:2:reg|q\(3) & \registerI:1:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:2:reg|q\(3),
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:1:registerJ:2:reg|data_out~3_combout\);

-- Location: LCFF_X37_Y29_N5
\registerI:1:registerJ:3:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|q[3]~feeder_combout\,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(3));

-- Location: LCCOMB_X37_Y29_N28
\registerI:1:registerJ:3:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~3_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datac => \registerI:1:registerJ:3:reg|q\(3),
	combout => \registerI:1:registerJ:3:reg|data_out~3_combout\);

-- Location: LCFF_X34_Y26_N13
\registerI:2:registerJ:1:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|q[3]~feeder_combout\,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(3));

-- Location: LCFF_X35_Y26_N29
\registerI:2:registerJ:2:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(3),
	sload => VCC,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(3));

-- Location: LCCOMB_X33_Y26_N6
\registerI:2:registerJ:2:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~3_combout\ = (\registerI:2:registerJ:2:reg|q\(3) & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:2:reg|q\(3),
	datac => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|data_out~3_combout\);

-- Location: LCFF_X35_Y25_N21
\registerI:3:registerJ:0:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|q[3]~feeder_combout\,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(3));

-- Location: LCCOMB_X35_Y25_N12
\registerI:3:registerJ:0:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~3_combout\ = (\registerI:3:registerJ:0:reg|q\(3) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:0:reg|q\(3),
	datad => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~3_combout\);

-- Location: LCFF_X36_Y27_N15
\registerI:0:registerJ:0:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(4),
	sload => VCC,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(4));

-- Location: LCCOMB_X36_Y27_N22
\registerI:0:registerJ:0:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~4_combout\ = (\registerI:0:registerJ:0:reg|q\(4) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:0:registerJ:0:reg|q\(4),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~4_combout\);

-- Location: LCFF_X35_Y27_N5
\registerI:0:registerJ:1:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|q[4]~feeder_combout\,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(4));

-- Location: LCFF_X34_Y27_N7
\registerI:0:registerJ:3:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|q[4]~feeder_combout\,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(4));

-- Location: LCFF_X37_Y25_N31
\registerI:1:registerJ:0:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|q[4]~feeder_combout\,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(4));

-- Location: LCCOMB_X37_Y25_N8
\registerI:1:registerJ:0:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~4_combout\ = (\registerI:1:registerJ:0:reg|mux_out~0_combout\ & \registerI:1:registerJ:0:reg|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:0:reg|q\(4),
	combout => \registerI:1:registerJ:0:reg|data_out~4_combout\);

-- Location: LCFF_X37_Y27_N23
\registerI:1:registerJ:1:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|q[4]~feeder_combout\,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(4));

-- Location: LCCOMB_X37_Y27_N26
\registerI:1:registerJ:1:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~4_combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \registerI:1:registerJ:1:reg|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:1:reg|q\(4),
	combout => \registerI:1:registerJ:1:reg|data_out~4_combout\);

-- Location: LCFF_X37_Y28_N23
\registerI:1:registerJ:2:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|q[4]~feeder_combout\,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(4));

-- Location: LCCOMB_X37_Y28_N28
\registerI:1:registerJ:2:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~4_combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \registerI:1:registerJ:2:reg|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:2:reg|q\(4),
	combout => \registerI:1:registerJ:2:reg|data_out~4_combout\);

-- Location: LCFF_X37_Y29_N15
\registerI:1:registerJ:3:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|q[4]~feeder_combout\,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(4));

-- Location: LCCOMB_X37_Y29_N22
\registerI:1:registerJ:3:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~4_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datac => \registerI:1:registerJ:3:reg|q\(4),
	combout => \registerI:1:registerJ:3:reg|data_out~4_combout\);

-- Location: LCFF_X34_Y28_N11
\registerI:2:registerJ:0:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|q[4]~feeder_combout\,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(4));

-- Location: LCFF_X35_Y26_N23
\registerI:2:registerJ:2:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(4),
	sload => VCC,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(4));

-- Location: LCCOMB_X35_Y26_N4
\registerI:2:registerJ:2:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~4_combout\ = (\registerI:2:registerJ:2:reg|q\(4) & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:2:reg|q\(4),
	datac => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|data_out~4_combout\);

-- Location: LCFF_X35_Y29_N15
\registerI:3:registerJ:2:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(4),
	sload => VCC,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(4));

-- Location: LCCOMB_X35_Y29_N6
\registerI:3:registerJ:2:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~4_combout\ = (\registerI:3:registerJ:2:reg|q\(4) & \registerI:3:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:2:reg|q\(4),
	datad => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:2:reg|data_out~4_combout\);

-- Location: LCFF_X35_Y27_N15
\registerI:0:registerJ:1:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(5),
	sload => VCC,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(5));

-- Location: LCFF_X34_Y27_N17
\registerI:0:registerJ:3:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|q[5]~feeder_combout\,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(5));

-- Location: LCCOMB_X34_Y27_N8
\registerI:0:registerJ:3:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~5_combout\ = (\registerI:0:registerJ:3:reg|mux_out~0_combout\ & \registerI:0:registerJ:3:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	datac => \registerI:0:registerJ:3:reg|q\(5),
	combout => \registerI:0:registerJ:3:reg|data_out~5_combout\);

-- Location: LCFF_X37_Y25_N25
\registerI:1:registerJ:0:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|q[5]~feeder_combout\,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(5));

-- Location: LCCOMB_X37_Y25_N2
\registerI:1:registerJ:0:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~5_combout\ = (\registerI:1:registerJ:0:reg|q\(5) & \registerI:1:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:0:reg|q\(5),
	datad => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:1:registerJ:0:reg|data_out~5_combout\);

-- Location: LCFF_X37_Y27_N1
\registerI:1:registerJ:1:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(5),
	sload => VCC,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(5));

-- Location: LCCOMB_X36_Y29_N24
\registerI:1:registerJ:1:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~5_combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \registerI:1:registerJ:1:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:1:reg|q\(5),
	combout => \registerI:1:registerJ:1:reg|data_out~5_combout\);

-- Location: LCFF_X37_Y28_N1
\registerI:1:registerJ:2:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(5),
	sload => VCC,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(5));

-- Location: LCCOMB_X36_Y29_N26
\registerI:1:registerJ:2:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~5_combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \registerI:1:registerJ:2:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:2:reg|q\(5),
	combout => \registerI:1:registerJ:2:reg|data_out~5_combout\);

-- Location: LCFF_X37_Y29_N25
\registerI:1:registerJ:3:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|q[5]~feeder_combout\,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(5));

-- Location: LCCOMB_X36_Y29_N12
\registerI:1:registerJ:3:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~5_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:3:reg|q\(5),
	combout => \registerI:1:registerJ:3:reg|data_out~5_combout\);

-- Location: LCFF_X36_Y26_N9
\registerI:2:registerJ:0:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(5),
	sload => VCC,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(5));

-- Location: LCCOMB_X36_Y26_N16
\registerI:2:registerJ:0:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~5_combout\ = (\registerI:2:registerJ:0:reg|mux_out~0_combout\ & \registerI:2:registerJ:0:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	datac => \registerI:2:registerJ:0:reg|q\(5),
	combout => \registerI:2:registerJ:0:reg|data_out~5_combout\);

-- Location: LCFF_X34_Y26_N1
\registerI:2:registerJ:1:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|q[5]~feeder_combout\,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(5));

-- Location: LCCOMB_X34_Y26_N16
\registerI:2:registerJ:1:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~5_combout\ = (\registerI:2:registerJ:1:reg|q\(5) & \registerI:2:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:1:reg|q\(5),
	datac => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:1:reg|data_out~5_combout\);

-- Location: LCFF_X35_Y26_N25
\registerI:2:registerJ:2:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|q[5]~feeder_combout\,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(5));

-- Location: LCCOMB_X35_Y26_N14
\registerI:2:registerJ:2:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~5_combout\ = (\registerI:2:registerJ:2:reg|mux_out~0_combout\ & \registerI:2:registerJ:2:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	datac => \registerI:2:registerJ:2:reg|q\(5),
	combout => \registerI:2:registerJ:2:reg|data_out~5_combout\);

-- Location: LCFF_X37_Y26_N31
\registerI:2:registerJ:3:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|q[5]~feeder_combout\,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(5));

-- Location: LCCOMB_X36_Y26_N18
\registerI:2:registerJ:3:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~5_combout\ = (\registerI:2:registerJ:3:reg|mux_out~0_combout\ & \registerI:2:registerJ:3:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	datac => \registerI:2:registerJ:3:reg|q\(5),
	combout => \registerI:2:registerJ:3:reg|data_out~5_combout\);

-- Location: LCFF_X34_Y25_N25
\registerI:3:registerJ:1:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|q[5]~feeder_combout\,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(5));

-- Location: LCCOMB_X34_Y25_N0
\registerI:3:registerJ:1:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~5_combout\ = (\registerI:3:registerJ:1:reg|q\(5) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:1:reg|q\(5),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~5_combout\);

-- Location: LCFF_X36_Y27_N3
\registerI:0:registerJ:0:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|q[6]~feeder_combout\,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(6));

-- Location: LCCOMB_X36_Y27_N8
\registerI:0:registerJ:0:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~6_combout\ = (\registerI:0:registerJ:0:reg|q\(6) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:0:reg|q\(6),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~6_combout\);

-- Location: LCFF_X35_Y27_N1
\registerI:0:registerJ:1:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(6));

-- Location: LCCOMB_X35_Y27_N18
\registerI:0:registerJ:1:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~6_combout\ = (\registerI:0:registerJ:1:reg|q\(6) & \registerI:0:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:1:reg|q\(6),
	datad => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:1:reg|data_out~6_combout\);

-- Location: LCFF_X35_Y30_N29
\registerI:0:registerJ:2:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|q[6]~feeder_combout\,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(6));

-- Location: LCCOMB_X36_Y30_N18
\registerI:0:registerJ:2:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~6_combout\ = (\registerI:0:registerJ:2:reg|q\(6) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:2:reg|q\(6),
	datac => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~6_combout\);

-- Location: LCFF_X34_Y27_N11
\registerI:0:registerJ:3:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|q[6]~feeder_combout\,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(6));

-- Location: LCCOMB_X34_Y27_N2
\registerI:0:registerJ:3:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~6_combout\ = (\registerI:0:registerJ:3:reg|q\(6) & \registerI:0:registerJ:3:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:3:reg|q\(6),
	datac => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:3:reg|data_out~6_combout\);

-- Location: LCFF_X37_Y27_N11
\registerI:1:registerJ:1:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(6));

-- Location: LCCOMB_X37_Y27_N20
\registerI:1:registerJ:1:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~6_combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \registerI:1:registerJ:1:reg|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:1:reg|q\(6),
	combout => \registerI:1:registerJ:1:reg|data_out~6_combout\);

-- Location: LCFF_X34_Y28_N29
\registerI:2:registerJ:0:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|q[6]~feeder_combout\,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(6));

-- Location: LCCOMB_X34_Y28_N22
\registerI:2:registerJ:0:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~6_combout\ = (\registerI:2:registerJ:0:reg|q\(6) & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:0:reg|q\(6),
	datad => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|data_out~6_combout\);

-- Location: LCFF_X34_Y26_N11
\registerI:2:registerJ:1:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(6));

-- Location: LCFF_X35_Y26_N11
\registerI:2:registerJ:2:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(6));

-- Location: LCFF_X35_Y25_N11
\registerI:3:registerJ:0:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|q[6]~feeder_combout\,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(6));

-- Location: LCCOMB_X35_Y25_N18
\registerI:3:registerJ:0:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~6_combout\ = (\registerI:3:registerJ:0:reg|q\(6) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:0:reg|q\(6),
	datad => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~6_combout\);

-- Location: LCFF_X34_Y25_N27
\registerI:3:registerJ:1:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(6));

-- Location: LCCOMB_X34_Y25_N10
\registerI:3:registerJ:1:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~6_combout\ = (\registerI:3:registerJ:1:reg|q\(6) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:1:reg|q\(6),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~6_combout\);

-- Location: LCFF_X35_Y29_N11
\registerI:3:registerJ:2:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(6));

-- Location: LCCOMB_X35_Y29_N18
\registerI:3:registerJ:2:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~6_combout\ = (\registerI:3:registerJ:2:reg|q\(6) & \registerI:3:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:2:reg|q\(6),
	datad => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:2:reg|data_out~6_combout\);

-- Location: LCFF_X36_Y25_N11
\registerI:3:registerJ:3:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(6));

-- Location: LCCOMB_X36_Y25_N26
\registerI:3:registerJ:3:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~6_combout\ = (\registerI:3:registerJ:3:reg|q\(6) & !\registerI:3:registerJ:3:reg|mux_out~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:3:reg|q\(6),
	datac => \registerI:3:registerJ:3:reg|mux_out~combout\,
	combout => \registerI:3:registerJ:3:reg|data_out~6_combout\);

-- Location: LCFF_X36_Y27_N5
\registerI:0:registerJ:0:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(7));

-- Location: LCCOMB_X34_Y29_N12
\registerI:0:registerJ:0:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~7_combout\ = (\registerI:0:registerJ:0:reg|q\(7) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:0:registerJ:0:reg|q\(7),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~7_combout\);

-- Location: LCFF_X35_Y27_N11
\registerI:0:registerJ:1:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(7));

-- Location: LCCOMB_X34_Y29_N6
\registerI:0:registerJ:1:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~7_combout\ = (\registerI:0:registerJ:1:reg|mux_out~0_combout\ & \registerI:0:registerJ:1:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	datac => \registerI:0:registerJ:1:reg|q\(7),
	combout => \registerI:0:registerJ:1:reg|data_out~7_combout\);

-- Location: LCFF_X35_Y30_N7
\registerI:0:registerJ:2:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(7));

-- Location: LCCOMB_X35_Y30_N22
\registerI:0:registerJ:2:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~7_combout\ = (\registerI:0:registerJ:2:reg|q\(7) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:2:reg|q\(7),
	datad => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~7_combout\);

-- Location: LCFF_X34_Y27_N5
\registerI:0:registerJ:3:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(7));

-- Location: LCCOMB_X34_Y27_N12
\registerI:0:registerJ:3:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~7_combout\ = (\registerI:0:registerJ:3:reg|mux_out~0_combout\ & \registerI:0:registerJ:3:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	datac => \registerI:0:registerJ:3:reg|q\(7),
	combout => \registerI:0:registerJ:3:reg|data_out~7_combout\);

-- Location: LCFF_X37_Y27_N13
\registerI:1:registerJ:1:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(7));

-- Location: LCCOMB_X37_Y28_N24
\registerI:1:registerJ:1:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~7_combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \registerI:1:registerJ:1:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datac => \registerI:1:registerJ:1:reg|q\(7),
	combout => \registerI:1:registerJ:1:reg|data_out~7_combout\);

-- Location: LCFF_X34_Y28_N7
\registerI:2:registerJ:0:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(7));

-- Location: LCCOMB_X34_Y28_N16
\registerI:2:registerJ:0:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~7_combout\ = (\registerI:2:registerJ:0:reg|q\(7) & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:0:reg|q\(7),
	datad => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|data_out~7_combout\);

-- Location: LCFF_X34_Y26_N21
\registerI:2:registerJ:1:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|q[7]~feeder_combout\,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(7));

-- Location: LCCOMB_X34_Y26_N4
\registerI:2:registerJ:1:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~7_combout\ = (\registerI:2:registerJ:1:reg|mux_out~0_combout\ & \registerI:2:registerJ:1:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	datac => \registerI:2:registerJ:1:reg|q\(7),
	combout => \registerI:2:registerJ:1:reg|data_out~7_combout\);

-- Location: LCFF_X35_Y26_N13
\registerI:2:registerJ:2:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|q[7]~feeder_combout\,
	ena => \registerI:2:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|q\(7));

-- Location: LCFF_X35_Y25_N5
\registerI:3:registerJ:0:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(7));

-- Location: LCCOMB_X35_Y25_N28
\registerI:3:registerJ:0:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~7_combout\ = (\registerI:3:registerJ:0:reg|q\(7) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:0:reg|q\(7),
	datad => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~7_combout\);

-- Location: LCFF_X34_Y25_N13
\registerI:3:registerJ:1:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(7));

-- Location: LCFF_X35_Y29_N13
\registerI:3:registerJ:2:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(7));

-- Location: LCCOMB_X36_Y26_N2
\registerI:2:registerJ:2:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|load~combout\ = (\write_option~combout\ & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_option~combout\,
	datad => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|load~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\index[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_index(0),
	combout => \index~combout\(0));

-- Location: LCCOMB_X36_Y30_N20
\registerI:1:registerJ:0:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:1:registerJ:0:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y25_N30
\registerI:3:registerJ:3:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:3:registerJ:3:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y28_N12
\registerI:2:registerJ:0:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:2:registerJ:0:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y26_N6
\registerI:2:registerJ:2:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:2:registerJ:2:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y26_N6
\registerI:2:registerJ:1:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:2:registerJ:1:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y25_N8
\registerI:3:registerJ:1:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:3:registerJ:1:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y27_N24
\registerI:0:registerJ:0:reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|q[1]~feeder_combout\ = \input_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(1),
	combout => \registerI:0:registerJ:0:reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X35_Y28_N20
\registerI:3:registerJ:1:reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|q[1]~feeder_combout\ = \input_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(1),
	combout => \registerI:3:registerJ:1:reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X35_Y26_N0
\registerI:2:registerJ:2:reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|q[1]~feeder_combout\ = \input_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(1),
	combout => \registerI:2:registerJ:2:reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X37_Y27_N24
\registerI:1:registerJ:1:reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|q[1]~feeder_combout\ = \input_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(1),
	combout => \registerI:1:registerJ:1:reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X37_Y29_N18
\registerI:1:registerJ:3:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:1:registerJ:3:reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X35_Y30_N12
\registerI:0:registerJ:2:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:0:registerJ:2:reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X35_Y27_N8
\registerI:0:registerJ:1:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:0:registerJ:1:reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X36_Y26_N30
\registerI:2:registerJ:0:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:2:registerJ:0:reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X35_Y26_N18
\registerI:2:registerJ:2:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:2:registerJ:2:reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X34_Y27_N18
\registerI:0:registerJ:3:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:0:registerJ:3:reg|q[2]~feeder_combout\);

-- Location: LCCOMB_X37_Y29_N4
\registerI:1:registerJ:3:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:1:registerJ:3:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X35_Y30_N14
\registerI:0:registerJ:2:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:0:registerJ:2:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X35_Y27_N2
\registerI:0:registerJ:1:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:0:registerJ:1:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X34_Y27_N28
\registerI:0:registerJ:3:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:0:registerJ:3:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X35_Y25_N20
\registerI:3:registerJ:0:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:3:registerJ:0:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X34_Y26_N12
\registerI:2:registerJ:1:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:2:registerJ:1:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y25_N12
\registerI:1:registerJ:0:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:1:registerJ:0:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y28_N20
\registerI:1:registerJ:2:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:1:registerJ:2:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y27_N28
\registerI:1:registerJ:1:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:1:registerJ:1:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X34_Y28_N10
\registerI:2:registerJ:0:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:2:registerJ:0:reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X37_Y29_N14
\registerI:1:registerJ:3:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:1:registerJ:3:reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X37_Y28_N22
\registerI:1:registerJ:2:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:1:registerJ:2:reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X35_Y27_N4
\registerI:0:registerJ:1:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:0:registerJ:1:reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X34_Y27_N6
\registerI:0:registerJ:3:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:0:registerJ:3:reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X37_Y27_N22
\registerI:1:registerJ:1:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:1:registerJ:1:reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X37_Y25_N30
\registerI:1:registerJ:0:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:1:registerJ:0:reg|q[4]~feeder_combout\);

-- Location: LCCOMB_X34_Y27_N16
\registerI:0:registerJ:3:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:0:registerJ:3:reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X34_Y26_N0
\registerI:2:registerJ:1:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:2:registerJ:1:reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X34_Y25_N24
\registerI:3:registerJ:1:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:3:registerJ:1:reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X35_Y26_N24
\registerI:2:registerJ:2:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:2:registerJ:2:reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X37_Y26_N30
\registerI:2:registerJ:3:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:2:registerJ:3:reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X37_Y29_N24
\registerI:1:registerJ:3:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:1:registerJ:3:reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X37_Y25_N24
\registerI:1:registerJ:0:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:1:registerJ:0:reg|q[5]~feeder_combout\);

-- Location: LCCOMB_X35_Y30_N28
\registerI:0:registerJ:2:reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|q[6]~feeder_combout\ = \input_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(6),
	combout => \registerI:0:registerJ:2:reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X36_Y27_N2
\registerI:0:registerJ:0:reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|q[6]~feeder_combout\ = \input_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(6),
	combout => \registerI:0:registerJ:0:reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X35_Y25_N10
\registerI:3:registerJ:0:reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|q[6]~feeder_combout\ = \input_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(6),
	combout => \registerI:3:registerJ:0:reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X34_Y28_N28
\registerI:2:registerJ:0:reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|q[6]~feeder_combout\ = \input_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(6),
	combout => \registerI:2:registerJ:0:reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X34_Y27_N10
\registerI:0:registerJ:3:reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|q[6]~feeder_combout\ = \input_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(6),
	combout => \registerI:0:registerJ:3:reg|q[6]~feeder_combout\);

-- Location: LCCOMB_X35_Y26_N12
\registerI:2:registerJ:2:reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|q[7]~feeder_combout\ = \input_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(7),
	combout => \registerI:2:registerJ:2:reg|q[7]~feeder_combout\);

-- Location: LCCOMB_X34_Y26_N20
\registerI:2:registerJ:1:reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|q[7]~feeder_combout\ = \input_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(7),
	combout => \registerI:2:registerJ:1:reg|q[7]~feeder_combout\);

-- Location: LCCOMB_X31_Y35_N0
\output_data[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data[0]~9_combout\ = !\output_data[0]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \output_data[0]~9_combout\,
	combout => \output_data[0]~9_combout\);

-- Location: CLKCTRL_G9
\output_data[0]~9clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \output_data[0]~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \output_data[0]~9clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\read_option~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_read_option,
	combout => \read_option~combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\index[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_index(3),
	combout => \index~combout\(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\index[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_index(2),
	combout => \index~combout\(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\index[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_index(1),
	combout => \index~combout\(1));

-- Location: LCCOMB_X36_Y28_N0
\registerI:0:registerJ:0:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|mux_out~0_combout\ = (\index~combout\(0) & (\index~combout\(3) & (\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:0:registerJ:0:reg|mux_out~0_combout\);

-- Location: LCCOMB_X36_Y27_N16
\registerI:0:registerJ:0:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~0_combout\ = (\registerI:0:registerJ:0:reg|q\(0) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:0:reg|q\(0),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~0_combout\);

-- Location: LCFF_X36_Y27_N17
\registerI:0:registerJ:0:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(0));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(0),
	combout => \input_data~combout\(0));

-- Location: LCCOMB_X34_Y27_N14
\registerI:0:registerJ:3:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:0:registerJ:3:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y28_N22
\registerI:0:registerJ:3:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|mux_out~0_combout\ = (\index~combout\(0) & (!\index~combout\(3) & (!\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:0:registerJ:3:reg|mux_out~0_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write_option~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_write_option,
	combout => \write_option~combout\);

-- Location: LCCOMB_X34_Y27_N30
\registerI:0:registerJ:3:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|load~combout\ = (\registerI:0:registerJ:3:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	datad => \write_option~combout\,
	combout => \registerI:0:registerJ:3:reg|load~combout\);

-- Location: LCFF_X34_Y27_N15
\registerI:0:registerJ:3:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|q[0]~feeder_combout\,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(0));

-- Location: LCCOMB_X36_Y30_N14
\registerI:0:registerJ:3:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~0_combout\ = (\registerI:0:registerJ:3:reg|mux_out~0_combout\ & \registerI:0:registerJ:3:reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	datac => \registerI:0:registerJ:3:reg|q\(0),
	combout => \registerI:0:registerJ:3:reg|data_out~0_combout\);

-- Location: LCFF_X36_Y30_N15
\registerI:0:registerJ:3:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(0));

-- Location: LCCOMB_X36_Y28_N10
\registerI:0:registerJ:1:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|mux_out~0_combout\ = (\index~combout\(0) & (\index~combout\(3) & (!\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:0:registerJ:1:reg|mux_out~0_combout\);

-- Location: LCCOMB_X35_Y27_N20
\registerI:0:registerJ:1:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|load~combout\ = (\write_option~combout\ & \registerI:0:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_option~combout\,
	datad => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:1:reg|load~combout\);

-- Location: LCFF_X35_Y27_N13
\registerI:0:registerJ:1:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(0),
	sload => VCC,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(0));

-- Location: LCCOMB_X36_Y30_N26
\registerI:0:registerJ:1:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~0_combout\ = (\registerI:0:registerJ:1:reg|mux_out~0_combout\ & \registerI:0:registerJ:1:reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	datad => \registerI:0:registerJ:1:reg|q\(0),
	combout => \registerI:0:registerJ:1:reg|data_out~0_combout\);

-- Location: LCFF_X36_Y30_N27
\registerI:0:registerJ:1:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(0));

-- Location: LCCOMB_X36_Y30_N24
\ors|output_vec[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[0]~0_combout\ = (\registerI:0:registerJ:2:reg|data_out\(0)) # ((\registerI:0:registerJ:0:reg|data_out\(0)) # ((\registerI:0:registerJ:3:reg|data_out\(0)) # (\registerI:0:registerJ:1:reg|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:2:reg|data_out\(0),
	datab => \registerI:0:registerJ:0:reg|data_out\(0),
	datac => \registerI:0:registerJ:3:reg|data_out\(0),
	datad => \registerI:0:registerJ:1:reg|data_out\(0),
	combout => \ors|output_vec[0]~0_combout\);

-- Location: LCCOMB_X36_Y28_N30
\registerI:1:registerJ:3:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|mux_out~0_combout\ = (!\index~combout\(0) & (!\index~combout\(3) & (!\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:1:registerJ:3:reg|mux_out~0_combout\);

-- Location: LCCOMB_X37_Y29_N6
\registerI:1:registerJ:3:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:1:registerJ:3:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y29_N30
\registerI:1:registerJ:3:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|load~combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datac => \write_option~combout\,
	combout => \registerI:1:registerJ:3:reg|load~combout\);

-- Location: LCFF_X37_Y29_N7
\registerI:1:registerJ:3:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|q[0]~feeder_combout\,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(0));

-- Location: LCCOMB_X36_Y30_N28
\registerI:1:registerJ:3:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~0_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:3:reg|q\(0),
	combout => \registerI:1:registerJ:3:reg|data_out~0_combout\);

-- Location: LCFF_X36_Y30_N29
\registerI:1:registerJ:3:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(0));

-- Location: LCCOMB_X36_Y28_N4
\registerI:1:registerJ:2:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|mux_out~0_combout\ = (!\index~combout\(0) & (!\index~combout\(3) & (\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:1:registerJ:2:reg|mux_out~0_combout\);

-- Location: LCCOMB_X37_Y28_N30
\registerI:1:registerJ:2:reg|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|q[0]~feeder_combout\ = \input_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(0),
	combout => \registerI:1:registerJ:2:reg|q[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y28_N14
\registerI:1:registerJ:2:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|load~combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \write_option~combout\,
	combout => \registerI:1:registerJ:2:reg|load~combout\);

-- Location: LCFF_X37_Y28_N31
\registerI:1:registerJ:2:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|q[0]~feeder_combout\,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(0));

-- Location: LCCOMB_X37_Y28_N16
\registerI:1:registerJ:2:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~0_combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \registerI:1:registerJ:2:reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:2:reg|q\(0),
	combout => \registerI:1:registerJ:2:reg|data_out~0_combout\);

-- Location: LCFF_X37_Y28_N17
\registerI:1:registerJ:2:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(0));

-- Location: LCCOMB_X36_Y28_N26
\registerI:1:registerJ:1:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|mux_out~0_combout\ = (!\index~combout\(0) & (\index~combout\(3) & (!\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:1:registerJ:1:reg|mux_out~0_combout\);

-- Location: LCCOMB_X37_Y27_N14
\registerI:1:registerJ:1:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|load~combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datad => \write_option~combout\,
	combout => \registerI:1:registerJ:1:reg|load~combout\);

-- Location: LCFF_X37_Y27_N31
\registerI:1:registerJ:1:reg|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(0),
	sload => VCC,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(0));

-- Location: LCCOMB_X37_Y27_N8
\registerI:1:registerJ:1:reg|data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~0_combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \registerI:1:registerJ:1:reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:1:reg|q\(0),
	combout => \registerI:1:registerJ:1:reg|data_out~0_combout\);

-- Location: LCFF_X37_Y27_N9
\registerI:1:registerJ:1:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(0));

-- Location: LCCOMB_X36_Y30_N22
\ors|output_vec[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[0]~1_combout\ = (\registerI:1:registerJ:0:reg|data_out\(0)) # ((\registerI:1:registerJ:3:reg|data_out\(0)) # ((\registerI:1:registerJ:2:reg|data_out\(0)) # (\registerI:1:registerJ:1:reg|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|data_out\(0),
	datab => \registerI:1:registerJ:3:reg|data_out\(0),
	datac => \registerI:1:registerJ:2:reg|data_out\(0),
	datad => \registerI:1:registerJ:1:reg|data_out\(0),
	combout => \ors|output_vec[0]~1_combout\);

-- Location: LCCOMB_X36_Y30_N8
\output_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~1_combout\ = (\read_option~combout\ & ((\ors|output_vec[0]~4_combout\) # ((\ors|output_vec[0]~0_combout\) # (\ors|output_vec[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[0]~4_combout\,
	datab => \read_option~combout\,
	datac => \ors|output_vec[0]~0_combout\,
	datad => \ors|output_vec[0]~1_combout\,
	combout => \output_data~1_combout\);

-- Location: LCFF_X36_Y30_N9
\output_data[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[0]~reg0_regout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(1),
	combout => \input_data~combout\(1));

-- Location: LCCOMB_X36_Y28_N24
\registerI:3:registerJ:0:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|mux_out~0_combout\ = (!\index~combout\(0) & (\index~combout\(3) & (\index~combout\(2) & !\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:3:registerJ:0:reg|mux_out~0_combout\);

-- Location: LCCOMB_X35_Y25_N30
\registerI:3:registerJ:0:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|load~combout\ = (\registerI:3:registerJ:0:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	datad => \write_option~combout\,
	combout => \registerI:3:registerJ:0:reg|load~combout\);

-- Location: LCFF_X35_Y25_N17
\registerI:3:registerJ:0:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N2
\registerI:3:registerJ:0:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~1_combout\ = (\registerI:3:registerJ:0:reg|q\(1) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:0:reg|q\(1),
	datad => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~1_combout\);

-- Location: LCFF_X35_Y28_N3
\registerI:3:registerJ:0:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(1));

-- Location: LCCOMB_X36_Y28_N14
\registerI:3:registerJ:3:reg|mux_out\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|mux_out~combout\ = (\index~combout\(0)) # ((\index~combout\(3)) # ((\index~combout\(2)) # (\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:3:registerJ:3:reg|mux_out~combout\);

-- Location: LCCOMB_X36_Y25_N8
\registerI:3:registerJ:3:reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|q[1]~feeder_combout\ = \input_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(1),
	combout => \registerI:3:registerJ:3:reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X36_Y25_N14
\registerI:3:registerJ:3:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|load~combout\ = (!\registerI:3:registerJ:3:reg|mux_out~combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:3:reg|mux_out~combout\,
	datad => \write_option~combout\,
	combout => \registerI:3:registerJ:3:reg|load~combout\);

-- Location: LCFF_X36_Y25_N9
\registerI:3:registerJ:3:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|q[1]~feeder_combout\,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N24
\registerI:3:registerJ:3:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~1_combout\ = (!\registerI:3:registerJ:3:reg|mux_out~combout\ & \registerI:3:registerJ:3:reg|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:3:reg|mux_out~combout\,
	datac => \registerI:3:registerJ:3:reg|q\(1),
	combout => \registerI:3:registerJ:3:reg|data_out~1_combout\);

-- Location: LCFF_X35_Y28_N25
\registerI:3:registerJ:3:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(1));

-- Location: LCCOMB_X36_Y28_N12
\registerI:3:registerJ:2:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|mux_out~0_combout\ = (!\index~combout\(0) & (!\index~combout\(3) & (\index~combout\(2) & !\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:3:registerJ:2:reg|mux_out~0_combout\);

-- Location: LCCOMB_X35_Y29_N16
\registerI:3:registerJ:2:reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|q[1]~feeder_combout\ = \input_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(1),
	combout => \registerI:3:registerJ:2:reg|q[1]~feeder_combout\);

-- Location: LCCOMB_X35_Y29_N30
\registerI:3:registerJ:2:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|load~combout\ = (\registerI:3:registerJ:2:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	datad => \write_option~combout\,
	combout => \registerI:3:registerJ:2:reg|load~combout\);

-- Location: LCFF_X35_Y29_N17
\registerI:3:registerJ:2:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|q[1]~feeder_combout\,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(1));

-- Location: LCCOMB_X35_Y28_N30
\registerI:3:registerJ:2:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~1_combout\ = (\registerI:3:registerJ:2:reg|mux_out~0_combout\ & \registerI:3:registerJ:2:reg|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	datac => \registerI:3:registerJ:2:reg|q\(1),
	combout => \registerI:3:registerJ:2:reg|data_out~1_combout\);

-- Location: LCFF_X35_Y28_N31
\registerI:3:registerJ:2:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(1));

-- Location: LCCOMB_X35_Y28_N26
\ors|output_vec[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[1]~9_combout\ = (\registerI:3:registerJ:1:reg|data_out\(1)) # ((\registerI:3:registerJ:0:reg|data_out\(1)) # ((\registerI:3:registerJ:3:reg|data_out\(1)) # (\registerI:3:registerJ:2:reg|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:1:reg|data_out\(1),
	datab => \registerI:3:registerJ:0:reg|data_out\(1),
	datac => \registerI:3:registerJ:3:reg|data_out\(1),
	datad => \registerI:3:registerJ:2:reg|data_out\(1),
	combout => \ors|output_vec[1]~9_combout\);

-- Location: LCFF_X34_Y27_N25
\registerI:0:registerJ:3:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:0:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|q\(1));

-- Location: LCCOMB_X34_Y27_N0
\registerI:0:registerJ:3:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~1_combout\ = (\registerI:0:registerJ:3:reg|mux_out~0_combout\ & \registerI:0:registerJ:3:reg|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	datac => \registerI:0:registerJ:3:reg|q\(1),
	combout => \registerI:0:registerJ:3:reg|data_out~1_combout\);

-- Location: LCFF_X34_Y27_N1
\registerI:0:registerJ:3:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(1));

-- Location: LCCOMB_X35_Y27_N30
\registerI:0:registerJ:1:reg|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|q[1]~feeder_combout\ = \input_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(1),
	combout => \registerI:0:registerJ:1:reg|q[1]~feeder_combout\);

-- Location: LCFF_X35_Y27_N31
\registerI:0:registerJ:1:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|q[1]~feeder_combout\,
	ena => \registerI:0:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|q\(1));

-- Location: LCCOMB_X35_Y27_N24
\registerI:0:registerJ:1:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~1_combout\ = (\registerI:0:registerJ:1:reg|q\(1) & \registerI:0:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:1:reg|q\(1),
	datad => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:1:reg|data_out~1_combout\);

-- Location: LCFF_X35_Y27_N25
\registerI:0:registerJ:1:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(1));

-- Location: LCCOMB_X35_Y30_N24
\registerI:0:registerJ:2:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|load~combout\ = (\registerI:0:registerJ:2:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	datac => \write_option~combout\,
	combout => \registerI:0:registerJ:2:reg|load~combout\);

-- Location: LCFF_X35_Y30_N27
\registerI:0:registerJ:2:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(1));

-- Location: LCCOMB_X36_Y28_N28
\registerI:0:registerJ:2:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|mux_out~0_combout\ = (\index~combout\(0) & (!\index~combout\(3) & (\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:0:registerJ:2:reg|mux_out~0_combout\);

-- Location: LCCOMB_X35_Y30_N8
\registerI:0:registerJ:2:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~1_combout\ = (\registerI:0:registerJ:2:reg|q\(1) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:2:reg|q\(1),
	datad => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~1_combout\);

-- Location: LCFF_X35_Y30_N9
\registerI:0:registerJ:2:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(1));

-- Location: LCCOMB_X35_Y28_N18
\ors|output_vec[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[1]~5_combout\ = (\registerI:0:registerJ:0:reg|data_out\(1)) # ((\registerI:0:registerJ:3:reg|data_out\(1)) # ((\registerI:0:registerJ:1:reg|data_out\(1)) # (\registerI:0:registerJ:2:reg|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:0:reg|data_out\(1),
	datab => \registerI:0:registerJ:3:reg|data_out\(1),
	datac => \registerI:0:registerJ:1:reg|data_out\(1),
	datad => \registerI:0:registerJ:2:reg|data_out\(1),
	combout => \ors|output_vec[1]~5_combout\);

-- Location: LCFF_X37_Y29_N1
\registerI:1:registerJ:3:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(1));

-- Location: LCCOMB_X37_Y29_N16
\registerI:1:registerJ:3:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~1_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:3:reg|q\(1),
	combout => \registerI:1:registerJ:3:reg|data_out~1_combout\);

-- Location: LCFF_X37_Y29_N17
\registerI:1:registerJ:3:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(1));

-- Location: LCCOMB_X37_Y25_N22
\registerI:1:registerJ:0:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|load~combout\ = (\registerI:1:registerJ:0:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	datad => \write_option~combout\,
	combout => \registerI:1:registerJ:0:reg|load~combout\);

-- Location: LCFF_X37_Y25_N17
\registerI:1:registerJ:0:reg|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(1),
	sload => VCC,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(1));

-- Location: LCCOMB_X36_Y28_N8
\registerI:1:registerJ:0:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|mux_out~0_combout\ = (!\index~combout\(0) & (\index~combout\(3) & (\index~combout\(2) & \index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:1:registerJ:0:reg|mux_out~0_combout\);

-- Location: LCCOMB_X37_Y25_N0
\registerI:1:registerJ:0:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~1_combout\ = (\registerI:1:registerJ:0:reg|q\(1) & \registerI:1:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:0:reg|q\(1),
	datad => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:1:registerJ:0:reg|data_out~1_combout\);

-- Location: LCFF_X37_Y25_N1
\registerI:1:registerJ:0:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(1));

-- Location: LCCOMB_X37_Y27_N18
\registerI:1:registerJ:1:reg|data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~1_combout\ = (\registerI:1:registerJ:1:reg|q\(1) & \registerI:1:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:1:reg|q\(1),
	datac => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:1:registerJ:1:reg|data_out~1_combout\);

-- Location: LCFF_X37_Y27_N19
\registerI:1:registerJ:1:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(1));

-- Location: LCCOMB_X37_Y25_N18
\ors|output_vec[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[1]~6_combout\ = (\registerI:1:registerJ:0:reg|data_out\(1)) # (\registerI:1:registerJ:1:reg|data_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:0:reg|data_out\(1),
	datad => \registerI:1:registerJ:1:reg|data_out\(1),
	combout => \ors|output_vec[1]~6_combout\);

-- Location: LCCOMB_X35_Y28_N22
\ors|output_vec[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[1]~7_combout\ = (\registerI:1:registerJ:2:reg|data_out\(1)) # ((\ors|output_vec[1]~5_combout\) # ((\registerI:1:registerJ:3:reg|data_out\(1)) # (\ors|output_vec[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:2:reg|data_out\(1),
	datab => \ors|output_vec[1]~5_combout\,
	datac => \registerI:1:registerJ:3:reg|data_out\(1),
	datad => \ors|output_vec[1]~6_combout\,
	combout => \ors|output_vec[1]~7_combout\);

-- Location: LCCOMB_X35_Y28_N0
\output_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~2_combout\ = (\read_option~combout\ & ((\ors|output_vec[1]~8_combout\) # ((\ors|output_vec[1]~9_combout\) # (\ors|output_vec[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[1]~8_combout\,
	datab => \ors|output_vec[1]~9_combout\,
	datac => \read_option~combout\,
	datad => \ors|output_vec[1]~7_combout\,
	combout => \output_data~2_combout\);

-- Location: LCFF_X35_Y28_N1
\output_data[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[1]~reg0_regout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(2),
	combout => \input_data~combout\(2));

-- Location: LCCOMB_X34_Y25_N14
\registerI:3:registerJ:1:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|load~combout\ = (\registerI:3:registerJ:1:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	datac => \write_option~combout\,
	combout => \registerI:3:registerJ:1:reg|load~combout\);

-- Location: LCFF_X34_Y25_N3
\registerI:3:registerJ:1:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(2),
	sload => VCC,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(2));

-- Location: LCCOMB_X36_Y28_N2
\registerI:3:registerJ:1:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|mux_out~0_combout\ = (!\index~combout\(0) & (\index~combout\(3) & (!\index~combout\(2) & !\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:3:registerJ:1:reg|mux_out~0_combout\);

-- Location: LCCOMB_X34_Y25_N18
\registerI:3:registerJ:1:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~2_combout\ = (\registerI:3:registerJ:1:reg|q\(2) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:1:reg|q\(2),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~2_combout\);

-- Location: LCFF_X34_Y25_N19
\registerI:3:registerJ:1:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(2));

-- Location: LCCOMB_X35_Y25_N26
\registerI:3:registerJ:0:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:3:registerJ:0:reg|q[2]~feeder_combout\);

-- Location: LCFF_X35_Y25_N27
\registerI:3:registerJ:0:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|q[2]~feeder_combout\,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(2));

-- Location: LCCOMB_X35_Y25_N8
\registerI:3:registerJ:0:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~2_combout\ = (\registerI:3:registerJ:0:reg|q\(2) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:0:reg|q\(2),
	datad => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~2_combout\);

-- Location: LCFF_X35_Y25_N9
\registerI:3:registerJ:0:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(2));

-- Location: LCFF_X36_Y25_N3
\registerI:3:registerJ:3:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(2),
	sload => VCC,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(2));

-- Location: LCCOMB_X36_Y25_N18
\registerI:3:registerJ:3:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~2_combout\ = (\registerI:3:registerJ:3:reg|q\(2) & !\registerI:3:registerJ:3:reg|mux_out~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:3:reg|q\(2),
	datac => \registerI:3:registerJ:3:reg|mux_out~combout\,
	combout => \registerI:3:registerJ:3:reg|data_out~2_combout\);

-- Location: LCFF_X36_Y25_N19
\registerI:3:registerJ:3:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(2));

-- Location: LCCOMB_X35_Y25_N2
\ors|output_vec[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[2]~14_combout\ = (\registerI:3:registerJ:2:reg|data_out\(2)) # ((\registerI:3:registerJ:1:reg|data_out\(2)) # ((\registerI:3:registerJ:0:reg|data_out\(2)) # (\registerI:3:registerJ:3:reg|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:2:reg|data_out\(2),
	datab => \registerI:3:registerJ:1:reg|data_out\(2),
	datac => \registerI:3:registerJ:0:reg|data_out\(2),
	datad => \registerI:3:registerJ:3:reg|data_out\(2),
	combout => \ors|output_vec[2]~14_combout\);

-- Location: LCCOMB_X37_Y28_N26
\registerI:1:registerJ:2:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:1:registerJ:2:reg|q[2]~feeder_combout\);

-- Location: LCFF_X37_Y28_N27
\registerI:1:registerJ:2:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|q[2]~feeder_combout\,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(2));

-- Location: LCCOMB_X36_Y26_N26
\registerI:1:registerJ:2:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~2_combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \registerI:1:registerJ:2:reg|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:2:reg|q\(2),
	combout => \registerI:1:registerJ:2:reg|data_out~2_combout\);

-- Location: LCFF_X36_Y26_N27
\registerI:1:registerJ:2:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(2));

-- Location: LCFF_X37_Y25_N27
\registerI:1:registerJ:0:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(2),
	sload => VCC,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(2));

-- Location: LCCOMB_X37_Y25_N20
\registerI:1:registerJ:0:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~2_combout\ = (\registerI:1:registerJ:0:reg|mux_out~0_combout\ & \registerI:1:registerJ:0:reg|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:0:reg|q\(2),
	combout => \registerI:1:registerJ:0:reg|data_out~2_combout\);

-- Location: LCFF_X37_Y25_N21
\registerI:1:registerJ:0:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(2));

-- Location: LCCOMB_X37_Y27_N2
\registerI:1:registerJ:1:reg|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|q[2]~feeder_combout\ = \input_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(2),
	combout => \registerI:1:registerJ:1:reg|q[2]~feeder_combout\);

-- Location: LCFF_X37_Y27_N3
\registerI:1:registerJ:1:reg|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|q[2]~feeder_combout\,
	ena => \registerI:1:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|q\(2));

-- Location: LCCOMB_X37_Y27_N4
\registerI:1:registerJ:1:reg|data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:1:reg|data_out~2_combout\ = (\registerI:1:registerJ:1:reg|mux_out~0_combout\ & \registerI:1:registerJ:1:reg|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:1:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:1:reg|q\(2),
	combout => \registerI:1:registerJ:1:reg|data_out~2_combout\);

-- Location: LCFF_X37_Y27_N5
\registerI:1:registerJ:1:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:1:reg|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:1:reg|data_out\(2));

-- Location: LCCOMB_X36_Y26_N28
\ors|output_vec[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[2]~11_combout\ = (\registerI:1:registerJ:3:reg|data_out\(2)) # ((\registerI:1:registerJ:2:reg|data_out\(2)) # ((\registerI:1:registerJ:0:reg|data_out\(2)) # (\registerI:1:registerJ:1:reg|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:3:reg|data_out\(2),
	datab => \registerI:1:registerJ:2:reg|data_out\(2),
	datac => \registerI:1:registerJ:0:reg|data_out\(2),
	datad => \registerI:1:registerJ:1:reg|data_out\(2),
	combout => \ors|output_vec[2]~11_combout\);

-- Location: LCCOMB_X36_Y26_N22
\ors|output_vec[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[2]~12_combout\ = (\ors|output_vec[2]~10_combout\) # (\ors|output_vec[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[2]~10_combout\,
	datad => \ors|output_vec[2]~11_combout\,
	combout => \ors|output_vec[2]~12_combout\);

-- Location: LCCOMB_X36_Y26_N24
\output_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~3_combout\ = (\read_option~combout\ & ((\ors|output_vec[2]~13_combout\) # ((\ors|output_vec[2]~14_combout\) # (\ors|output_vec[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[2]~13_combout\,
	datab => \ors|output_vec[2]~14_combout\,
	datac => \read_option~combout\,
	datad => \ors|output_vec[2]~12_combout\,
	combout => \output_data~3_combout\);

-- Location: LCFF_X36_Y26_N25
\output_data[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[2]~reg0_regout\);

-- Location: LCCOMB_X36_Y28_N18
\registerI:2:registerJ:1:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|mux_out~0_combout\ = (\index~combout\(0) & (\index~combout\(3) & (!\index~combout\(2) & !\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:2:registerJ:1:reg|mux_out~0_combout\);

-- Location: LCCOMB_X34_Y26_N18
\registerI:2:registerJ:1:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~3_combout\ = (\registerI:2:registerJ:1:reg|q\(3) & \registerI:2:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|q\(3),
	datac => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:1:reg|data_out~3_combout\);

-- Location: LCFF_X34_Y26_N19
\registerI:2:registerJ:1:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(3));

-- Location: LCCOMB_X36_Y28_N6
\registerI:2:registerJ:3:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|mux_out~0_combout\ = (\index~combout\(0) & (!\index~combout\(3) & (!\index~combout\(2) & !\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:2:registerJ:3:reg|mux_out~0_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(3),
	combout => \input_data~combout\(3));

-- Location: LCCOMB_X37_Y26_N26
\registerI:2:registerJ:3:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:2:registerJ:3:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X37_Y26_N4
\registerI:2:registerJ:3:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|load~combout\ = (\registerI:2:registerJ:3:reg|mux_out~0_combout\ & \write_option~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	datad => \write_option~combout\,
	combout => \registerI:2:registerJ:3:reg|load~combout\);

-- Location: LCFF_X37_Y26_N27
\registerI:2:registerJ:3:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|q[3]~feeder_combout\,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(3));

-- Location: LCCOMB_X37_Y26_N28
\registerI:2:registerJ:3:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~3_combout\ = (\registerI:2:registerJ:3:reg|mux_out~0_combout\ & \registerI:2:registerJ:3:reg|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:2:registerJ:3:reg|q\(3),
	combout => \registerI:2:registerJ:3:reg|data_out~3_combout\);

-- Location: LCFF_X37_Y26_N29
\registerI:2:registerJ:3:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(3));

-- Location: LCCOMB_X34_Y28_N24
\registerI:2:registerJ:0:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:2:registerJ:0:reg|q[3]~feeder_combout\);

-- Location: LCCOMB_X36_Y28_N16
\registerI:2:registerJ:0:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|mux_out~0_combout\ = (\index~combout\(0) & (\index~combout\(3) & (\index~combout\(2) & !\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:2:registerJ:0:reg|mux_out~0_combout\);

-- Location: LCCOMB_X34_Y28_N0
\registerI:2:registerJ:0:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|load~combout\ = (\write_option~combout\ & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \write_option~combout\,
	datad => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|load~combout\);

-- Location: LCFF_X34_Y28_N25
\registerI:2:registerJ:0:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|q[3]~feeder_combout\,
	ena => \registerI:2:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|q\(3));

-- Location: LCCOMB_X34_Y28_N26
\registerI:2:registerJ:0:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~3_combout\ = (\registerI:2:registerJ:0:reg|q\(3) & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:2:registerJ:0:reg|q\(3),
	datad => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|data_out~3_combout\);

-- Location: LCFF_X34_Y28_N27
\registerI:2:registerJ:0:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(3));

-- Location: LCCOMB_X33_Y26_N0
\ors|output_vec[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[3]~18_combout\ = (\registerI:2:registerJ:2:reg|data_out\(3)) # ((\registerI:2:registerJ:1:reg|data_out\(3)) # ((\registerI:2:registerJ:3:reg|data_out\(3)) # (\registerI:2:registerJ:0:reg|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:2:reg|data_out\(3),
	datab => \registerI:2:registerJ:1:reg|data_out\(3),
	datac => \registerI:2:registerJ:3:reg|data_out\(3),
	datad => \registerI:2:registerJ:0:reg|data_out\(3),
	combout => \ors|output_vec[3]~18_combout\);

-- Location: LCFF_X35_Y29_N29
\registerI:3:registerJ:2:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(3),
	sload => VCC,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(3));

-- Location: LCCOMB_X35_Y29_N4
\registerI:3:registerJ:2:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~3_combout\ = (\registerI:3:registerJ:2:reg|q\(3) & \registerI:3:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:2:reg|q\(3),
	datad => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:2:reg|data_out~3_combout\);

-- Location: LCFF_X35_Y29_N5
\registerI:3:registerJ:2:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(3));

-- Location: LCCOMB_X34_Y25_N20
\registerI:3:registerJ:1:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:3:registerJ:1:reg|q[3]~feeder_combout\);

-- Location: LCFF_X34_Y25_N21
\registerI:3:registerJ:1:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|q[3]~feeder_combout\,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(3));

-- Location: LCCOMB_X34_Y25_N4
\registerI:3:registerJ:1:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~3_combout\ = (\registerI:3:registerJ:1:reg|q\(3) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:1:reg|q\(3),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~3_combout\);

-- Location: LCFF_X34_Y25_N5
\registerI:3:registerJ:1:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(3));

-- Location: LCCOMB_X36_Y25_N28
\registerI:3:registerJ:3:reg|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|q[3]~feeder_combout\ = \input_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(3),
	combout => \registerI:3:registerJ:3:reg|q[3]~feeder_combout\);

-- Location: LCFF_X36_Y25_N29
\registerI:3:registerJ:3:reg|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|q[3]~feeder_combout\,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(3));

-- Location: LCCOMB_X36_Y25_N12
\registerI:3:registerJ:3:reg|data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~3_combout\ = (\registerI:3:registerJ:3:reg|q\(3) & !\registerI:3:registerJ:3:reg|mux_out~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:3:reg|q\(3),
	datac => \registerI:3:registerJ:3:reg|mux_out~combout\,
	combout => \registerI:3:registerJ:3:reg|data_out~3_combout\);

-- Location: LCFF_X36_Y25_N13
\registerI:3:registerJ:3:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(3));

-- Location: LCCOMB_X33_Y26_N26
\ors|output_vec[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[3]~19_combout\ = (\registerI:3:registerJ:0:reg|data_out\(3)) # ((\registerI:3:registerJ:2:reg|data_out\(3)) # ((\registerI:3:registerJ:1:reg|data_out\(3)) # (\registerI:3:registerJ:3:reg|data_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:0:reg|data_out\(3),
	datab => \registerI:3:registerJ:2:reg|data_out\(3),
	datac => \registerI:3:registerJ:1:reg|data_out\(3),
	datad => \registerI:3:registerJ:3:reg|data_out\(3),
	combout => \ors|output_vec[3]~19_combout\);

-- Location: LCCOMB_X33_Y26_N24
\output_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~4_combout\ = (\read_option~combout\ & ((\ors|output_vec[3]~17_combout\) # ((\ors|output_vec[3]~18_combout\) # (\ors|output_vec[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[3]~17_combout\,
	datab => \ors|output_vec[3]~18_combout\,
	datac => \read_option~combout\,
	datad => \ors|output_vec[3]~19_combout\,
	combout => \output_data~4_combout\);

-- Location: LCFF_X33_Y26_N25
\output_data[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[3]~reg0_regout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(4),
	combout => \input_data~combout\(4));

-- Location: LCFF_X35_Y25_N15
\registerI:3:registerJ:0:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(4),
	sload => VCC,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(4));

-- Location: LCCOMB_X35_Y25_N6
\registerI:3:registerJ:0:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~4_combout\ = (\registerI:3:registerJ:0:reg|q\(4) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:0:reg|q\(4),
	datad => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~4_combout\);

-- Location: LCFF_X35_Y25_N7
\registerI:3:registerJ:0:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(4));

-- Location: LCCOMB_X34_Y25_N30
\registerI:3:registerJ:1:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:3:registerJ:1:reg|q[4]~feeder_combout\);

-- Location: LCFF_X34_Y25_N31
\registerI:3:registerJ:1:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|q[4]~feeder_combout\,
	ena => \registerI:3:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|q\(4));

-- Location: LCCOMB_X34_Y25_N22
\registerI:3:registerJ:1:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~4_combout\ = (\registerI:3:registerJ:1:reg|q\(4) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:1:reg|q\(4),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~4_combout\);

-- Location: LCFF_X34_Y25_N23
\registerI:3:registerJ:1:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(4));

-- Location: LCFF_X36_Y25_N23
\registerI:3:registerJ:3:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(4),
	sload => VCC,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(4));

-- Location: LCCOMB_X36_Y25_N6
\registerI:3:registerJ:3:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~4_combout\ = (\registerI:3:registerJ:3:reg|q\(4) & !\registerI:3:registerJ:3:reg|mux_out~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:3:reg|q\(4),
	datac => \registerI:3:registerJ:3:reg|mux_out~combout\,
	combout => \registerI:3:registerJ:3:reg|data_out~4_combout\);

-- Location: LCFF_X36_Y25_N7
\registerI:3:registerJ:3:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(4));

-- Location: LCCOMB_X36_Y24_N0
\ors|output_vec[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[4]~23_combout\ = (\registerI:3:registerJ:2:reg|data_out\(4)) # ((\registerI:3:registerJ:0:reg|data_out\(4)) # ((\registerI:3:registerJ:1:reg|data_out\(4)) # (\registerI:3:registerJ:3:reg|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:2:reg|data_out\(4),
	datab => \registerI:3:registerJ:0:reg|data_out\(4),
	datac => \registerI:3:registerJ:1:reg|data_out\(4),
	datad => \registerI:3:registerJ:3:reg|data_out\(4),
	combout => \ors|output_vec[4]~23_combout\);

-- Location: LCCOMB_X34_Y26_N30
\registerI:2:registerJ:1:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|load~combout\ = (\write_option~combout\ & \registerI:2:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_option~combout\,
	datac => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:1:reg|load~combout\);

-- Location: LCFF_X34_Y26_N15
\registerI:2:registerJ:1:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(4),
	sload => VCC,
	ena => \registerI:2:registerJ:1:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|q\(4));

-- Location: LCCOMB_X34_Y26_N28
\registerI:2:registerJ:1:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~4_combout\ = (\registerI:2:registerJ:1:reg|mux_out~0_combout\ & \registerI:2:registerJ:1:reg|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	datac => \registerI:2:registerJ:1:reg|q\(4),
	combout => \registerI:2:registerJ:1:reg|data_out~4_combout\);

-- Location: LCFF_X34_Y26_N29
\registerI:2:registerJ:1:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(4));

-- Location: LCCOMB_X34_Y28_N20
\registerI:2:registerJ:0:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:0:reg|data_out~4_combout\ = (\registerI:2:registerJ:0:reg|q\(4) & \registerI:2:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:0:reg|q\(4),
	datad => \registerI:2:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:0:reg|data_out~4_combout\);

-- Location: LCFF_X34_Y28_N21
\registerI:2:registerJ:0:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:0:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:0:reg|data_out\(4));

-- Location: LCCOMB_X37_Y26_N12
\registerI:2:registerJ:3:reg|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|q[4]~feeder_combout\ = \input_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(4),
	combout => \registerI:2:registerJ:3:reg|q[4]~feeder_combout\);

-- Location: LCFF_X37_Y26_N13
\registerI:2:registerJ:3:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|q[4]~feeder_combout\,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(4));

-- Location: LCCOMB_X37_Y26_N6
\registerI:2:registerJ:3:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~4_combout\ = (\registerI:2:registerJ:3:reg|mux_out~0_combout\ & \registerI:2:registerJ:3:reg|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:2:registerJ:3:reg|q\(4),
	combout => \registerI:2:registerJ:3:reg|data_out~4_combout\);

-- Location: LCFF_X37_Y26_N7
\registerI:2:registerJ:3:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(4));

-- Location: LCCOMB_X34_Y26_N22
\ors|output_vec[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[4]~22_combout\ = (\registerI:2:registerJ:2:reg|data_out\(4)) # ((\registerI:2:registerJ:1:reg|data_out\(4)) # ((\registerI:2:registerJ:0:reg|data_out\(4)) # (\registerI:2:registerJ:3:reg|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:2:reg|data_out\(4),
	datab => \registerI:2:registerJ:1:reg|data_out\(4),
	datac => \registerI:2:registerJ:0:reg|data_out\(4),
	datad => \registerI:2:registerJ:3:reg|data_out\(4),
	combout => \ors|output_vec[4]~22_combout\);

-- Location: LCFF_X35_Y30_N1
\registerI:0:registerJ:2:reg|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(4),
	sload => VCC,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(4));

-- Location: LCCOMB_X35_Y30_N10
\registerI:0:registerJ:2:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~4_combout\ = (\registerI:0:registerJ:2:reg|q\(4) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:2:reg|q\(4),
	datad => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~4_combout\);

-- Location: LCFF_X35_Y30_N11
\registerI:0:registerJ:2:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(4));

-- Location: LCCOMB_X34_Y27_N22
\registerI:0:registerJ:3:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:3:reg|data_out~4_combout\ = (\registerI:0:registerJ:3:reg|q\(4) & \registerI:0:registerJ:3:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:3:reg|q\(4),
	datac => \registerI:0:registerJ:3:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:3:reg|data_out~4_combout\);

-- Location: LCFF_X34_Y27_N23
\registerI:0:registerJ:3:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:3:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:3:reg|data_out\(4));

-- Location: LCCOMB_X36_Y24_N2
\registerI:0:registerJ:1:reg|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~4_combout\ = (\registerI:0:registerJ:1:reg|q\(4) & \registerI:0:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:1:reg|q\(4),
	datad => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:1:reg|data_out~4_combout\);

-- Location: LCFF_X36_Y24_N3
\registerI:0:registerJ:1:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(4));

-- Location: LCCOMB_X36_Y24_N12
\ors|output_vec[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[4]~20_combout\ = (\registerI:0:registerJ:0:reg|data_out\(4)) # ((\registerI:0:registerJ:2:reg|data_out\(4)) # ((\registerI:0:registerJ:3:reg|data_out\(4)) # (\registerI:0:registerJ:1:reg|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:0:reg|data_out\(4),
	datab => \registerI:0:registerJ:2:reg|data_out\(4),
	datac => \registerI:0:registerJ:3:reg|data_out\(4),
	datad => \registerI:0:registerJ:1:reg|data_out\(4),
	combout => \ors|output_vec[4]~20_combout\);

-- Location: LCCOMB_X36_Y24_N26
\ors|output_vec[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[4]~24_combout\ = (\ors|output_vec[4]~21_combout\) # ((\ors|output_vec[4]~23_combout\) # ((\ors|output_vec[4]~22_combout\) # (\ors|output_vec[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[4]~21_combout\,
	datab => \ors|output_vec[4]~23_combout\,
	datac => \ors|output_vec[4]~22_combout\,
	datad => \ors|output_vec[4]~20_combout\,
	combout => \ors|output_vec[4]~24_combout\);

-- Location: LCCOMB_X36_Y24_N8
\output_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~5_combout\ = (\read_option~combout\ & \ors|output_vec[4]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \read_option~combout\,
	datad => \ors|output_vec[4]~24_combout\,
	combout => \output_data~5_combout\);

-- Location: LCFF_X36_Y24_N9
\output_data[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[4]~reg0_regout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(5),
	combout => \input_data~combout\(5));

-- Location: LCCOMB_X35_Y25_N0
\registerI:3:registerJ:0:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:3:registerJ:0:reg|q[5]~feeder_combout\);

-- Location: LCFF_X35_Y25_N1
\registerI:3:registerJ:0:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|q[5]~feeder_combout\,
	ena => \registerI:3:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|q\(5));

-- Location: LCCOMB_X35_Y25_N24
\registerI:3:registerJ:0:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:0:reg|data_out~5_combout\ = (\registerI:3:registerJ:0:reg|q\(5) & \registerI:3:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:0:reg|q\(5),
	datad => \registerI:3:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:0:reg|data_out~5_combout\);

-- Location: LCFF_X35_Y25_N25
\registerI:3:registerJ:0:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:0:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:0:reg|data_out\(5));

-- Location: LCCOMB_X36_Y25_N24
\registerI:3:registerJ:3:reg|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|q[5]~feeder_combout\ = \input_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(5),
	combout => \registerI:3:registerJ:3:reg|q[5]~feeder_combout\);

-- Location: LCFF_X36_Y25_N25
\registerI:3:registerJ:3:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|q[5]~feeder_combout\,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(5));

-- Location: LCCOMB_X36_Y25_N16
\registerI:3:registerJ:3:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~5_combout\ = (!\registerI:3:registerJ:3:reg|mux_out~combout\ & \registerI:3:registerJ:3:reg|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:3:reg|mux_out~combout\,
	datac => \registerI:3:registerJ:3:reg|q\(5),
	combout => \registerI:3:registerJ:3:reg|data_out~5_combout\);

-- Location: LCFF_X36_Y25_N17
\registerI:3:registerJ:3:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(5));

-- Location: LCFF_X35_Y29_N9
\registerI:3:registerJ:2:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(5),
	sload => VCC,
	ena => \registerI:3:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|q\(5));

-- Location: LCCOMB_X35_Y29_N24
\registerI:3:registerJ:2:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~5_combout\ = (\registerI:3:registerJ:2:reg|q\(5) & \registerI:3:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:3:registerJ:2:reg|q\(5),
	datad => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:2:reg|data_out~5_combout\);

-- Location: LCFF_X35_Y29_N25
\registerI:3:registerJ:2:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(5));

-- Location: LCCOMB_X36_Y29_N2
\ors|output_vec[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[5]~29_combout\ = (\registerI:3:registerJ:1:reg|data_out\(5)) # ((\registerI:3:registerJ:0:reg|data_out\(5)) # ((\registerI:3:registerJ:3:reg|data_out\(5)) # (\registerI:3:registerJ:2:reg|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:1:reg|data_out\(5),
	datab => \registerI:3:registerJ:0:reg|data_out\(5),
	datac => \registerI:3:registerJ:3:reg|data_out\(5),
	datad => \registerI:3:registerJ:2:reg|data_out\(5),
	combout => \ors|output_vec[5]~29_combout\);

-- Location: LCCOMB_X36_Y29_N28
\registerI:0:registerJ:1:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:1:reg|data_out~5_combout\ = (\registerI:0:registerJ:1:reg|q\(5) & \registerI:0:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:1:reg|q\(5),
	datad => \registerI:0:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:1:reg|data_out~5_combout\);

-- Location: LCFF_X36_Y29_N29
\registerI:0:registerJ:1:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:1:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:1:reg|data_out\(5));

-- Location: LCFF_X35_Y30_N3
\registerI:0:registerJ:2:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(5),
	sload => VCC,
	ena => \registerI:0:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|q\(5));

-- Location: LCCOMB_X35_Y30_N4
\registerI:0:registerJ:2:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:2:reg|data_out~5_combout\ = (\registerI:0:registerJ:2:reg|q\(5) & \registerI:0:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:2:reg|q\(5),
	datad => \registerI:0:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:2:reg|data_out~5_combout\);

-- Location: LCFF_X35_Y30_N5
\registerI:0:registerJ:2:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:2:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:2:reg|data_out\(5));

-- Location: LCCOMB_X36_Y27_N30
\registerI:0:registerJ:0:reg|load\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|load~combout\ = (\write_option~combout\ & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \write_option~combout\,
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|load~combout\);

-- Location: LCFF_X36_Y27_N1
\registerI:0:registerJ:0:reg|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(5),
	sload => VCC,
	ena => \registerI:0:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|q\(5));

-- Location: LCCOMB_X36_Y29_N10
\registerI:0:registerJ:0:reg|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:0:registerJ:0:reg|data_out~5_combout\ = (\registerI:0:registerJ:0:reg|q\(5) & \registerI:0:registerJ:0:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:0:registerJ:0:reg|q\(5),
	datad => \registerI:0:registerJ:0:reg|mux_out~0_combout\,
	combout => \registerI:0:registerJ:0:reg|data_out~5_combout\);

-- Location: LCFF_X36_Y29_N11
\registerI:0:registerJ:0:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:0:registerJ:0:reg|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:0:registerJ:0:reg|data_out\(5));

-- Location: LCCOMB_X36_Y29_N30
\ors|output_vec[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[5]~25_combout\ = (\registerI:0:registerJ:3:reg|data_out\(5)) # ((\registerI:0:registerJ:1:reg|data_out\(5)) # ((\registerI:0:registerJ:2:reg|data_out\(5)) # (\registerI:0:registerJ:0:reg|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:0:registerJ:3:reg|data_out\(5),
	datab => \registerI:0:registerJ:1:reg|data_out\(5),
	datac => \registerI:0:registerJ:2:reg|data_out\(5),
	datad => \registerI:0:registerJ:0:reg|data_out\(5),
	combout => \ors|output_vec[5]~25_combout\);

-- Location: LCCOMB_X36_Y29_N0
\ors|output_vec[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[5]~27_combout\ = (\ors|output_vec[5]~26_combout\) # (\ors|output_vec[5]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[5]~26_combout\,
	datad => \ors|output_vec[5]~25_combout\,
	combout => \ors|output_vec[5]~27_combout\);

-- Location: LCCOMB_X36_Y29_N8
\output_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~6_combout\ = (\read_option~combout\ & ((\ors|output_vec[5]~28_combout\) # ((\ors|output_vec[5]~29_combout\) # (\ors|output_vec[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[5]~28_combout\,
	datab => \ors|output_vec[5]~29_combout\,
	datac => \read_option~combout\,
	datad => \ors|output_vec[5]~27_combout\,
	combout => \output_data~6_combout\);

-- Location: LCFF_X36_Y29_N9
\output_data[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[5]~reg0_regout\);

-- Location: LCCOMB_X36_Y28_N20
\registerI:2:registerJ:2:reg|mux_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|mux_out~0_combout\ = (\index~combout\(0) & (!\index~combout\(3) & (\index~combout\(2) & !\index~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \index~combout\(0),
	datab => \index~combout\(3),
	datac => \index~combout\(2),
	datad => \index~combout\(1),
	combout => \registerI:2:registerJ:2:reg|mux_out~0_combout\);

-- Location: LCCOMB_X35_Y26_N8
\registerI:2:registerJ:2:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~6_combout\ = (\registerI:2:registerJ:2:reg|q\(6) & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:2:reg|q\(6),
	datac => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|data_out~6_combout\);

-- Location: LCFF_X35_Y26_N9
\registerI:2:registerJ:2:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(6));

-- Location: LCCOMB_X34_Y26_N2
\registerI:2:registerJ:1:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:1:reg|data_out~6_combout\ = (\registerI:2:registerJ:1:reg|q\(6) & \registerI:2:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:1:reg|q\(6),
	datac => \registerI:2:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:1:reg|data_out~6_combout\);

-- Location: LCFF_X34_Y26_N3
\registerI:2:registerJ:1:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:1:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:1:reg|data_out\(6));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(6),
	combout => \input_data~combout\(6));

-- Location: LCFF_X37_Y26_N9
\registerI:2:registerJ:3:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(6));

-- Location: LCCOMB_X37_Y26_N16
\registerI:2:registerJ:3:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~6_combout\ = (\registerI:2:registerJ:3:reg|q\(6) & \registerI:2:registerJ:3:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:2:registerJ:3:reg|q\(6),
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:3:reg|data_out~6_combout\);

-- Location: LCFF_X37_Y26_N17
\registerI:2:registerJ:3:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(6));

-- Location: LCCOMB_X35_Y26_N2
\ors|output_vec[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[6]~33_combout\ = (\registerI:2:registerJ:0:reg|data_out\(6)) # ((\registerI:2:registerJ:2:reg|data_out\(6)) # ((\registerI:2:registerJ:1:reg|data_out\(6)) # (\registerI:2:registerJ:3:reg|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:0:reg|data_out\(6),
	datab => \registerI:2:registerJ:2:reg|data_out\(6),
	datac => \registerI:2:registerJ:1:reg|data_out\(6),
	datad => \registerI:2:registerJ:3:reg|data_out\(6),
	combout => \ors|output_vec[6]~33_combout\);

-- Location: LCCOMB_X37_Y29_N10
\registerI:1:registerJ:3:reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|q[6]~feeder_combout\ = \input_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(6),
	combout => \registerI:1:registerJ:3:reg|q[6]~feeder_combout\);

-- Location: LCFF_X37_Y29_N11
\registerI:1:registerJ:3:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|q[6]~feeder_combout\,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(6));

-- Location: LCCOMB_X37_Y29_N8
\registerI:1:registerJ:3:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~6_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:3:reg|q\(6),
	combout => \registerI:1:registerJ:3:reg|data_out~6_combout\);

-- Location: LCFF_X37_Y29_N9
\registerI:1:registerJ:3:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(6));

-- Location: LCCOMB_X37_Y28_N18
\registerI:1:registerJ:2:reg|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|q[6]~feeder_combout\ = \input_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(6),
	combout => \registerI:1:registerJ:2:reg|q[6]~feeder_combout\);

-- Location: LCFF_X37_Y28_N19
\registerI:1:registerJ:2:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|q[6]~feeder_combout\,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(6));

-- Location: LCCOMB_X37_Y28_N6
\registerI:1:registerJ:2:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~6_combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \registerI:1:registerJ:2:reg|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:2:reg|q\(6),
	combout => \registerI:1:registerJ:2:reg|data_out~6_combout\);

-- Location: LCFF_X37_Y28_N7
\registerI:1:registerJ:2:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(6));

-- Location: LCFF_X37_Y25_N11
\registerI:1:registerJ:0:reg|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(6),
	sload => VCC,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(6));

-- Location: LCCOMB_X37_Y25_N28
\registerI:1:registerJ:0:reg|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~6_combout\ = (\registerI:1:registerJ:0:reg|mux_out~0_combout\ & \registerI:1:registerJ:0:reg|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:0:reg|q\(6),
	combout => \registerI:1:registerJ:0:reg|data_out~6_combout\);

-- Location: LCFF_X37_Y25_N29
\registerI:1:registerJ:0:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(6));

-- Location: LCCOMB_X37_Y29_N26
\ors|output_vec[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[6]~31_combout\ = (\registerI:1:registerJ:1:reg|data_out\(6)) # ((\registerI:1:registerJ:3:reg|data_out\(6)) # ((\registerI:1:registerJ:2:reg|data_out\(6)) # (\registerI:1:registerJ:0:reg|data_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:1:reg|data_out\(6),
	datab => \registerI:1:registerJ:3:reg|data_out\(6),
	datac => \registerI:1:registerJ:2:reg|data_out\(6),
	datad => \registerI:1:registerJ:0:reg|data_out\(6),
	combout => \ors|output_vec[6]~31_combout\);

-- Location: LCCOMB_X36_Y27_N20
\ors|output_vec[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[6]~32_combout\ = (\ors|output_vec[6]~30_combout\) # (\ors|output_vec[6]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[6]~30_combout\,
	datad => \ors|output_vec[6]~31_combout\,
	combout => \ors|output_vec[6]~32_combout\);

-- Location: LCCOMB_X35_Y26_N16
\output_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~7_combout\ = (\read_option~combout\ & ((\ors|output_vec[6]~34_combout\) # ((\ors|output_vec[6]~33_combout\) # (\ors|output_vec[6]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[6]~34_combout\,
	datab => \ors|output_vec[6]~33_combout\,
	datac => \read_option~combout\,
	datad => \ors|output_vec[6]~32_combout\,
	combout => \output_data~7_combout\);

-- Location: LCFF_X35_Y26_N17
\output_data[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[6]~reg0_regout\);

-- Location: LCCOMB_X35_Y29_N20
\registerI:3:registerJ:2:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:2:reg|data_out~7_combout\ = (\registerI:3:registerJ:2:reg|q\(7) & \registerI:3:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:2:reg|q\(7),
	datad => \registerI:3:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:2:reg|data_out~7_combout\);

-- Location: LCFF_X35_Y29_N21
\registerI:3:registerJ:2:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:2:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:2:reg|data_out\(7));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input_data(7),
	combout => \input_data~combout\(7));

-- Location: LCCOMB_X36_Y25_N4
\registerI:3:registerJ:3:reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|q[7]~feeder_combout\ = \input_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(7),
	combout => \registerI:3:registerJ:3:reg|q[7]~feeder_combout\);

-- Location: LCFF_X36_Y25_N5
\registerI:3:registerJ:3:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|q[7]~feeder_combout\,
	ena => \registerI:3:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|q\(7));

-- Location: LCCOMB_X36_Y25_N20
\registerI:3:registerJ:3:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:3:reg|data_out~7_combout\ = (!\registerI:3:registerJ:3:reg|mux_out~combout\ & \registerI:3:registerJ:3:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:3:registerJ:3:reg|mux_out~combout\,
	datac => \registerI:3:registerJ:3:reg|q\(7),
	combout => \registerI:3:registerJ:3:reg|data_out~7_combout\);

-- Location: LCFF_X36_Y25_N21
\registerI:3:registerJ:3:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:3:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:3:reg|data_out\(7));

-- Location: LCCOMB_X34_Y25_N6
\registerI:3:registerJ:1:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:3:registerJ:1:reg|data_out~7_combout\ = (\registerI:3:registerJ:1:reg|q\(7) & \registerI:3:registerJ:1:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:1:reg|q\(7),
	datad => \registerI:3:registerJ:1:reg|mux_out~0_combout\,
	combout => \registerI:3:registerJ:1:reg|data_out~7_combout\);

-- Location: LCFF_X34_Y25_N7
\registerI:3:registerJ:1:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:3:registerJ:1:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:3:registerJ:1:reg|data_out\(7));

-- Location: LCCOMB_X34_Y29_N2
\ors|output_vec[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[7]~38_combout\ = (\registerI:3:registerJ:0:reg|data_out\(7)) # ((\registerI:3:registerJ:2:reg|data_out\(7)) # ((\registerI:3:registerJ:3:reg|data_out\(7)) # (\registerI:3:registerJ:1:reg|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:3:registerJ:0:reg|data_out\(7),
	datab => \registerI:3:registerJ:2:reg|data_out\(7),
	datac => \registerI:3:registerJ:3:reg|data_out\(7),
	datad => \registerI:3:registerJ:1:reg|data_out\(7),
	combout => \ors|output_vec[7]~38_combout\);

-- Location: LCFF_X37_Y26_N3
\registerI:2:registerJ:3:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	sdata => \input_data~combout\(7),
	sload => VCC,
	ena => \registerI:2:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|q\(7));

-- Location: LCCOMB_X37_Y26_N10
\registerI:2:registerJ:3:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:3:reg|data_out~7_combout\ = (\registerI:2:registerJ:3:reg|mux_out~0_combout\ & \registerI:2:registerJ:3:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:2:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:2:registerJ:3:reg|q\(7),
	combout => \registerI:2:registerJ:3:reg|data_out~7_combout\);

-- Location: LCFF_X37_Y26_N11
\registerI:2:registerJ:3:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:3:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:3:reg|data_out\(7));

-- Location: LCCOMB_X35_Y26_N20
\registerI:2:registerJ:2:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:2:registerJ:2:reg|data_out~7_combout\ = (\registerI:2:registerJ:2:reg|q\(7) & \registerI:2:registerJ:2:reg|mux_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:2:registerJ:2:reg|q\(7),
	datac => \registerI:2:registerJ:2:reg|mux_out~0_combout\,
	combout => \registerI:2:registerJ:2:reg|data_out~7_combout\);

-- Location: LCFF_X35_Y26_N21
\registerI:2:registerJ:2:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:2:registerJ:2:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:2:registerJ:2:reg|data_out\(7));

-- Location: LCCOMB_X34_Y29_N28
\ors|output_vec[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[7]~39_combout\ = (\ors|output_vec[7]~37_combout\) # ((\ors|output_vec[7]~38_combout\) # ((\registerI:2:registerJ:3:reg|data_out\(7)) # (\registerI:2:registerJ:2:reg|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[7]~37_combout\,
	datab => \ors|output_vec[7]~38_combout\,
	datac => \registerI:2:registerJ:3:reg|data_out\(7),
	datad => \registerI:2:registerJ:2:reg|data_out\(7),
	combout => \ors|output_vec[7]~39_combout\);

-- Location: LCCOMB_X37_Y28_N12
\registerI:1:registerJ:2:reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|q[7]~feeder_combout\ = \input_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(7),
	combout => \registerI:1:registerJ:2:reg|q[7]~feeder_combout\);

-- Location: LCFF_X37_Y28_N13
\registerI:1:registerJ:2:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|q[7]~feeder_combout\,
	ena => \registerI:1:registerJ:2:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|q\(7));

-- Location: LCCOMB_X37_Y28_N2
\registerI:1:registerJ:2:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:2:reg|data_out~7_combout\ = (\registerI:1:registerJ:2:reg|mux_out~0_combout\ & \registerI:1:registerJ:2:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registerI:1:registerJ:2:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:2:reg|q\(7),
	combout => \registerI:1:registerJ:2:reg|data_out~7_combout\);

-- Location: LCFF_X37_Y28_N3
\registerI:1:registerJ:2:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:2:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:2:reg|data_out\(7));

-- Location: LCCOMB_X37_Y29_N12
\registerI:1:registerJ:3:reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|q[7]~feeder_combout\ = \input_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(7),
	combout => \registerI:1:registerJ:3:reg|q[7]~feeder_combout\);

-- Location: LCFF_X37_Y29_N13
\registerI:1:registerJ:3:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|q[7]~feeder_combout\,
	ena => \registerI:1:registerJ:3:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|q\(7));

-- Location: LCCOMB_X37_Y29_N20
\registerI:1:registerJ:3:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:3:reg|data_out~7_combout\ = (\registerI:1:registerJ:3:reg|mux_out~0_combout\ & \registerI:1:registerJ:3:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \registerI:1:registerJ:3:reg|mux_out~0_combout\,
	datad => \registerI:1:registerJ:3:reg|q\(7),
	combout => \registerI:1:registerJ:3:reg|data_out~7_combout\);

-- Location: LCFF_X37_Y29_N21
\registerI:1:registerJ:3:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:3:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:3:reg|data_out\(7));

-- Location: LCCOMB_X37_Y25_N4
\registerI:1:registerJ:0:reg|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|q[7]~feeder_combout\ = \input_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_data~combout\(7),
	combout => \registerI:1:registerJ:0:reg|q[7]~feeder_combout\);

-- Location: LCFF_X37_Y25_N5
\registerI:1:registerJ:0:reg|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|q[7]~feeder_combout\,
	ena => \registerI:1:registerJ:0:reg|load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|q\(7));

-- Location: LCCOMB_X37_Y25_N14
\registerI:1:registerJ:0:reg|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \registerI:1:registerJ:0:reg|data_out~7_combout\ = (\registerI:1:registerJ:0:reg|mux_out~0_combout\ & \registerI:1:registerJ:0:reg|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:0:reg|mux_out~0_combout\,
	datac => \registerI:1:registerJ:0:reg|q\(7),
	combout => \registerI:1:registerJ:0:reg|data_out~7_combout\);

-- Location: LCFF_X37_Y25_N15
\registerI:1:registerJ:0:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \registerI:1:registerJ:0:reg|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \registerI:1:registerJ:0:reg|data_out\(7));

-- Location: LCCOMB_X37_Y28_N4
\ors|output_vec[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ors|output_vec[7]~36_combout\ = (\registerI:1:registerJ:1:reg|data_out\(7)) # ((\registerI:1:registerJ:2:reg|data_out\(7)) # ((\registerI:1:registerJ:3:reg|data_out\(7)) # (\registerI:1:registerJ:0:reg|data_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \registerI:1:registerJ:1:reg|data_out\(7),
	datab => \registerI:1:registerJ:2:reg|data_out\(7),
	datac => \registerI:1:registerJ:3:reg|data_out\(7),
	datad => \registerI:1:registerJ:0:reg|data_out\(7),
	combout => \ors|output_vec[7]~36_combout\);

-- Location: LCCOMB_X34_Y29_N8
\output_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \output_data~8_combout\ = (\read_option~combout\ & ((\ors|output_vec[7]~35_combout\) # ((\ors|output_vec[7]~39_combout\) # (\ors|output_vec[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ors|output_vec[7]~35_combout\,
	datab => \ors|output_vec[7]~39_combout\,
	datac => \read_option~combout\,
	datad => \ors|output_vec[7]~36_combout\,
	combout => \output_data~8_combout\);

-- Location: LCFF_X34_Y29_N9
\output_data[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \output_data[0]~9clkctrl_outclk\,
	datain => \output_data~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \output_data[7]~reg0_regout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(0));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(1));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(3));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(4));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(6));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \output_data[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output_data(7));
END structure;


