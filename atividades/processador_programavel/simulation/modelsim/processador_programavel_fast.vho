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

-- DATE "11/22/2019 23:54:06"

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

ENTITY 	ula IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	operador : IN std_logic_vector(1 DOWNTO 0);
	saida_ula : OUT std_logic_vector(15 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- saida_ula[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[1]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[2]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[3]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[4]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[5]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[6]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[7]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[8]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[9]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[10]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[11]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[12]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[13]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[14]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_ula[15]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operador[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- operador[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[8]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[8]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[9]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[9]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[10]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[10]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[11]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[11]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[12]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[12]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[13]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[13]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[14]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[14]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[15]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[15]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_operador : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_saida_ula : std_logic_vector(15 DOWNTO 0);
SIGNAL \subtrator|borrow~0_combout\ : std_logic;
SIGNAL \subtrator|borrow~1_combout\ : std_logic;
SIGNAL \subtrator|borrow~2_combout\ : std_logic;
SIGNAL \somador|carry~4_combout\ : std_logic;
SIGNAL \somador|carry~9_combout\ : std_logic;
SIGNAL \subtrator|borrow~7_combout\ : std_logic;
SIGNAL \somador|carry~16_combout\ : std_logic;
SIGNAL \subtrator|resultsubt[15]~2_combout\ : std_logic;
SIGNAL \subtrator|borrow~15_combout\ : std_logic;
SIGNAL \subtrator|borrow~16_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \somador|carry~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \somador|carry~2_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \subtrator|borrow~3_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \somador|carry~1_combout\ : std_logic;
SIGNAL \somador|carry~3_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \somador|carry~5_combout\ : std_logic;
SIGNAL \somador|carry~6_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \subtrator|borrow~4_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \somador|carry~7_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \subtrator|borrow~5_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \subtrator|borrow~6_combout\ : std_logic;
SIGNAL \somador|carry~8_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \somador|carry~10_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \subtrator|borrow~8_combout\ : std_logic;
SIGNAL \somador|carry~11_combout\ : std_logic;
SIGNAL \somador|carry~12_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \subtrator|borrow~9_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \somador|carry~13_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \somador|carry~15_combout\ : std_logic;
SIGNAL \somador|carry~14_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \subtrator|borrow~10_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \somador|carry~18_combout\ : std_logic;
SIGNAL \somador|carry~17_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \subtrator|borrow~12_combout\ : std_logic;
SIGNAL \subtrator|borrow~13_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \somador|carry~19_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \subtrator|borrow~11_combout\ : std_logic;
SIGNAL \subtrator|borrow~14_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \somador|resultado_soma\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \operador~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \subtrator|resultsubt\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_operador <= operador;
saida_ula <= ww_saida_ula;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X27_Y35_N20
\subtrator|borrow~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~0_combout\ = (\a~combout\(0) & (\b~combout\(0) & \subtrator|borrow~16_combout\)) # (!\a~combout\(0) & ((\b~combout\(0)) # (\subtrator|borrow~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(0),
	datad => \subtrator|borrow~16_combout\,
	combout => \subtrator|borrow~0_combout\);

-- Location: LCCOMB_X27_Y35_N22
\subtrator|borrow~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~1_combout\ = (\subtrator|borrow~0_combout\ & ((\b~combout\(1)) # (!\a~combout\(1)))) # (!\subtrator|borrow~0_combout\ & (!\a~combout\(1) & \b~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~0_combout\,
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \subtrator|borrow~1_combout\);

-- Location: LCCOMB_X64_Y31_N6
\subtrator|borrow~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~2_combout\ = (\subtrator|borrow~1_combout\ & ((\b~combout\(2)) # (!\a~combout\(2)))) # (!\subtrator|borrow~1_combout\ & (!\a~combout\(2) & \b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~1_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \subtrator|borrow~2_combout\);

-- Location: LCCOMB_X64_Y30_N26
\somador|carry~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~4_combout\ = (\a~combout\(4) & \b~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datad => \b~combout\(4),
	combout => \somador|carry~4_combout\);

-- Location: LCCOMB_X64_Y30_N2
\somador|carry~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~9_combout\ = (\somador|carry~7_combout\ & ((\a~combout\(6)) # (\b~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datac => \somador|carry~7_combout\,
	datad => \b~combout\(6),
	combout => \somador|carry~9_combout\);

-- Location: LCCOMB_X64_Y33_N10
\subtrator|borrow~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~7_combout\ = (\b~combout\(7) & ((\subtrator|borrow~6_combout\) # (!\a~combout\(7)))) # (!\b~combout\(7) & (\subtrator|borrow~6_combout\ & !\a~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(7),
	datac => \subtrator|borrow~6_combout\,
	datad => \a~combout\(7),
	combout => \subtrator|borrow~7_combout\);

-- Location: LCCOMB_X29_Y35_N26
\somador|carry~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~16_combout\ = (\a~combout\(11) & ((\somador|carry~15_combout\) # ((\somador|carry~14_combout\) # (\b~combout\(11))))) # (!\a~combout\(11) & (\b~combout\(11) & ((\somador|carry~15_combout\) # (\somador|carry~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(11),
	datab => \somador|carry~15_combout\,
	datac => \somador|carry~14_combout\,
	datad => \b~combout\(11),
	combout => \somador|carry~16_combout\);

-- Location: LCCOMB_X27_Y35_N10
\subtrator|resultsubt[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|resultsubt[15]~2_combout\ = \b~combout\(15) $ (\a~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(15),
	datac => \a~combout\(15),
	combout => \subtrator|resultsubt[15]~2_combout\);

-- Location: LCCOMB_X27_Y35_N28
\subtrator|borrow~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~15_combout\ = (\b~combout\(14) & ((\subtrator|borrow~14_combout\) # (!\a~combout\(14)))) # (!\b~combout\(14) & (!\a~combout\(14) & \subtrator|borrow~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(14),
	datac => \a~combout\(14),
	datad => \subtrator|borrow~14_combout\,
	combout => \subtrator|borrow~15_combout\);

-- Location: LCCOMB_X27_Y35_N6
\subtrator|borrow~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~16_combout\ = (\b~combout\(15) & ((\subtrator|borrow~15_combout\) # (!\a~combout\(15)))) # (!\b~combout\(15) & (!\a~combout\(15) & \subtrator|borrow~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(15),
	datac => \a~combout\(15),
	datad => \subtrator|borrow~15_combout\,
	combout => \subtrator|borrow~16_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : cycloneii_io
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
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operador[1]~I\ : cycloneii_io
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
	padio => ww_operador(1),
	combout => \operador~combout\(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\operador[0]~I\ : cycloneii_io
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
	padio => ww_operador(0),
	combout => \operador~combout\(0));

-- Location: LCCOMB_X27_Y35_N0
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = \b~combout\(0) $ (((\subtrator|borrow~16_combout\ & !\operador~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~16_combout\,
	datac => \b~combout\(0),
	datad => \operador~combout\(0),
	combout => \Mux15~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X27_Y35_N26
\Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\operador~combout\(1) & (\Mux15~0_combout\ $ (((\a~combout\(0) & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\a~combout\(0) $ (((\Mux15~0_combout\ & \operador~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \Mux15~0_combout\,
	datac => \a~combout\(0),
	datad => \operador~combout\(0),
	combout => \Mux15~1_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X27_Y35_N14
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = \a~combout\(1) $ (((\a~combout\(0) & (\b~combout\(0) & \operador~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	datad => \operador~combout\(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X27_Y35_N8
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = \Mux14~0_combout\ $ (((\subtrator|borrow~0_combout\ & \operador~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \operador~combout\(1),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X27_Y35_N2
\Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\operador~combout\(1) & (\b~combout\(1) $ (((\Mux14~1_combout\ & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\Mux14~1_combout\ $ (((\b~combout\(1) & \operador~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \b~combout\(1),
	datac => \Mux14~1_combout\,
	datad => \operador~combout\(0),
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X27_Y35_N4
\somador|carry~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~0_combout\ = (\b~combout\(1) & ((\a~combout\(1)) # ((\b~combout\(0) & \a~combout\(0))))) # (!\b~combout\(1) & (\b~combout\(0) & (\a~combout\(0) & \a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \b~combout\(0),
	datac => \a~combout\(0),
	datad => \a~combout\(1),
	combout => \somador|carry~0_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X64_Y31_N8
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = \b~combout\(2) $ (((!\operador~combout\(1) & \somador|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \somador|carry~0_combout\,
	datad => \b~combout\(2),
	combout => \Mux13~0_combout\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X64_Y31_N26
\Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = \a~combout\(2) $ (((\subtrator|borrow~1_combout\ & \operador~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~1_combout\,
	datac => \a~combout\(2),
	datad => \operador~combout\(1),
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X64_Y31_N28
\Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\operador~combout\(1) & (\Mux13~0_combout\ $ (((!\operador~combout\(0) & \Mux13~1_combout\))))) # (!\operador~combout\(1) & (\Mux13~1_combout\ $ (((\operador~combout\(0) & \Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \operador~combout\(0),
	datac => \Mux13~0_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X64_Y31_N18
\somador|carry~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~2_combout\ = (\somador|carry~0_combout\ & ((\a~combout\(2)) # (\b~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somador|carry~0_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \somador|carry~2_combout\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X64_Y31_N20
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = \b~combout\(3) $ (((!\operador~combout\(1) & ((\somador|carry~1_combout\) # (\somador|carry~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~1_combout\,
	datab => \somador|carry~2_combout\,
	datac => \b~combout\(3),
	datad => \operador~combout\(1),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X64_Y31_N30
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\subtrator|borrow~1_combout\ & ((\b~combout\(2)) # (!\a~combout\(2)))) # (!\subtrator|borrow~1_combout\ & (!\a~combout\(2) & \b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~1_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X64_Y31_N14
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = \Mux12~1_combout\ $ (((!\operador~combout\(0) & \Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \operador~combout\(0),
	datac => \Mux12~1_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X64_Y31_N0
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\operador~combout\(1) & (\Mux12~2_combout\ $ (((!\operador~combout\(0) & \a~combout\(3)))))) # (!\operador~combout\(1) & (\a~combout\(3) $ (((\operador~combout\(0) & \Mux12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \operador~combout\(0),
	datac => \Mux12~2_combout\,
	datad => \a~combout\(3),
	combout => \Mux12~3_combout\);

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X64_Y31_N16
\subtrator|borrow~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~3_combout\ = (\subtrator|borrow~2_combout\ & ((\b~combout\(3)) # (!\a~combout\(3)))) # (!\subtrator|borrow~2_combout\ & (\b~combout\(3) & !\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~2_combout\,
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \subtrator|borrow~3_combout\);

-- Location: LCCOMB_X64_Y31_N2
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = \a~combout\(4) $ (((\operador~combout\(1) & \subtrator|borrow~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \a~combout\(4),
	datac => \subtrator|borrow~3_combout\,
	combout => \Mux11~1_combout\);

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LCCOMB_X64_Y31_N24
\somador|carry~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~1_combout\ = (\a~combout\(2) & \b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \somador|carry~1_combout\);

-- Location: LCCOMB_X64_Y31_N10
\somador|carry~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~3_combout\ = (\b~combout\(3) & ((\somador|carry~2_combout\) # ((\somador|carry~1_combout\) # (\a~combout\(3))))) # (!\b~combout\(3) & (\a~combout\(3) & ((\somador|carry~2_combout\) # (\somador|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \somador|carry~2_combout\,
	datac => \somador|carry~1_combout\,
	datad => \a~combout\(3),
	combout => \somador|carry~3_combout\);

-- Location: LCCOMB_X64_Y31_N4
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = \b~combout\(4) $ (((!\operador~combout\(1) & \somador|carry~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datac => \b~combout\(4),
	datad => \somador|carry~3_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X64_Y31_N12
\Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\operador~combout\(1) & (\Mux11~0_combout\ $ (((\Mux11~1_combout\ & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\Mux11~1_combout\ $ (((\Mux11~0_combout\ & \operador~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \Mux11~1_combout\,
	datac => \Mux11~0_combout\,
	datad => \operador~combout\(0),
	combout => \Mux11~2_combout\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X64_Y31_N22
\somador|carry~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~5_combout\ = (\b~combout\(3) & ((\somador|carry~2_combout\) # ((\somador|carry~1_combout\) # (\a~combout\(3))))) # (!\b~combout\(3) & (\a~combout\(3) & ((\somador|carry~2_combout\) # (\somador|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \somador|carry~2_combout\,
	datac => \somador|carry~1_combout\,
	datad => \a~combout\(3),
	combout => \somador|carry~5_combout\);

-- Location: LCCOMB_X64_Y30_N28
\somador|carry~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~6_combout\ = (\somador|carry~5_combout\ & ((\a~combout\(4)) # (\b~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datac => \somador|carry~5_combout\,
	datad => \b~combout\(4),
	combout => \somador|carry~6_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCCOMB_X64_Y30_N22
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = \a~combout\(5) $ (((\operador~combout\(0) & ((\somador|carry~4_combout\) # (\somador|carry~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~4_combout\,
	datab => \somador|carry~6_combout\,
	datac => \operador~combout\(0),
	datad => \a~combout\(5),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X64_Y30_N0
\subtrator|borrow~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~4_combout\ = (\a~combout\(4) & (\subtrator|borrow~3_combout\ & \b~combout\(4))) # (!\a~combout\(4) & ((\subtrator|borrow~3_combout\) # (\b~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(4),
	datac => \subtrator|borrow~3_combout\,
	datad => \b~combout\(4),
	combout => \subtrator|borrow~4_combout\);

-- Location: LCCOMB_X64_Y30_N24
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = \Mux10~0_combout\ $ (((\operador~combout\(1) & \subtrator|borrow~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \Mux10~0_combout\,
	datad => \subtrator|borrow~4_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X64_Y30_N18
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\operador~combout\(0) & (\b~combout\(5) $ (((\Mux10~1_combout\ & !\operador~combout\(1)))))) # (!\operador~combout\(0) & (\Mux10~1_combout\ $ (((\b~combout\(5) & \operador~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(0),
	datab => \b~combout\(5),
	datac => \Mux10~1_combout\,
	datad => \operador~combout\(1),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X64_Y30_N20
\somador|carry~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~7_combout\ = (\b~combout\(5) & ((\somador|carry~4_combout\) # ((\somador|carry~6_combout\) # (\a~combout\(5))))) # (!\b~combout\(5) & (\a~combout\(5) & ((\somador|carry~4_combout\) # (\somador|carry~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~4_combout\,
	datab => \somador|carry~6_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => \somador|carry~7_combout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LCCOMB_X64_Y30_N30
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = \b~combout\(6) $ (((!\operador~combout\(1) & \somador|carry~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datac => \somador|carry~7_combout\,
	datad => \b~combout\(6),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X64_Y30_N16
\subtrator|borrow~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~5_combout\ = (\subtrator|borrow~4_combout\ & ((\b~combout\(5)) # (!\a~combout\(5)))) # (!\subtrator|borrow~4_combout\ & (\b~combout\(5) & !\a~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subtrator|borrow~4_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	combout => \subtrator|borrow~5_combout\);

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCCOMB_X64_Y30_N10
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = \a~combout\(6) $ (((\operador~combout\(1) & \subtrator|borrow~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datac => \subtrator|borrow~5_combout\,
	datad => \a~combout\(6),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X64_Y30_N12
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\operador~combout\(1) & (\Mux9~0_combout\ $ (((!\operador~combout\(0) & \Mux9~1_combout\))))) # (!\operador~combout\(1) & (\Mux9~1_combout\ $ (((\Mux9~0_combout\ & \operador~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \Mux9~0_combout\,
	datac => \operador~combout\(0),
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X64_Y30_N6
\subtrator|borrow~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~6_combout\ = (\a~combout\(6) & (\subtrator|borrow~5_combout\ & \b~combout\(6))) # (!\a~combout\(6) & ((\subtrator|borrow~5_combout\) # (\b~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datac => \subtrator|borrow~5_combout\,
	datad => \b~combout\(6),
	combout => \subtrator|borrow~6_combout\);

-- Location: LCCOMB_X64_Y30_N8
\somador|carry~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~8_combout\ = (\a~combout\(6) & \b~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datad => \b~combout\(6),
	combout => \somador|carry~8_combout\);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCCOMB_X64_Y33_N24
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = \a~combout\(7) $ (((\operador~combout\(0) & ((\somador|carry~9_combout\) # (\somador|carry~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~9_combout\,
	datab => \somador|carry~8_combout\,
	datac => \operador~combout\(0),
	datad => \a~combout\(7),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X64_Y33_N2
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = \Mux8~0_combout\ $ (((\subtrator|borrow~6_combout\ & \operador~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subtrator|borrow~6_combout\,
	datac => \Mux8~0_combout\,
	datad => \operador~combout\(1),
	combout => \Mux8~1_combout\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X64_Y33_N4
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\operador~combout\(0) & (\b~combout\(7) $ (((\Mux8~1_combout\ & !\operador~combout\(1)))))) # (!\operador~combout\(0) & (\Mux8~1_combout\ $ (((\b~combout\(7) & \operador~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(0),
	datab => \Mux8~1_combout\,
	datac => \b~combout\(7),
	datad => \operador~combout\(1),
	combout => \Mux8~2_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : cycloneii_io
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
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LCCOMB_X64_Y33_N28
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = \a~combout\(8) $ (((\subtrator|borrow~7_combout\ & \operador~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~7_combout\,
	datac => \a~combout\(8),
	datad => \operador~combout\(1),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X64_Y33_N30
\somador|carry~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~10_combout\ = (\b~combout\(7) & ((\somador|carry~9_combout\) # ((\somador|carry~8_combout\) # (\a~combout\(7))))) # (!\b~combout\(7) & (\a~combout\(7) & ((\somador|carry~9_combout\) # (\somador|carry~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~9_combout\,
	datab => \b~combout\(7),
	datac => \somador|carry~8_combout\,
	datad => \a~combout\(7),
	combout => \somador|carry~10_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : cycloneii_io
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
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LCCOMB_X64_Y33_N16
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = \b~combout\(8) $ (((!\operador~combout\(1) & \somador|carry~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \somador|carry~10_combout\,
	datad => \b~combout\(8),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X64_Y33_N14
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\operador~combout\(0) & (\Mux7~0_combout\ $ (((\Mux7~1_combout\ & !\operador~combout\(1)))))) # (!\operador~combout\(0) & (\Mux7~1_combout\ $ (((\Mux7~0_combout\ & \operador~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(0),
	datab => \Mux7~1_combout\,
	datac => \Mux7~0_combout\,
	datad => \operador~combout\(1),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X64_Y33_N0
\subtrator|borrow~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~8_combout\ = (\subtrator|borrow~7_combout\ & ((\b~combout\(8)) # (!\a~combout\(8)))) # (!\subtrator|borrow~7_combout\ & (\b~combout\(8) & !\a~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~7_combout\,
	datab => \b~combout\(8),
	datad => \a~combout\(8),
	combout => \subtrator|borrow~8_combout\);

-- Location: LCCOMB_X64_Y33_N26
\somador|carry~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~11_combout\ = (\a~combout\(8) & \b~combout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datad => \b~combout\(8),
	combout => \somador|carry~11_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : cycloneii_io
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
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LCCOMB_X64_Y33_N12
\somador|carry~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~12_combout\ = (\somador|carry~10_combout\ & ((\a~combout\(8)) # (\b~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(8),
	datab => \somador|carry~10_combout\,
	datad => \b~combout\(8),
	combout => \somador|carry~12_combout\);

-- Location: LCCOMB_X64_Y33_N6
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = \a~combout\(9) $ (((\operador~combout\(0) & ((\somador|carry~11_combout\) # (\somador|carry~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(0),
	datab => \somador|carry~11_combout\,
	datac => \a~combout\(9),
	datad => \somador|carry~12_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X64_Y33_N8
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = \Mux6~0_combout\ $ (((\operador~combout\(1) & \subtrator|borrow~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \subtrator|borrow~8_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : cycloneii_io
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
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LCCOMB_X64_Y33_N18
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\operador~combout\(1) & (\b~combout\(9) $ (((\Mux6~1_combout\ & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\Mux6~1_combout\ $ (((\operador~combout\(0) & \b~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \Mux6~1_combout\,
	datac => \operador~combout\(0),
	datad => \b~combout\(9),
	combout => \Mux6~2_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : cycloneii_io
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
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LCCOMB_X64_Y33_N22
\subtrator|borrow~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~9_combout\ = (\subtrator|borrow~8_combout\ & ((\b~combout\(9)) # (!\a~combout\(9)))) # (!\subtrator|borrow~8_combout\ & (!\a~combout\(9) & \b~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subtrator|borrow~8_combout\,
	datac => \a~combout\(9),
	datad => \b~combout\(9),
	combout => \subtrator|borrow~9_combout\);

-- Location: LCCOMB_X29_Y35_N10
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = \a~combout\(10) $ (((\operador~combout\(1) & \subtrator|borrow~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datac => \a~combout\(10),
	datad => \subtrator|borrow~9_combout\,
	combout => \Mux5~1_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : cycloneii_io
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
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LCCOMB_X64_Y33_N20
\somador|carry~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~13_combout\ = (\a~combout\(9) & ((\somador|carry~12_combout\) # ((\somador|carry~11_combout\) # (\b~combout\(9))))) # (!\a~combout\(9) & (\b~combout\(9) & ((\somador|carry~12_combout\) # (\somador|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~12_combout\,
	datab => \somador|carry~11_combout\,
	datac => \a~combout\(9),
	datad => \b~combout\(9),
	combout => \somador|carry~13_combout\);

-- Location: LCCOMB_X29_Y35_N24
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = \b~combout\(10) $ (((!\operador~combout\(1) & \somador|carry~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datac => \b~combout\(10),
	datad => \somador|carry~13_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\operador~combout\(0) & (\Mux5~0_combout\ $ (((\Mux5~1_combout\ & !\operador~combout\(1)))))) # (!\operador~combout\(0) & (\Mux5~1_combout\ $ (((\Mux5~0_combout\ & \operador~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \operador~combout\(0),
	datac => \Mux5~0_combout\,
	datad => \operador~combout\(1),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X29_Y35_N2
\somador|carry~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~15_combout\ = (\somador|carry~13_combout\ & ((\a~combout\(10)) # (\b~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datac => \b~combout\(10),
	datad => \somador|carry~13_combout\,
	combout => \somador|carry~15_combout\);

-- Location: LCCOMB_X29_Y35_N16
\somador|carry~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~14_combout\ = (\a~combout\(10) & \b~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datac => \b~combout\(10),
	combout => \somador|carry~14_combout\);

-- Location: LCCOMB_X29_Y35_N28
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = \a~combout\(11) $ (((\operador~combout\(0) & ((\somador|carry~15_combout\) # (\somador|carry~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(11),
	datab => \somador|carry~15_combout\,
	datac => \operador~combout\(0),
	datad => \somador|carry~14_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X29_Y35_N22
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = \Mux4~0_combout\ $ (((\subtrator|borrow~10_combout\ & \operador~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~10_combout\,
	datab => \Mux4~0_combout\,
	datad => \operador~combout\(1),
	combout => \Mux4~1_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : cycloneii_io
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
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LCCOMB_X29_Y35_N0
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\operador~combout\(1) & (\b~combout\(11) $ (((\Mux4~1_combout\ & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\Mux4~1_combout\ $ (((\operador~combout\(0) & \b~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \Mux4~1_combout\,
	datac => \operador~combout\(0),
	datad => \b~combout\(11),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X29_Y35_N6
\subtrator|borrow~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~10_combout\ = (\a~combout\(10) & (\b~combout\(10) & \subtrator|borrow~9_combout\)) # (!\a~combout\(10) & ((\b~combout\(10)) # (\subtrator|borrow~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(10),
	datac => \b~combout\(10),
	datad => \subtrator|borrow~9_combout\,
	combout => \subtrator|borrow~10_combout\);

-- Location: LCCOMB_X29_Y35_N30
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\operador~combout\(0) & ((\a~combout\(11) & (\b~combout\(11) & \subtrator|borrow~10_combout\)) # (!\a~combout\(11) & ((\b~combout\(11)) # (\subtrator|borrow~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(11),
	datab => \b~combout\(11),
	datac => \operador~combout\(0),
	datad => \subtrator|borrow~10_combout\,
	combout => \Mux3~1_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : cycloneii_io
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
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LCCOMB_X28_Y35_N16
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = \Mux3~1_combout\ $ (\b~combout\(12) $ (((\somador|carry~16_combout\ & !\operador~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~16_combout\,
	datab => \Mux3~1_combout\,
	datac => \b~combout\(12),
	datad => \operador~combout\(1),
	combout => \Mux3~2_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : cycloneii_io
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
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LCCOMB_X28_Y35_N0
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\operador~combout\(1) & (\Mux3~2_combout\ $ (((\a~combout\(12) & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\a~combout\(12) $ (((\Mux3~2_combout\ & \operador~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \a~combout\(12),
	datac => \operador~combout\(1),
	datad => \operador~combout\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X28_Y35_N2
\somador|carry~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~18_combout\ = (\somador|carry~16_combout\ & ((\b~combout\(12)) # (\a~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|carry~16_combout\,
	datac => \b~combout\(12),
	datad => \a~combout\(12),
	combout => \somador|carry~18_combout\);

-- Location: LCCOMB_X28_Y35_N8
\somador|carry~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~17_combout\ = (\b~combout\(12) & \a~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(12),
	datad => \a~combout\(12),
	combout => \somador|carry~17_combout\);

-- Location: LCCOMB_X28_Y35_N12
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = \a~combout\(13) $ (((\operador~combout\(0) & ((\somador|carry~18_combout\) # (\somador|carry~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \somador|carry~18_combout\,
	datac => \somador|carry~17_combout\,
	datad => \operador~combout\(0),
	combout => \Mux2~1_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : cycloneii_io
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
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LCCOMB_X28_Y35_N28
\subtrator|borrow~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~12_combout\ = (\b~combout\(12)) # (!\a~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(12),
	datad => \a~combout\(12),
	combout => \subtrator|borrow~12_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : cycloneii_io
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
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LCCOMB_X29_Y35_N12
\subtrator|borrow~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~13_combout\ = (\subtrator|borrow~12_combout\ & ((\subtrator|borrow~10_combout\ & ((\b~combout\(11)) # (!\a~combout\(11)))) # (!\subtrator|borrow~10_combout\ & (!\a~combout\(11) & \b~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~10_combout\,
	datab => \subtrator|borrow~12_combout\,
	datac => \a~combout\(11),
	datad => \b~combout\(11),
	combout => \subtrator|borrow~13_combout\);

-- Location: LCCOMB_X28_Y35_N30
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = \b~combout\(13) $ (((!\operador~combout\(0) & ((\subtrator|borrow~11_combout\) # (\subtrator|borrow~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~11_combout\,
	datab => \b~combout\(13),
	datac => \subtrator|borrow~13_combout\,
	datad => \operador~combout\(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X28_Y35_N22
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\operador~combout\(1) & (\Mux2~0_combout\ $ (((\Mux2~1_combout\ & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\Mux2~1_combout\ $ (((\Mux2~0_combout\ & \operador~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~0_combout\,
	datac => \operador~combout\(1),
	datad => \operador~combout\(0),
	combout => \Mux2~2_combout\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : cycloneii_io
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
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LCCOMB_X28_Y35_N24
\somador|carry~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|carry~19_combout\ = (\a~combout\(13) & ((\b~combout\(13)) # ((\somador|carry~17_combout\) # (\somador|carry~18_combout\)))) # (!\a~combout\(13) & (\b~combout\(13) & ((\somador|carry~17_combout\) # (\somador|carry~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \b~combout\(13),
	datac => \somador|carry~17_combout\,
	datad => \somador|carry~18_combout\,
	combout => \somador|carry~19_combout\);

-- Location: LCCOMB_X28_Y35_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \b~combout\(14) $ (((\somador|carry~19_combout\ & !\operador~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(14),
	datac => \somador|carry~19_combout\,
	datad => \operador~combout\(1),
	combout => \Mux1~0_combout\);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : cycloneii_io
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
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LCCOMB_X27_Y35_N16
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = \a~combout\(14) $ (((\subtrator|borrow~14_combout\ & \operador~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|borrow~14_combout\,
	datac => \a~combout\(14),
	datad => \operador~combout\(1),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X28_Y35_N6
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\operador~combout\(1) & (\Mux1~0_combout\ $ (((\Mux1~1_combout\ & !\operador~combout\(0)))))) # (!\operador~combout\(1) & (\Mux1~1_combout\ $ (((\Mux1~0_combout\ & \operador~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \Mux1~0_combout\,
	datac => \Mux1~1_combout\,
	datad => \operador~combout\(0),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X27_Y35_N12
\somador|resultado_soma[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \somador|resultado_soma\(15) = \subtrator|resultsubt[15]~2_combout\ $ (((\b~combout\(14) & ((\a~combout\(14)) # (\somador|carry~19_combout\))) # (!\b~combout\(14) & (\a~combout\(14) & \somador|carry~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|resultsubt[15]~2_combout\,
	datab => \b~combout\(14),
	datac => \a~combout\(14),
	datad => \somador|carry~19_combout\,
	combout => \somador|resultado_soma\(15));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : cycloneii_io
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
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LCCOMB_X28_Y35_N10
\subtrator|borrow~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~11_combout\ = (\b~combout\(12) & !\a~combout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(12),
	datad => \a~combout\(12),
	combout => \subtrator|borrow~11_combout\);

-- Location: LCCOMB_X28_Y35_N4
\subtrator|borrow~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|borrow~14_combout\ = (\a~combout\(13) & (\b~combout\(13) & ((\subtrator|borrow~13_combout\) # (\subtrator|borrow~11_combout\)))) # (!\a~combout\(13) & ((\b~combout\(13)) # ((\subtrator|borrow~13_combout\) # (\subtrator|borrow~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \b~combout\(13),
	datac => \subtrator|borrow~13_combout\,
	datad => \subtrator|borrow~11_combout\,
	combout => \subtrator|borrow~14_combout\);

-- Location: LCCOMB_X27_Y35_N30
\subtrator|resultsubt[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtrator|resultsubt\(15) = \subtrator|resultsubt[15]~2_combout\ $ (((\b~combout\(14) & ((\subtrator|borrow~14_combout\) # (!\a~combout\(14)))) # (!\b~combout\(14) & (!\a~combout\(14) & \subtrator|borrow~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtrator|resultsubt[15]~2_combout\,
	datab => \b~combout\(14),
	datac => \a~combout\(14),
	datad => \subtrator|borrow~14_combout\,
	combout => \subtrator|resultsubt\(15));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : cycloneii_io
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
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LCCOMB_X27_Y35_N24
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\operador~combout\(1) & ((\subtrator|resultsubt\(15)) # ((\operador~combout\(0))))) # (!\operador~combout\(1) & (((\a~combout\(15) & !\operador~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \operador~combout\(1),
	datab => \subtrator|resultsubt\(15),
	datac => \a~combout\(15),
	datad => \operador~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X27_Y35_N18
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\b~combout\(15)) # (!\operador~combout\(0))))) # (!\Mux0~0_combout\ & (\somador|resultado_soma\(15) & ((\operador~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|resultado_soma\(15),
	datab => \b~combout\(15),
	datac => \Mux0~0_combout\,
	datad => \operador~combout\(0),
	combout => \Mux0~1_combout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[0]~I\ : cycloneii_io
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
	datain => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(0));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[1]~I\ : cycloneii_io
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
	datain => \Mux14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(1));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[2]~I\ : cycloneii_io
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
	datain => \Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(2));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[3]~I\ : cycloneii_io
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
	datain => \Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(3));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[4]~I\ : cycloneii_io
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
	datain => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(4));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[5]~I\ : cycloneii_io
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
	datain => \Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(5));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[6]~I\ : cycloneii_io
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
	datain => \Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(6));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[7]~I\ : cycloneii_io
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
	datain => \Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(7));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[8]~I\ : cycloneii_io
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
	datain => \Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(8));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[9]~I\ : cycloneii_io
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
	datain => \Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(9));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[10]~I\ : cycloneii_io
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
	datain => \Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(10));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[11]~I\ : cycloneii_io
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
	datain => \Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(11));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[12]~I\ : cycloneii_io
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
	datain => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(12));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[13]~I\ : cycloneii_io
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
	datain => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(13));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[14]~I\ : cycloneii_io
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
	datain => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(14));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_ula[15]~I\ : cycloneii_io
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
	datain => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_ula(15));
END structure;


