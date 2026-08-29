-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/18/2026 19:08:40"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	atividade6 IS
    PORT (
	entrada1 : IN std_logic_vector(7 DOWNTO 0);
	entrada2 : IN std_logic_vector(7 DOWNTO 0);
	entrada3 : IN std_logic_vector(7 DOWNTO 0);
	entrada4 : IN std_logic_vector(7 DOWNTO 0);
	min_out : BUFFER std_logic_vector(7 DOWNTO 0);
	max_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END atividade6;

-- Design Ports Information
-- min_out[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_out[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[6]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[3]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada3[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada4[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF atividade6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entrada2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entrada3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entrada4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_min_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_max_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \min_out[0]~output_o\ : std_logic;
SIGNAL \min_out[1]~output_o\ : std_logic;
SIGNAL \min_out[2]~output_o\ : std_logic;
SIGNAL \min_out[3]~output_o\ : std_logic;
SIGNAL \min_out[4]~output_o\ : std_logic;
SIGNAL \min_out[5]~output_o\ : std_logic;
SIGNAL \min_out[6]~output_o\ : std_logic;
SIGNAL \min_out[7]~output_o\ : std_logic;
SIGNAL \max_out[0]~output_o\ : std_logic;
SIGNAL \max_out[1]~output_o\ : std_logic;
SIGNAL \max_out[2]~output_o\ : std_logic;
SIGNAL \max_out[3]~output_o\ : std_logic;
SIGNAL \max_out[4]~output_o\ : std_logic;
SIGNAL \max_out[5]~output_o\ : std_logic;
SIGNAL \max_out[6]~output_o\ : std_logic;
SIGNAL \max_out[7]~output_o\ : std_logic;
SIGNAL \entrada3[0]~input_o\ : std_logic;
SIGNAL \entrada2[7]~input_o\ : std_logic;
SIGNAL \entrada1[7]~input_o\ : std_logic;
SIGNAL \entrada2[6]~input_o\ : std_logic;
SIGNAL \entrada1[6]~input_o\ : std_logic;
SIGNAL \entrada2[5]~input_o\ : std_logic;
SIGNAL \entrada1[5]~input_o\ : std_logic;
SIGNAL \entrada2[4]~input_o\ : std_logic;
SIGNAL \entrada1[4]~input_o\ : std_logic;
SIGNAL \entrada2[3]~input_o\ : std_logic;
SIGNAL \entrada1[3]~input_o\ : std_logic;
SIGNAL \entrada2[2]~input_o\ : std_logic;
SIGNAL \entrada1[2]~input_o\ : std_logic;
SIGNAL \entrada2[1]~input_o\ : std_logic;
SIGNAL \entrada1[1]~input_o\ : std_logic;
SIGNAL \entrada1[0]~input_o\ : std_logic;
SIGNAL \entrada2[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \temp_min~1_combout\ : std_logic;
SIGNAL \entrada3[7]~input_o\ : std_logic;
SIGNAL \temp_min~2_combout\ : std_logic;
SIGNAL \entrada3[6]~input_o\ : std_logic;
SIGNAL \entrada3[5]~input_o\ : std_logic;
SIGNAL \temp_min~3_combout\ : std_logic;
SIGNAL \temp_min~4_combout\ : std_logic;
SIGNAL \entrada3[4]~input_o\ : std_logic;
SIGNAL \entrada3[3]~input_o\ : std_logic;
SIGNAL \temp_min~5_combout\ : std_logic;
SIGNAL \entrada3[2]~input_o\ : std_logic;
SIGNAL \temp_min~6_combout\ : std_logic;
SIGNAL \temp_min~7_combout\ : std_logic;
SIGNAL \entrada3[1]~input_o\ : std_logic;
SIGNAL \temp_min~0_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \temp_min~8_combout\ : std_logic;
SIGNAL \temp_min~9_combout\ : std_logic;
SIGNAL \entrada4[7]~input_o\ : std_logic;
SIGNAL \temp_min~10_combout\ : std_logic;
SIGNAL \entrada4[6]~input_o\ : std_logic;
SIGNAL \entrada4[5]~input_o\ : std_logic;
SIGNAL \temp_min~11_combout\ : std_logic;
SIGNAL \temp_min~12_combout\ : std_logic;
SIGNAL \entrada4[4]~input_o\ : std_logic;
SIGNAL \temp_min~13_combout\ : std_logic;
SIGNAL \entrada4[3]~input_o\ : std_logic;
SIGNAL \entrada4[2]~input_o\ : std_logic;
SIGNAL \temp_min~14_combout\ : std_logic;
SIGNAL \temp_min~15_combout\ : std_logic;
SIGNAL \entrada4[1]~input_o\ : std_logic;
SIGNAL \entrada4[0]~input_o\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \temp_min~16_combout\ : std_logic;
SIGNAL \temp_min~17_combout\ : std_logic;
SIGNAL \temp_min~18_combout\ : std_logic;
SIGNAL \temp_min~19_combout\ : std_logic;
SIGNAL \temp_min~20_combout\ : std_logic;
SIGNAL \temp_min~21_combout\ : std_logic;
SIGNAL \temp_min~22_combout\ : std_logic;
SIGNAL \temp_min~23_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \temp_max~0_combout\ : std_logic;
SIGNAL \temp_max~1_combout\ : std_logic;
SIGNAL \temp_max~2_combout\ : std_logic;
SIGNAL \temp_max~3_combout\ : std_logic;
SIGNAL \temp_max~4_combout\ : std_logic;
SIGNAL \temp_max~5_combout\ : std_logic;
SIGNAL \temp_max~6_combout\ : std_logic;
SIGNAL \temp_max~7_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \temp_max~8_combout\ : std_logic;
SIGNAL \temp_max~9_combout\ : std_logic;
SIGNAL \temp_max~10_combout\ : std_logic;
SIGNAL \temp_max~11_combout\ : std_logic;
SIGNAL \temp_max~12_combout\ : std_logic;
SIGNAL \temp_max~13_combout\ : std_logic;
SIGNAL \temp_max~14_combout\ : std_logic;
SIGNAL \temp_max~15_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~14_combout\ : std_logic;
SIGNAL \temp_max~16_combout\ : std_logic;
SIGNAL \temp_max~17_combout\ : std_logic;
SIGNAL \temp_max~18_combout\ : std_logic;
SIGNAL \temp_max~19_combout\ : std_logic;
SIGNAL \temp_max~20_combout\ : std_logic;
SIGNAL \temp_max~21_combout\ : std_logic;
SIGNAL \temp_max~22_combout\ : std_logic;
SIGNAL \temp_max~23_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada1 <= entrada1;
ww_entrada2 <= entrada2;
ww_entrada3 <= entrada3;
ww_entrada4 <= entrada4;
min_out <= ww_min_out;
max_out <= ww_max_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N23
\min_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~16_combout\,
	devoe => ww_devoe,
	o => \min_out[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\min_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~17_combout\,
	devoe => ww_devoe,
	o => \min_out[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\min_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~18_combout\,
	devoe => ww_devoe,
	o => \min_out[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\min_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~19_combout\,
	devoe => ww_devoe,
	o => \min_out[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\min_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~20_combout\,
	devoe => ww_devoe,
	o => \min_out[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\min_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~21_combout\,
	devoe => ww_devoe,
	o => \min_out[5]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\min_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~22_combout\,
	devoe => ww_devoe,
	o => \min_out[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\min_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_min~23_combout\,
	devoe => ww_devoe,
	o => \min_out[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\max_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~16_combout\,
	devoe => ww_devoe,
	o => \max_out[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\max_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~17_combout\,
	devoe => ww_devoe,
	o => \max_out[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\max_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~18_combout\,
	devoe => ww_devoe,
	o => \max_out[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\max_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~19_combout\,
	devoe => ww_devoe,
	o => \max_out[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\max_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~20_combout\,
	devoe => ww_devoe,
	o => \max_out[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\max_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~21_combout\,
	devoe => ww_devoe,
	o => \max_out[5]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\max_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~22_combout\,
	devoe => ww_devoe,
	o => \max_out[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\max_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_max~23_combout\,
	devoe => ww_devoe,
	o => \max_out[7]~output_o\);

-- Location: IOIBUF_X54_Y54_N15
\entrada3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(0),
	o => \entrada3[0]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\entrada2[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(7),
	o => \entrada2[7]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\entrada1[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(7),
	o => \entrada1[7]~input_o\);

-- Location: IOIBUF_X34_Y39_N29
\entrada2[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(6),
	o => \entrada2[6]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\entrada1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(6),
	o => \entrada1[6]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\entrada2[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(5),
	o => \entrada2[5]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\entrada1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(5),
	o => \entrada1[5]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\entrada2[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(4),
	o => \entrada2[4]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\entrada1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(4),
	o => \entrada1[4]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\entrada2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(3),
	o => \entrada2[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\entrada1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(3),
	o => \entrada1[3]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\entrada2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(2),
	o => \entrada2[2]~input_o\);

-- Location: IOIBUF_X29_Y39_N8
\entrada1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(2),
	o => \entrada1[2]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\entrada2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(1),
	o => \entrada2[1]~input_o\);

-- Location: IOIBUF_X36_Y39_N22
\entrada1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(1),
	o => \entrada1[1]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\entrada1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(0),
	o => \entrada1[0]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\entrada2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(0),
	o => \entrada2[0]~input_o\);

-- Location: LCCOMB_X36_Y38_N10
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\entrada1[0]~input_o\ & !\entrada2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[0]~input_o\,
	datab => \entrada2[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X36_Y38_N12
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\entrada2[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\entrada1[1]~input_o\))) # (!\entrada2[1]~input_o\ & (!\entrada1[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[1]~input_o\,
	datab => \entrada1[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X36_Y38_N14
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\entrada2[2]~input_o\ & (\entrada1[2]~input_o\ & !\LessThan0~3_cout\)) # (!\entrada2[2]~input_o\ & ((\entrada1[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[2]~input_o\,
	datab => \entrada1[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X36_Y38_N16
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\entrada2[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\entrada1[3]~input_o\))) # (!\entrada2[3]~input_o\ & (!\entrada1[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[3]~input_o\,
	datab => \entrada1[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X36_Y38_N18
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\entrada2[4]~input_o\ & (\entrada1[4]~input_o\ & !\LessThan0~7_cout\)) # (!\entrada2[4]~input_o\ & ((\entrada1[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[4]~input_o\,
	datab => \entrada1[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X36_Y38_N20
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\entrada2[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\entrada1[5]~input_o\))) # (!\entrada2[5]~input_o\ & (!\entrada1[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[5]~input_o\,
	datab => \entrada1[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X36_Y38_N22
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\entrada2[6]~input_o\ & (\entrada1[6]~input_o\ & !\LessThan0~11_cout\)) # (!\entrada2[6]~input_o\ & ((\entrada1[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[6]~input_o\,
	datab => \entrada1[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X36_Y38_N24
\LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\entrada2[7]~input_o\ & (\LessThan0~13_cout\ & \entrada1[7]~input_o\)) # (!\entrada2[7]~input_o\ & ((\LessThan0~13_cout\) # (\entrada1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[7]~input_o\,
	datad => \entrada1[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X36_Y38_N26
\temp_min~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~1_combout\ = (\LessThan0~14_combout\ & (\entrada2[7]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~14_combout\,
	datac => \entrada2[7]~input_o\,
	datad => \entrada1[7]~input_o\,
	combout => \temp_min~1_combout\);

-- Location: IOIBUF_X56_Y54_N15
\entrada3[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(7),
	o => \entrada3[7]~input_o\);

-- Location: LCCOMB_X36_Y38_N28
\temp_min~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~2_combout\ = (\LessThan0~14_combout\ & (\entrada2[6]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[6]~input_o\,
	datab => \entrada1[6]~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \temp_min~2_combout\);

-- Location: IOIBUF_X56_Y54_N22
\entrada3[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(6),
	o => \entrada3[6]~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\entrada3[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(5),
	o => \entrada3[5]~input_o\);

-- Location: LCCOMB_X36_Y38_N30
\temp_min~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~3_combout\ = (\LessThan0~14_combout\ & (\entrada2[5]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[5]~input_o\,
	datac => \entrada1[5]~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \temp_min~3_combout\);

-- Location: LCCOMB_X36_Y38_N0
\temp_min~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~4_combout\ = (\LessThan0~14_combout\ & (\entrada2[4]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[4]~input_o\,
	datac => \entrada1[4]~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \temp_min~4_combout\);

-- Location: IOIBUF_X49_Y54_N1
\entrada3[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(4),
	o => \entrada3[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N22
\entrada3[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(3),
	o => \entrada3[3]~input_o\);

-- Location: LCCOMB_X36_Y38_N2
\temp_min~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~5_combout\ = (\LessThan0~14_combout\ & (\entrada2[3]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[3]~input_o\,
	datac => \entrada1[3]~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \temp_min~5_combout\);

-- Location: IOIBUF_X51_Y54_N15
\entrada3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(2),
	o => \entrada3[2]~input_o\);

-- Location: LCCOMB_X36_Y38_N4
\temp_min~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~6_combout\ = (\LessThan0~14_combout\ & (\entrada2[2]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[2]~input_o\,
	datac => \entrada1[2]~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \temp_min~6_combout\);

-- Location: LCCOMB_X36_Y38_N6
\temp_min~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~7_combout\ = (\LessThan0~14_combout\ & (\entrada2[1]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[1]~input_o\,
	datab => \LessThan0~14_combout\,
	datac => \entrada1[1]~input_o\,
	combout => \temp_min~7_combout\);

-- Location: IOIBUF_X54_Y54_N22
\entrada3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada3(1),
	o => \entrada3[1]~input_o\);

-- Location: LCCOMB_X36_Y38_N8
\temp_min~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~0_combout\ = (\LessThan0~14_combout\ & (\entrada2[0]~input_o\)) # (!\LessThan0~14_combout\ & ((\entrada1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada2[0]~input_o\,
	datac => \entrada1[0]~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \temp_min~0_combout\);

-- Location: LCCOMB_X51_Y50_N14
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!\entrada3[0]~input_o\ & \temp_min~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[0]~input_o\,
	datab => \temp_min~0_combout\,
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X51_Y50_N16
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\temp_min~7_combout\ & (\entrada3[1]~input_o\ & !\LessThan2~1_cout\)) # (!\temp_min~7_combout\ & ((\entrada3[1]~input_o\) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~7_combout\,
	datab => \entrada3[1]~input_o\,
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X51_Y50_N18
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\entrada3[2]~input_o\ & (\temp_min~6_combout\ & !\LessThan2~3_cout\)) # (!\entrada3[2]~input_o\ & ((\temp_min~6_combout\) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[2]~input_o\,
	datab => \temp_min~6_combout\,
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X51_Y50_N20
\LessThan2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\entrada3[3]~input_o\ & ((!\LessThan2~5_cout\) # (!\temp_min~5_combout\))) # (!\entrada3[3]~input_o\ & (!\temp_min~5_combout\ & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[3]~input_o\,
	datab => \temp_min~5_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X51_Y50_N22
\LessThan2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\temp_min~4_combout\ & ((!\LessThan2~7_cout\) # (!\entrada3[4]~input_o\))) # (!\temp_min~4_combout\ & (!\entrada3[4]~input_o\ & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~4_combout\,
	datab => \entrada3[4]~input_o\,
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X51_Y50_N24
\LessThan2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\entrada3[5]~input_o\ & ((!\LessThan2~9_cout\) # (!\temp_min~3_combout\))) # (!\entrada3[5]~input_o\ & (!\temp_min~3_combout\ & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[5]~input_o\,
	datab => \temp_min~3_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X51_Y50_N26
\LessThan2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\temp_min~2_combout\ & ((!\LessThan2~11_cout\) # (!\entrada3[6]~input_o\))) # (!\temp_min~2_combout\ & (!\entrada3[6]~input_o\ & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~2_combout\,
	datab => \entrada3[6]~input_o\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X51_Y50_N28
\LessThan2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (\temp_min~1_combout\ & ((\LessThan2~13_cout\) # (!\entrada3[7]~input_o\))) # (!\temp_min~1_combout\ & (\LessThan2~13_cout\ & !\entrada3[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp_min~1_combout\,
	datad => \entrada3[7]~input_o\,
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X51_Y50_N8
\temp_min~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~8_combout\ = (\LessThan2~14_combout\ & (\entrada3[0]~input_o\)) # (!\LessThan2~14_combout\ & ((\temp_min~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[0]~input_o\,
	datab => \LessThan2~14_combout\,
	datac => \temp_min~0_combout\,
	combout => \temp_min~8_combout\);

-- Location: LCCOMB_X51_Y50_N10
\temp_min~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~9_combout\ = (\LessThan2~14_combout\ & ((\entrada3[7]~input_o\))) # (!\LessThan2~14_combout\ & (\temp_min~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~14_combout\,
	datac => \temp_min~1_combout\,
	datad => \entrada3[7]~input_o\,
	combout => \temp_min~9_combout\);

-- Location: IOIBUF_X58_Y54_N15
\entrada4[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(7),
	o => \entrada4[7]~input_o\);

-- Location: LCCOMB_X51_Y50_N12
\temp_min~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~10_combout\ = (\LessThan2~14_combout\ & ((\entrada3[6]~input_o\))) # (!\LessThan2~14_combout\ & (\temp_min~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~14_combout\,
	datac => \temp_min~2_combout\,
	datad => \entrada3[6]~input_o\,
	combout => \temp_min~10_combout\);

-- Location: IOIBUF_X66_Y54_N22
\entrada4[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(6),
	o => \entrada4[6]~input_o\);

-- Location: IOIBUF_X54_Y54_N8
\entrada4[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(5),
	o => \entrada4[5]~input_o\);

-- Location: LCCOMB_X51_Y50_N30
\temp_min~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~11_combout\ = (\LessThan2~14_combout\ & ((\entrada3[5]~input_o\))) # (!\LessThan2~14_combout\ & (\temp_min~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_min~3_combout\,
	datac => \entrada3[5]~input_o\,
	datad => \LessThan2~14_combout\,
	combout => \temp_min~11_combout\);

-- Location: LCCOMB_X51_Y50_N0
\temp_min~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~12_combout\ = (\LessThan2~14_combout\ & (\entrada3[4]~input_o\)) # (!\LessThan2~14_combout\ & ((\temp_min~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada3[4]~input_o\,
	datac => \temp_min~4_combout\,
	datad => \LessThan2~14_combout\,
	combout => \temp_min~12_combout\);

-- Location: IOIBUF_X54_Y54_N29
\entrada4[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(4),
	o => \entrada4[4]~input_o\);

-- Location: LCCOMB_X51_Y50_N2
\temp_min~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~13_combout\ = (\LessThan2~14_combout\ & (\entrada3[3]~input_o\)) # (!\LessThan2~14_combout\ & ((\temp_min~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[3]~input_o\,
	datab => \temp_min~5_combout\,
	datad => \LessThan2~14_combout\,
	combout => \temp_min~13_combout\);

-- Location: IOIBUF_X60_Y54_N29
\entrada4[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(3),
	o => \entrada4[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\entrada4[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(2),
	o => \entrada4[2]~input_o\);

-- Location: LCCOMB_X51_Y50_N4
\temp_min~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~14_combout\ = (\LessThan2~14_combout\ & ((\entrada3[2]~input_o\))) # (!\LessThan2~14_combout\ & (\temp_min~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~14_combout\,
	datac => \temp_min~6_combout\,
	datad => \entrada3[2]~input_o\,
	combout => \temp_min~14_combout\);

-- Location: LCCOMB_X51_Y50_N6
\temp_min~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~15_combout\ = (\LessThan2~14_combout\ & ((\entrada3[1]~input_o\))) # (!\LessThan2~14_combout\ & (\temp_min~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~7_combout\,
	datab => \LessThan2~14_combout\,
	datad => \entrada3[1]~input_o\,
	combout => \temp_min~15_combout\);

-- Location: IOIBUF_X58_Y54_N29
\entrada4[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(1),
	o => \entrada4[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N8
\entrada4[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada4(0),
	o => \entrada4[0]~input_o\);

-- Location: LCCOMB_X52_Y50_N8
\LessThan4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((!\entrada4[0]~input_o\ & \temp_min~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[0]~input_o\,
	datab => \temp_min~8_combout\,
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X52_Y50_N10
\LessThan4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\temp_min~15_combout\ & (\entrada4[1]~input_o\ & !\LessThan4~1_cout\)) # (!\temp_min~15_combout\ & ((\entrada4[1]~input_o\) # (!\LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~15_combout\,
	datab => \entrada4[1]~input_o\,
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X52_Y50_N12
\LessThan4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((\entrada4[2]~input_o\ & (\temp_min~14_combout\ & !\LessThan4~3_cout\)) # (!\entrada4[2]~input_o\ & ((\temp_min~14_combout\) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[2]~input_o\,
	datab => \temp_min~14_combout\,
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X52_Y50_N14
\LessThan4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\temp_min~13_combout\ & (\entrada4[3]~input_o\ & !\LessThan4~5_cout\)) # (!\temp_min~13_combout\ & ((\entrada4[3]~input_o\) # (!\LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~13_combout\,
	datab => \entrada4[3]~input_o\,
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X52_Y50_N16
\LessThan4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((\temp_min~12_combout\ & ((!\LessThan4~7_cout\) # (!\entrada4[4]~input_o\))) # (!\temp_min~12_combout\ & (!\entrada4[4]~input_o\ & !\LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~12_combout\,
	datab => \entrada4[4]~input_o\,
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X52_Y50_N18
\LessThan4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((\entrada4[5]~input_o\ & ((!\LessThan4~9_cout\) # (!\temp_min~11_combout\))) # (!\entrada4[5]~input_o\ & (!\temp_min~11_combout\ & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[5]~input_o\,
	datab => \temp_min~11_combout\,
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X52_Y50_N20
\LessThan4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\temp_min~10_combout\ & ((!\LessThan4~11_cout\) # (!\entrada4[6]~input_o\))) # (!\temp_min~10_combout\ & (!\entrada4[6]~input_o\ & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~10_combout\,
	datab => \entrada4[6]~input_o\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X52_Y50_N22
\LessThan4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (\temp_min~9_combout\ & ((\LessThan4~13_cout\) # (!\entrada4[7]~input_o\))) # (!\temp_min~9_combout\ & (\LessThan4~13_cout\ & !\entrada4[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~9_combout\,
	datad => \entrada4[7]~input_o\,
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

-- Location: LCCOMB_X52_Y50_N0
\temp_min~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~16_combout\ = (\LessThan4~14_combout\ & ((\entrada4[0]~input_o\))) # (!\LessThan4~14_combout\ & (\temp_min~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_min~8_combout\,
	datac => \LessThan4~14_combout\,
	datad => \entrada4[0]~input_o\,
	combout => \temp_min~16_combout\);

-- Location: LCCOMB_X52_Y50_N2
\temp_min~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~17_combout\ = (\LessThan4~14_combout\ & ((\entrada4[1]~input_o\))) # (!\LessThan4~14_combout\ & (\temp_min~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_min~15_combout\,
	datac => \LessThan4~14_combout\,
	datad => \entrada4[1]~input_o\,
	combout => \temp_min~17_combout\);

-- Location: LCCOMB_X52_Y50_N4
\temp_min~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~18_combout\ = (\LessThan4~14_combout\ & (\entrada4[2]~input_o\)) # (!\LessThan4~14_combout\ & ((\temp_min~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[2]~input_o\,
	datab => \temp_min~14_combout\,
	datac => \LessThan4~14_combout\,
	combout => \temp_min~18_combout\);

-- Location: LCCOMB_X52_Y50_N6
\temp_min~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~19_combout\ = (\LessThan4~14_combout\ & ((\entrada4[3]~input_o\))) # (!\LessThan4~14_combout\ & (\temp_min~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~13_combout\,
	datac => \LessThan4~14_combout\,
	datad => \entrada4[3]~input_o\,
	combout => \temp_min~19_combout\);

-- Location: LCCOMB_X52_Y50_N24
\temp_min~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~20_combout\ = (\LessThan4~14_combout\ & ((\entrada4[4]~input_o\))) # (!\LessThan4~14_combout\ & (\temp_min~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~12_combout\,
	datab => \entrada4[4]~input_o\,
	datac => \LessThan4~14_combout\,
	combout => \temp_min~20_combout\);

-- Location: LCCOMB_X52_Y50_N26
\temp_min~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~21_combout\ = (\LessThan4~14_combout\ & ((\entrada4[5]~input_o\))) # (!\LessThan4~14_combout\ & (\temp_min~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp_min~11_combout\,
	datac => \LessThan4~14_combout\,
	datad => \entrada4[5]~input_o\,
	combout => \temp_min~21_combout\);

-- Location: LCCOMB_X52_Y50_N28
\temp_min~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~22_combout\ = (\LessThan4~14_combout\ & ((\entrada4[6]~input_o\))) # (!\LessThan4~14_combout\ & (\temp_min~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~10_combout\,
	datab => \entrada4[6]~input_o\,
	datac => \LessThan4~14_combout\,
	combout => \temp_min~22_combout\);

-- Location: LCCOMB_X52_Y50_N30
\temp_min~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_min~23_combout\ = (\LessThan4~14_combout\ & ((\entrada4[7]~input_o\))) # (!\LessThan4~14_combout\ & (\temp_min~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_min~9_combout\,
	datac => \LessThan4~14_combout\,
	datad => \entrada4[7]~input_o\,
	combout => \temp_min~23_combout\);

-- Location: LCCOMB_X35_Y38_N0
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((\entrada2[0]~input_o\ & !\entrada1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[0]~input_o\,
	datab => \entrada1[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X35_Y38_N2
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\entrada2[1]~input_o\ & (\entrada1[1]~input_o\ & !\LessThan1~1_cout\)) # (!\entrada2[1]~input_o\ & ((\entrada1[1]~input_o\) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[1]~input_o\,
	datab => \entrada1[1]~input_o\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X35_Y38_N4
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\entrada1[2]~input_o\ & (\entrada2[2]~input_o\ & !\LessThan1~3_cout\)) # (!\entrada1[2]~input_o\ & ((\entrada2[2]~input_o\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[2]~input_o\,
	datab => \entrada2[2]~input_o\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X35_Y38_N6
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\entrada1[3]~input_o\ & ((!\LessThan1~5_cout\) # (!\entrada2[3]~input_o\))) # (!\entrada1[3]~input_o\ & (!\entrada2[3]~input_o\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[3]~input_o\,
	datab => \entrada2[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X35_Y38_N8
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\entrada2[4]~input_o\ & ((!\LessThan1~7_cout\) # (!\entrada1[4]~input_o\))) # (!\entrada2[4]~input_o\ & (!\entrada1[4]~input_o\ & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[4]~input_o\,
	datab => \entrada1[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X35_Y38_N10
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\entrada1[5]~input_o\ & ((!\LessThan1~9_cout\) # (!\entrada2[5]~input_o\))) # (!\entrada1[5]~input_o\ & (!\entrada2[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[5]~input_o\,
	datab => \entrada2[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X35_Y38_N12
\LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\entrada1[6]~input_o\ & (\entrada2[6]~input_o\ & !\LessThan1~11_cout\)) # (!\entrada1[6]~input_o\ & ((\entrada2[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[6]~input_o\,
	datab => \entrada2[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X35_Y38_N14
\LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\entrada2[7]~input_o\ & ((\LessThan1~13_cout\) # (!\entrada1[7]~input_o\))) # (!\entrada2[7]~input_o\ & (\LessThan1~13_cout\ & !\entrada1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[7]~input_o\,
	datad => \entrada1[7]~input_o\,
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X35_Y38_N24
\temp_max~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~0_combout\ = (\LessThan1~14_combout\ & (\entrada2[0]~input_o\)) # (!\LessThan1~14_combout\ & ((\entrada1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[0]~input_o\,
	datac => \LessThan1~14_combout\,
	datad => \entrada1[0]~input_o\,
	combout => \temp_max~0_combout\);

-- Location: LCCOMB_X35_Y38_N26
\temp_max~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~1_combout\ = (\LessThan1~14_combout\ & (\entrada2[7]~input_o\)) # (!\LessThan1~14_combout\ & ((\entrada1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[7]~input_o\,
	datac => \LessThan1~14_combout\,
	datad => \entrada1[7]~input_o\,
	combout => \temp_max~1_combout\);

-- Location: LCCOMB_X35_Y38_N20
\temp_max~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~2_combout\ = (\LessThan1~14_combout\ & ((\entrada2[6]~input_o\))) # (!\LessThan1~14_combout\ & (\entrada1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[6]~input_o\,
	datac => \LessThan1~14_combout\,
	datad => \entrada2[6]~input_o\,
	combout => \temp_max~2_combout\);

-- Location: LCCOMB_X35_Y38_N30
\temp_max~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~3_combout\ = (\LessThan1~14_combout\ & ((\entrada2[5]~input_o\))) # (!\LessThan1~14_combout\ & (\entrada1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[5]~input_o\,
	datab => \entrada2[5]~input_o\,
	datac => \LessThan1~14_combout\,
	combout => \temp_max~3_combout\);

-- Location: LCCOMB_X35_Y38_N16
\temp_max~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~4_combout\ = (\LessThan1~14_combout\ & (\entrada2[4]~input_o\)) # (!\LessThan1~14_combout\ & ((\entrada1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[4]~input_o\,
	datab => \entrada1[4]~input_o\,
	datac => \LessThan1~14_combout\,
	combout => \temp_max~4_combout\);

-- Location: LCCOMB_X35_Y38_N18
\temp_max~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~5_combout\ = (\LessThan1~14_combout\ & (\entrada2[3]~input_o\)) # (!\LessThan1~14_combout\ & ((\entrada1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[3]~input_o\,
	datac => \LessThan1~14_combout\,
	datad => \entrada1[3]~input_o\,
	combout => \temp_max~5_combout\);

-- Location: LCCOMB_X35_Y38_N28
\temp_max~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~6_combout\ = (\LessThan1~14_combout\ & ((\entrada2[2]~input_o\))) # (!\LessThan1~14_combout\ & (\entrada1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[2]~input_o\,
	datac => \LessThan1~14_combout\,
	datad => \entrada2[2]~input_o\,
	combout => \temp_max~6_combout\);

-- Location: LCCOMB_X35_Y38_N22
\temp_max~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~7_combout\ = (\LessThan1~14_combout\ & (\entrada2[1]~input_o\)) # (!\LessThan1~14_combout\ & ((\entrada1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[1]~input_o\,
	datab => \entrada1[1]~input_o\,
	datac => \LessThan1~14_combout\,
	combout => \temp_max~7_combout\);

-- Location: LCCOMB_X56_Y50_N4
\LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((\entrada3[0]~input_o\ & !\temp_max~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[0]~input_o\,
	datab => \temp_max~0_combout\,
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X56_Y50_N6
\LessThan3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((\entrada3[1]~input_o\ & (\temp_max~7_combout\ & !\LessThan3~1_cout\)) # (!\entrada3[1]~input_o\ & ((\temp_max~7_combout\) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[1]~input_o\,
	datab => \temp_max~7_combout\,
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X56_Y50_N8
\LessThan3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\entrada3[2]~input_o\ & ((!\LessThan3~3_cout\) # (!\temp_max~6_combout\))) # (!\entrada3[2]~input_o\ & (!\temp_max~6_combout\ & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[2]~input_o\,
	datab => \temp_max~6_combout\,
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X56_Y50_N10
\LessThan3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((\entrada3[3]~input_o\ & (\temp_max~5_combout\ & !\LessThan3~5_cout\)) # (!\entrada3[3]~input_o\ & ((\temp_max~5_combout\) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[3]~input_o\,
	datab => \temp_max~5_combout\,
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X56_Y50_N12
\LessThan3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\temp_max~4_combout\ & (\entrada3[4]~input_o\ & !\LessThan3~7_cout\)) # (!\temp_max~4_combout\ & ((\entrada3[4]~input_o\) # (!\LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~4_combout\,
	datab => \entrada3[4]~input_o\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X56_Y50_N14
\LessThan3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\temp_max~3_combout\ & ((!\LessThan3~9_cout\) # (!\entrada3[5]~input_o\))) # (!\temp_max~3_combout\ & (!\entrada3[5]~input_o\ & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~3_combout\,
	datab => \entrada3[5]~input_o\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X56_Y50_N16
\LessThan3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((\temp_max~2_combout\ & (\entrada3[6]~input_o\ & !\LessThan3~11_cout\)) # (!\temp_max~2_combout\ & ((\entrada3[6]~input_o\) # (!\LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~2_combout\,
	datab => \entrada3[6]~input_o\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X56_Y50_N18
\LessThan3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (\temp_max~1_combout\ & (\entrada3[7]~input_o\ & \LessThan3~13_cout\)) # (!\temp_max~1_combout\ & ((\entrada3[7]~input_o\) # (\LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~1_combout\,
	datab => \entrada3[7]~input_o\,
	cin => \LessThan3~13_cout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X56_Y50_N0
\temp_max~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~8_combout\ = (\LessThan3~14_combout\ & (\entrada3[0]~input_o\)) # (!\LessThan3~14_combout\ & ((\temp_max~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[0]~input_o\,
	datac => \temp_max~0_combout\,
	datad => \LessThan3~14_combout\,
	combout => \temp_max~8_combout\);

-- Location: LCCOMB_X56_Y50_N2
\temp_max~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~9_combout\ = (\LessThan3~14_combout\ & ((\entrada3[7]~input_o\))) # (!\LessThan3~14_combout\ & (\temp_max~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~1_combout\,
	datab => \LessThan3~14_combout\,
	datac => \entrada3[7]~input_o\,
	combout => \temp_max~9_combout\);

-- Location: LCCOMB_X56_Y50_N20
\temp_max~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~10_combout\ = (\LessThan3~14_combout\ & ((\entrada3[6]~input_o\))) # (!\LessThan3~14_combout\ & (\temp_max~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~2_combout\,
	datab => \LessThan3~14_combout\,
	datad => \entrada3[6]~input_o\,
	combout => \temp_max~10_combout\);

-- Location: LCCOMB_X56_Y50_N22
\temp_max~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~11_combout\ = (\LessThan3~14_combout\ & ((\entrada3[5]~input_o\))) # (!\LessThan3~14_combout\ & (\temp_max~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~3_combout\,
	datab => \entrada3[5]~input_o\,
	datad => \LessThan3~14_combout\,
	combout => \temp_max~11_combout\);

-- Location: LCCOMB_X56_Y50_N24
\temp_max~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~12_combout\ = (\LessThan3~14_combout\ & ((\entrada3[4]~input_o\))) # (!\LessThan3~14_combout\ & (\temp_max~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~4_combout\,
	datac => \entrada3[4]~input_o\,
	datad => \LessThan3~14_combout\,
	combout => \temp_max~12_combout\);

-- Location: LCCOMB_X56_Y50_N26
\temp_max~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~13_combout\ = (\LessThan3~14_combout\ & (\entrada3[3]~input_o\)) # (!\LessThan3~14_combout\ & ((\temp_max~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[3]~input_o\,
	datac => \temp_max~5_combout\,
	datad => \LessThan3~14_combout\,
	combout => \temp_max~13_combout\);

-- Location: LCCOMB_X56_Y50_N28
\temp_max~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~14_combout\ = (\LessThan3~14_combout\ & (\entrada3[2]~input_o\)) # (!\LessThan3~14_combout\ & ((\temp_max~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[2]~input_o\,
	datab => \temp_max~6_combout\,
	datad => \LessThan3~14_combout\,
	combout => \temp_max~14_combout\);

-- Location: LCCOMB_X56_Y50_N30
\temp_max~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~15_combout\ = (\LessThan3~14_combout\ & (\entrada3[1]~input_o\)) # (!\LessThan3~14_combout\ & ((\temp_max~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada3[1]~input_o\,
	datac => \temp_max~7_combout\,
	datad => \LessThan3~14_combout\,
	combout => \temp_max~15_combout\);

-- Location: LCCOMB_X57_Y50_N8
\LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((!\temp_max~8_combout\ & \entrada4[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~8_combout\,
	datab => \entrada4[0]~input_o\,
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X57_Y50_N10
\LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((\entrada4[1]~input_o\ & (\temp_max~15_combout\ & !\LessThan5~1_cout\)) # (!\entrada4[1]~input_o\ & ((\temp_max~15_combout\) # (!\LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[1]~input_o\,
	datab => \temp_max~15_combout\,
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X57_Y50_N12
\LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((\entrada4[2]~input_o\ & ((!\LessThan5~3_cout\) # (!\temp_max~14_combout\))) # (!\entrada4[2]~input_o\ & (!\temp_max~14_combout\ & !\LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[2]~input_o\,
	datab => \temp_max~14_combout\,
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X57_Y50_N14
\LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((\temp_max~13_combout\ & ((!\LessThan5~5_cout\) # (!\entrada4[3]~input_o\))) # (!\temp_max~13_combout\ & (!\entrada4[3]~input_o\ & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~13_combout\,
	datab => \entrada4[3]~input_o\,
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X57_Y50_N16
\LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((\entrada4[4]~input_o\ & ((!\LessThan5~7_cout\) # (!\temp_max~12_combout\))) # (!\entrada4[4]~input_o\ & (!\temp_max~12_combout\ & !\LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[4]~input_o\,
	datab => \temp_max~12_combout\,
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X57_Y50_N18
\LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((\temp_max~11_combout\ & ((!\LessThan5~9_cout\) # (!\entrada4[5]~input_o\))) # (!\temp_max~11_combout\ & (!\entrada4[5]~input_o\ & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~11_combout\,
	datab => \entrada4[5]~input_o\,
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X57_Y50_N20
\LessThan5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((\entrada4[6]~input_o\ & ((!\LessThan5~11_cout\) # (!\temp_max~10_combout\))) # (!\entrada4[6]~input_o\ & (!\temp_max~10_combout\ & !\LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[6]~input_o\,
	datab => \temp_max~10_combout\,
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X57_Y50_N22
\LessThan5~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~14_combout\ = (\temp_max~9_combout\ & (\LessThan5~13_cout\ & \entrada4[7]~input_o\)) # (!\temp_max~9_combout\ & ((\LessThan5~13_cout\) # (\entrada4[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~9_combout\,
	datad => \entrada4[7]~input_o\,
	cin => \LessThan5~13_cout\,
	combout => \LessThan5~14_combout\);

-- Location: LCCOMB_X57_Y50_N0
\temp_max~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~16_combout\ = (\LessThan5~14_combout\ & ((\entrada4[0]~input_o\))) # (!\LessThan5~14_combout\ & (\temp_max~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~8_combout\,
	datab => \entrada4[0]~input_o\,
	datac => \LessThan5~14_combout\,
	combout => \temp_max~16_combout\);

-- Location: LCCOMB_X57_Y50_N2
\temp_max~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~17_combout\ = (\LessThan5~14_combout\ & (\entrada4[1]~input_o\)) # (!\LessThan5~14_combout\ & ((\temp_max~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[1]~input_o\,
	datab => \temp_max~15_combout\,
	datac => \LessThan5~14_combout\,
	combout => \temp_max~17_combout\);

-- Location: LCCOMB_X57_Y50_N28
\temp_max~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~18_combout\ = (\LessThan5~14_combout\ & (\entrada4[2]~input_o\)) # (!\LessThan5~14_combout\ & ((\temp_max~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[2]~input_o\,
	datab => \temp_max~14_combout\,
	datac => \LessThan5~14_combout\,
	combout => \temp_max~18_combout\);

-- Location: LCCOMB_X57_Y50_N30
\temp_max~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~19_combout\ = (\LessThan5~14_combout\ & ((\entrada4[3]~input_o\))) # (!\LessThan5~14_combout\ & (\temp_max~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~13_combout\,
	datac => \LessThan5~14_combout\,
	datad => \entrada4[3]~input_o\,
	combout => \temp_max~19_combout\);

-- Location: LCCOMB_X57_Y50_N24
\temp_max~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~20_combout\ = (\LessThan5~14_combout\ & (\entrada4[4]~input_o\)) # (!\LessThan5~14_combout\ & ((\temp_max~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4[4]~input_o\,
	datac => \LessThan5~14_combout\,
	datad => \temp_max~12_combout\,
	combout => \temp_max~20_combout\);

-- Location: LCCOMB_X57_Y50_N26
\temp_max~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~21_combout\ = (\LessThan5~14_combout\ & (\entrada4[5]~input_o\)) # (!\LessThan5~14_combout\ & ((\temp_max~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada4[5]~input_o\,
	datac => \LessThan5~14_combout\,
	datad => \temp_max~11_combout\,
	combout => \temp_max~21_combout\);

-- Location: LCCOMB_X57_Y50_N4
\temp_max~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~22_combout\ = (\LessThan5~14_combout\ & ((\entrada4[6]~input_o\))) # (!\LessThan5~14_combout\ & (\temp_max~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~14_combout\,
	datab => \temp_max~10_combout\,
	datad => \entrada4[6]~input_o\,
	combout => \temp_max~22_combout\);

-- Location: LCCOMB_X57_Y50_N6
\temp_max~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \temp_max~23_combout\ = (\LessThan5~14_combout\ & ((\entrada4[7]~input_o\))) # (!\LessThan5~14_combout\ & (\temp_max~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_max~9_combout\,
	datac => \LessThan5~14_combout\,
	datad => \entrada4[7]~input_o\,
	combout => \temp_max~23_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_min_out(0) <= \min_out[0]~output_o\;

ww_min_out(1) <= \min_out[1]~output_o\;

ww_min_out(2) <= \min_out[2]~output_o\;

ww_min_out(3) <= \min_out[3]~output_o\;

ww_min_out(4) <= \min_out[4]~output_o\;

ww_min_out(5) <= \min_out[5]~output_o\;

ww_min_out(6) <= \min_out[6]~output_o\;

ww_min_out(7) <= \min_out[7]~output_o\;

ww_max_out(0) <= \max_out[0]~output_o\;

ww_max_out(1) <= \max_out[1]~output_o\;

ww_max_out(2) <= \max_out[2]~output_o\;

ww_max_out(3) <= \max_out[3]~output_o\;

ww_max_out(4) <= \max_out[4]~output_o\;

ww_max_out(5) <= \max_out[5]~output_o\;

ww_max_out(6) <= \max_out[6]~output_o\;

ww_max_out(7) <= \max_out[7]~output_o\;
END structure;


