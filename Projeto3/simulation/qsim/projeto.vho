-- Copyright (C) 2021  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "04/30/2026 23:27:59"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	projeto IS
    PORT (
	N : IN std_logic_vector(127 DOWNTO 0);
	selecao : IN std_logic_vector(3 DOWNTO 0);
	z : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END projeto;

-- Design Ports Information
-- z[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[80]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[72]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[64]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[88]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[40]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[48]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[32]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[56]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[16]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[24]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[104]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[112]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[96]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[120]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[49]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[81]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[17]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[113]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[73]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[41]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[9]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[105]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[33]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[65]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[97]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[89]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[57]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[25]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[121]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[50]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[42]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[34]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[58]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[74]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[82]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[66]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[90]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[18]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[26]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[114]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[106]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[98]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[122]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[43]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[75]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[107]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[83]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[51]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[19]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[115]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[67]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[35]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[99]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[59]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[91]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[27]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[123]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[84]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[76]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[68]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[92]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[44]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[52]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[36]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[60]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[20]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[12]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[28]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[108]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[116]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[100]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[124]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[53]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[85]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[21]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[117]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[77]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[45]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[13]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[109]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[37]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[69]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[101]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[93]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[61]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[29]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[125]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[54]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[46]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[38]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[62]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[78]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[86]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[70]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[94]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[14]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[22]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[30]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[118]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[110]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[102]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[126]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[47]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[79]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[15]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[111]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[87]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[55]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[23]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[119]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[71]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[39]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[103]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[63]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[95]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[31]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[127]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_N : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_selecao : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_z : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \z[3]~output_o\ : std_logic;
SIGNAL \z[4]~output_o\ : std_logic;
SIGNAL \z[5]~output_o\ : std_logic;
SIGNAL \z[6]~output_o\ : std_logic;
SIGNAL \z[7]~output_o\ : std_logic;
SIGNAL \N[80]~input_o\ : std_logic;
SIGNAL \selecao[1]~input_o\ : std_logic;
SIGNAL \selecao[0]~input_o\ : std_logic;
SIGNAL \N[64]~input_o\ : std_logic;
SIGNAL \N[72]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \N[88]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \N[56]~input_o\ : std_logic;
SIGNAL \N[40]~input_o\ : std_logic;
SIGNAL \N[48]~input_o\ : std_logic;
SIGNAL \N[32]~input_o\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \selecao[3]~input_o\ : std_logic;
SIGNAL \selecao[2]~input_o\ : std_logic;
SIGNAL \N[16]~input_o\ : std_logic;
SIGNAL \N[24]~input_o\ : std_logic;
SIGNAL \N[8]~input_o\ : std_logic;
SIGNAL \N[0]~input_o\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \N[104]~input_o\ : std_logic;
SIGNAL \N[112]~input_o\ : std_logic;
SIGNAL \N[96]~input_o\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \N[120]~input_o\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \N[113]~input_o\ : std_logic;
SIGNAL \N[81]~input_o\ : std_logic;
SIGNAL \N[17]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \N[49]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \N[105]~input_o\ : std_logic;
SIGNAL \N[41]~input_o\ : std_logic;
SIGNAL \N[9]~input_o\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \N[73]~input_o\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \N[65]~input_o\ : std_logic;
SIGNAL \N[1]~input_o\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \N[97]~input_o\ : std_logic;
SIGNAL \N[33]~input_o\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \N[121]~input_o\ : std_logic;
SIGNAL \N[89]~input_o\ : std_logic;
SIGNAL \N[25]~input_o\ : std_logic;
SIGNAL \N[57]~input_o\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \N[98]~input_o\ : std_logic;
SIGNAL \N[106]~input_o\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \N[122]~input_o\ : std_logic;
SIGNAL \N[114]~input_o\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \N[42]~input_o\ : std_logic;
SIGNAL \N[34]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \N[50]~input_o\ : std_logic;
SIGNAL \N[58]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \N[10]~input_o\ : std_logic;
SIGNAL \N[2]~input_o\ : std_logic;
SIGNAL \N[18]~input_o\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \N[26]~input_o\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \N[66]~input_o\ : std_logic;
SIGNAL \N[82]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \N[90]~input_o\ : std_logic;
SIGNAL \N[74]~input_o\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \N[107]~input_o\ : std_logic;
SIGNAL \N[43]~input_o\ : std_logic;
SIGNAL \N[11]~input_o\ : std_logic;
SIGNAL \N[75]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \N[83]~input_o\ : std_logic;
SIGNAL \N[115]~input_o\ : std_logic;
SIGNAL \N[19]~input_o\ : std_logic;
SIGNAL \N[51]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \N[67]~input_o\ : std_logic;
SIGNAL \N[35]~input_o\ : std_logic;
SIGNAL \N[3]~input_o\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \N[99]~input_o\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \N[123]~input_o\ : std_logic;
SIGNAL \N[59]~input_o\ : std_logic;
SIGNAL \N[91]~input_o\ : std_logic;
SIGNAL \N[27]~input_o\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \N[124]~input_o\ : std_logic;
SIGNAL \N[108]~input_o\ : std_logic;
SIGNAL \N[116]~input_o\ : std_logic;
SIGNAL \N[100]~input_o\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \N[44]~input_o\ : std_logic;
SIGNAL \N[36]~input_o\ : std_logic;
SIGNAL \N[52]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \N[60]~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \N[28]~input_o\ : std_logic;
SIGNAL \N[12]~input_o\ : std_logic;
SIGNAL \N[4]~input_o\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \N[20]~input_o\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \N[84]~input_o\ : std_logic;
SIGNAL \N[76]~input_o\ : std_logic;
SIGNAL \N[68]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \N[92]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \N[93]~input_o\ : std_logic;
SIGNAL \N[29]~input_o\ : std_logic;
SIGNAL \N[61]~input_o\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \N[125]~input_o\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \N[45]~input_o\ : std_logic;
SIGNAL \N[13]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \N[109]~input_o\ : std_logic;
SIGNAL \N[77]~input_o\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \N[101]~input_o\ : std_logic;
SIGNAL \N[69]~input_o\ : std_logic;
SIGNAL \N[5]~input_o\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \N[37]~input_o\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \N[53]~input_o\ : std_logic;
SIGNAL \N[117]~input_o\ : std_logic;
SIGNAL \N[21]~input_o\ : std_logic;
SIGNAL \N[85]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \N[14]~input_o\ : std_logic;
SIGNAL \N[30]~input_o\ : std_logic;
SIGNAL \N[22]~input_o\ : std_logic;
SIGNAL \N[6]~input_o\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \N[78]~input_o\ : std_logic;
SIGNAL \N[94]~input_o\ : std_logic;
SIGNAL \N[86]~input_o\ : std_logic;
SIGNAL \N[70]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \N[126]~input_o\ : std_logic;
SIGNAL \N[102]~input_o\ : std_logic;
SIGNAL \N[110]~input_o\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \N[118]~input_o\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \N[38]~input_o\ : std_logic;
SIGNAL \N[46]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \N[54]~input_o\ : std_logic;
SIGNAL \N[62]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \N[95]~input_o\ : std_logic;
SIGNAL \N[31]~input_o\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \N[127]~input_o\ : std_logic;
SIGNAL \N[63]~input_o\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \N[119]~input_o\ : std_logic;
SIGNAL \N[23]~input_o\ : std_logic;
SIGNAL \N[55]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \N[87]~input_o\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \N[103]~input_o\ : std_logic;
SIGNAL \N[71]~input_o\ : std_logic;
SIGNAL \N[39]~input_o\ : std_logic;
SIGNAL \N[7]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \N[111]~input_o\ : std_logic;
SIGNAL \N[47]~input_o\ : std_logic;
SIGNAL \N[79]~input_o\ : std_logic;
SIGNAL \N[15]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_N <= N;
ww_selecao <= selecao;
z <= ww_z;
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

-- Location: LCCOMB_X44_Y43_N24
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

-- Location: IOOBUF_X49_Y54_N9
\z[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~9_combout\,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\z[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~9_combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\z[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~9_combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\z[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~9_combout\,
	devoe => ww_devoe,
	o => \z[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\z[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~9_combout\,
	devoe => ww_devoe,
	o => \z[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\z[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~9_combout\,
	devoe => ww_devoe,
	o => \z[5]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\z[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~9_combout\,
	devoe => ww_devoe,
	o => \z[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\z[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~9_combout\,
	devoe => ww_devoe,
	o => \z[7]~output_o\);

-- Location: IOIBUF_X78_Y15_N15
\N[80]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(80),
	o => \N[80]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\selecao[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(1),
	o => \selecao[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\selecao[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(0),
	o => \selecao[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\N[64]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(64),
	o => \N[64]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\N[72]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(72),
	o => \N[72]~input_o\);

-- Location: LCCOMB_X57_Y1_N8
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\selecao[0]~input_o\ & (((\selecao[1]~input_o\) # (\N[72]~input_o\)))) # (!\selecao[0]~input_o\ & (\N[64]~input_o\ & (!\selecao[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[0]~input_o\,
	datab => \N[64]~input_o\,
	datac => \selecao[1]~input_o\,
	datad => \N[72]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X58_Y0_N22
\N[88]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(88),
	o => \N[88]~input_o\);

-- Location: LCCOMB_X57_Y1_N26
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\selecao[1]~input_o\ & ((\Mux7~0_combout\ & ((\N[88]~input_o\))) # (!\Mux7~0_combout\ & (\N[80]~input_o\)))) # (!\selecao[1]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[80]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \Mux7~0_combout\,
	datad => \N[88]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X62_Y0_N15
\N[56]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(56),
	o => \N[56]~input_o\);

-- Location: IOIBUF_X56_Y0_N29
\N[40]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(40),
	o => \N[40]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\N[48]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(48),
	o => \N[48]~input_o\);

-- Location: IOIBUF_X78_Y3_N8
\N[32]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(32),
	o => \N[32]~input_o\);

-- Location: LCCOMB_X57_Y1_N12
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\selecao[0]~input_o\ & (\selecao[1]~input_o\)) # (!\selecao[0]~input_o\ & ((\selecao[1]~input_o\ & (\N[48]~input_o\)) # (!\selecao[1]~input_o\ & ((\N[32]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[0]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[48]~input_o\,
	datad => \N[32]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X57_Y1_N6
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\selecao[0]~input_o\ & ((\Mux7~2_combout\ & (\N[56]~input_o\)) # (!\Mux7~2_combout\ & ((\N[40]~input_o\))))) # (!\selecao[0]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[0]~input_o\,
	datab => \N[56]~input_o\,
	datac => \N[40]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: IOIBUF_X31_Y0_N15
\selecao[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(3),
	o => \selecao[3]~input_o\);

-- Location: IOIBUF_X34_Y39_N1
\selecao[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(2),
	o => \selecao[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\N[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(16),
	o => \N[16]~input_o\);

-- Location: IOIBUF_X78_Y3_N15
\N[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(24),
	o => \N[24]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\N[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(8),
	o => \N[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\N[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(0),
	o => \N[0]~input_o\);

-- Location: LCCOMB_X57_Y1_N16
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\selecao[0]~input_o\ & ((\N[8]~input_o\) # ((\selecao[1]~input_o\)))) # (!\selecao[0]~input_o\ & (((!\selecao[1]~input_o\ & \N[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[0]~input_o\,
	datab => \N[8]~input_o\,
	datac => \selecao[1]~input_o\,
	datad => \N[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X57_Y1_N2
\Mux7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\selecao[1]~input_o\ & ((\Mux7~4_combout\ & ((\N[24]~input_o\))) # (!\Mux7~4_combout\ & (\N[16]~input_o\)))) # (!\selecao[1]~input_o\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[16]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[24]~input_o\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X57_Y1_N4
\Mux7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\selecao[3]~input_o\ & (((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & ((\selecao[2]~input_o\ & (\Mux7~3_combout\)) # (!\selecao[2]~input_o\ & ((\Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \selecao[3]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: IOIBUF_X58_Y0_N15
\N[104]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(104),
	o => \N[104]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\N[112]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(112),
	o => \N[112]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\N[96]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(96),
	o => \N[96]~input_o\);

-- Location: LCCOMB_X57_Y1_N22
\Mux7~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\selecao[0]~input_o\ & (\selecao[1]~input_o\)) # (!\selecao[0]~input_o\ & ((\selecao[1]~input_o\ & (\N[112]~input_o\)) # (!\selecao[1]~input_o\ & ((\N[96]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[0]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[112]~input_o\,
	datad => \N[96]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: IOIBUF_X62_Y0_N22
\N[120]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(120),
	o => \N[120]~input_o\);

-- Location: LCCOMB_X57_Y1_N24
\Mux7~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\selecao[0]~input_o\ & ((\Mux7~7_combout\ & ((\N[120]~input_o\))) # (!\Mux7~7_combout\ & (\N[104]~input_o\)))) # (!\selecao[0]~input_o\ & (((\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[0]~input_o\,
	datab => \N[104]~input_o\,
	datac => \Mux7~7_combout\,
	datad => \N[120]~input_o\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X57_Y1_N10
\Mux7~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux7~6_combout\ & (((\Mux7~8_combout\) # (!\selecao[3]~input_o\)))) # (!\Mux7~6_combout\ & (\Mux7~1_combout\ & (\selecao[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~6_combout\,
	datac => \selecao[3]~input_o\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: IOIBUF_X58_Y0_N29
\N[113]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(113),
	o => \N[113]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\N[81]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(81),
	o => \N[81]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\N[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(17),
	o => \N[17]~input_o\);

-- Location: LCCOMB_X57_Y1_N20
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\selecao[3]~input_o\ & ((\N[81]~input_o\) # ((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & (((!\selecao[2]~input_o\ & \N[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[81]~input_o\,
	datab => \selecao[3]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[17]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X62_Y0_N8
\N[49]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(49),
	o => \N[49]~input_o\);

-- Location: LCCOMB_X57_Y1_N30
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\N[113]~input_o\) # ((!\selecao[2]~input_o\)))) # (!\Mux6~0_combout\ & (((\selecao[2]~input_o\ & \N[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[113]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \selecao[2]~input_o\,
	datad => \N[49]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X40_Y0_N8
\N[105]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(105),
	o => \N[105]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\N[41]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(41),
	o => \N[41]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\N[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(9),
	o => \N[9]~input_o\);

-- Location: LCCOMB_X47_Y1_N8
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\selecao[2]~input_o\ & ((\N[41]~input_o\) # ((\selecao[3]~input_o\)))) # (!\selecao[2]~input_o\ & (((!\selecao[3]~input_o\ & \N[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[41]~input_o\,
	datab => \selecao[2]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \N[9]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X51_Y0_N22
\N[73]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(73),
	o => \N[73]~input_o\);

-- Location: LCCOMB_X47_Y1_N2
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & ((\N[105]~input_o\) # ((!\selecao[3]~input_o\)))) # (!\Mux6~2_combout\ & (((\selecao[3]~input_o\ & \N[73]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[105]~input_o\,
	datab => \Mux6~2_combout\,
	datac => \selecao[3]~input_o\,
	datad => \N[73]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: IOIBUF_X36_Y0_N8
\N[65]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(65),
	o => \N[65]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\N[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(1),
	o => \N[1]~input_o\);

-- Location: LCCOMB_X47_Y1_N12
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\selecao[2]~input_o\ & (((\selecao[3]~input_o\)))) # (!\selecao[2]~input_o\ & ((\selecao[3]~input_o\ & (\N[65]~input_o\)) # (!\selecao[3]~input_o\ & ((\N[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[65]~input_o\,
	datab => \selecao[2]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \N[1]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X36_Y0_N1
\N[97]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(97),
	o => \N[97]~input_o\);

-- Location: IOIBUF_X78_Y3_N22
\N[33]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(33),
	o => \N[33]~input_o\);

-- Location: LCCOMB_X47_Y1_N30
\Mux6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & (((\N[97]~input_o\)) # (!\selecao[2]~input_o\))) # (!\Mux6~4_combout\ & (\selecao[2]~input_o\ & ((\N[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \selecao[2]~input_o\,
	datac => \N[97]~input_o\,
	datad => \N[33]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X47_Y1_N24
\Mux6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\selecao[1]~input_o\ & (((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & ((\selecao[0]~input_o\ & (\Mux6~3_combout\)) # (!\selecao[0]~input_o\ & ((\Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[1]~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Mux6~5_combout\,
	datad => \selecao[0]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: IOIBUF_X62_Y0_N29
\N[121]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(121),
	o => \N[121]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\N[89]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(89),
	o => \N[89]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\N[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(25),
	o => \N[25]~input_o\);

-- Location: IOIBUF_X69_Y0_N22
\N[57]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(57),
	o => \N[57]~input_o\);

-- Location: LCCOMB_X57_Y1_N0
\Mux6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\selecao[3]~input_o\ & (((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & ((\selecao[2]~input_o\ & ((\N[57]~input_o\))) # (!\selecao[2]~input_o\ & (\N[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[25]~input_o\,
	datab => \selecao[3]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[57]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X57_Y1_N18
\Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\selecao[3]~input_o\ & ((\Mux6~7_combout\ & (\N[121]~input_o\)) # (!\Mux6~7_combout\ & ((\N[89]~input_o\))))) # (!\selecao[3]~input_o\ & (((\Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[121]~input_o\,
	datab => \N[89]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X57_Y1_N28
\Mux6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~6_combout\ & (((\Mux6~8_combout\) # (!\selecao[1]~input_o\)))) # (!\Mux6~6_combout\ & (\Mux6~1_combout\ & (\selecao[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~6_combout\,
	datac => \selecao[1]~input_o\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~9_combout\);

-- Location: IOIBUF_X40_Y0_N22
\N[98]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(98),
	o => \N[98]~input_o\);

-- Location: IOIBUF_X51_Y0_N8
\N[106]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(106),
	o => \N[106]~input_o\);

-- Location: LCCOMB_X47_Y1_N22
\Mux5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\selecao[1]~input_o\ & (((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & ((\selecao[0]~input_o\ & ((\N[106]~input_o\))) # (!\selecao[0]~input_o\ & (\N[98]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[1]~input_o\,
	datab => \N[98]~input_o\,
	datac => \N[106]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: IOIBUF_X49_Y0_N22
\N[122]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(122),
	o => \N[122]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\N[114]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(114),
	o => \N[114]~input_o\);

-- Location: LCCOMB_X47_Y1_N16
\Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~7_combout\ & ((\N[122]~input_o\) # ((!\selecao[1]~input_o\)))) # (!\Mux5~7_combout\ & (((\selecao[1]~input_o\ & \N[114]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \N[122]~input_o\,
	datac => \selecao[1]~input_o\,
	datad => \N[114]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: IOIBUF_X38_Y0_N15
\N[42]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(42),
	o => \N[42]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\N[34]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(34),
	o => \N[34]~input_o\);

-- Location: LCCOMB_X47_Y1_N10
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\selecao[1]~input_o\ & (((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & ((\selecao[0]~input_o\ & (\N[42]~input_o\)) # (!\selecao[0]~input_o\ & ((\N[34]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[42]~input_o\,
	datab => \N[34]~input_o\,
	datac => \selecao[1]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X46_Y0_N8
\N[50]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(50),
	o => \N[50]~input_o\);

-- Location: IOIBUF_X69_Y0_N15
\N[58]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(58),
	o => \N[58]~input_o\);

-- Location: LCCOMB_X47_Y1_N4
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\N[58]~input_o\) # (!\selecao[1]~input_o\)))) # (!\Mux5~0_combout\ & (\N[50]~input_o\ & (\selecao[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \N[50]~input_o\,
	datac => \selecao[1]~input_o\,
	datad => \N[58]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X40_Y0_N1
\N[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(10),
	o => \N[10]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\N[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(2),
	o => \N[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\N[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(18),
	o => \N[18]~input_o\);

-- Location: LCCOMB_X57_Y1_N14
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\selecao[0]~input_o\ & (\selecao[1]~input_o\)) # (!\selecao[0]~input_o\ & ((\selecao[1]~input_o\ & ((\N[18]~input_o\))) # (!\selecao[1]~input_o\ & (\N[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[0]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[2]~input_o\,
	datad => \N[18]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X49_Y0_N1
\N[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(26),
	o => \N[26]~input_o\);

-- Location: LCCOMB_X47_Y1_N26
\Mux5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & (((\N[26]~input_o\) # (!\selecao[0]~input_o\)))) # (!\Mux5~4_combout\ & (\N[10]~input_o\ & ((\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[10]~input_o\,
	datab => \Mux5~4_combout\,
	datac => \N[26]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: IOIBUF_X51_Y0_N15
\N[66]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(66),
	o => \N[66]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\N[82]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(82),
	o => \N[82]~input_o\);

-- Location: LCCOMB_X47_Y1_N6
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\selecao[1]~input_o\ & (((\N[82]~input_o\) # (\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & (\N[66]~input_o\ & ((!\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[66]~input_o\,
	datab => \N[82]~input_o\,
	datac => \selecao[1]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: IOIBUF_X40_Y0_N29
\N[90]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(90),
	o => \N[90]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\N[74]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(74),
	o => \N[74]~input_o\);

-- Location: LCCOMB_X47_Y1_N0
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & ((\N[90]~input_o\) # ((!\selecao[0]~input_o\)))) # (!\Mux5~2_combout\ & (((\N[74]~input_o\ & \selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \N[90]~input_o\,
	datac => \N[74]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X47_Y1_N20
\Mux5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\selecao[2]~input_o\ & (((\selecao[3]~input_o\)))) # (!\selecao[2]~input_o\ & ((\selecao[3]~input_o\ & ((\Mux5~3_combout\))) # (!\selecao[3]~input_o\ & (\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \selecao[2]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X47_Y1_N18
\Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\selecao[2]~input_o\ & ((\Mux5~6_combout\ & (\Mux5~8_combout\)) # (!\Mux5~6_combout\ & ((\Mux5~1_combout\))))) # (!\selecao[2]~input_o\ & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \selecao[2]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~9_combout\);

-- Location: IOIBUF_X38_Y0_N29
\N[107]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(107),
	o => \N[107]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\N[43]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(43),
	o => \N[43]~input_o\);

-- Location: IOIBUF_X49_Y0_N29
\N[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(11),
	o => \N[11]~input_o\);

-- Location: IOIBUF_X51_Y0_N29
\N[75]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(75),
	o => \N[75]~input_o\);

-- Location: LCCOMB_X47_Y1_N28
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\selecao[3]~input_o\ & (((\N[75]~input_o\) # (\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & (\N[11]~input_o\ & ((!\selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[11]~input_o\,
	datab => \selecao[3]~input_o\,
	datac => \N[75]~input_o\,
	datad => \selecao[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X47_Y1_N14
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\selecao[2]~input_o\ & ((\Mux4~0_combout\ & (\N[107]~input_o\)) # (!\Mux4~0_combout\ & ((\N[43]~input_o\))))) # (!\selecao[2]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[107]~input_o\,
	datab => \selecao[2]~input_o\,
	datac => \N[43]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X22_Y0_N15
\N[83]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(83),
	o => \N[83]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\N[115]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(115),
	o => \N[115]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\N[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(19),
	o => \N[19]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\N[51]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(51),
	o => \N[51]~input_o\);

-- Location: LCCOMB_X25_Y1_N24
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\selecao[3]~input_o\ & (((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & ((\selecao[2]~input_o\ & ((\N[51]~input_o\))) # (!\selecao[2]~input_o\ & (\N[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[19]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[51]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X25_Y1_N18
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\selecao[3]~input_o\ & ((\Mux4~2_combout\ & ((\N[115]~input_o\))) # (!\Mux4~2_combout\ & (\N[83]~input_o\)))) # (!\selecao[3]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[83]~input_o\,
	datab => \N[115]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: IOIBUF_X24_Y0_N22
\N[67]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(67),
	o => \N[67]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\N[35]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(35),
	o => \N[35]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\N[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(3),
	o => \N[3]~input_o\);

-- Location: LCCOMB_X25_Y1_N4
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\selecao[2]~input_o\ & ((\N[35]~input_o\) # ((\selecao[3]~input_o\)))) # (!\selecao[2]~input_o\ & (((!\selecao[3]~input_o\ & \N[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[35]~input_o\,
	datab => \selecao[2]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \N[3]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: IOIBUF_X29_Y0_N8
\N[99]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(99),
	o => \N[99]~input_o\);

-- Location: LCCOMB_X25_Y1_N30
\Mux4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & (((\N[99]~input_o\) # (!\selecao[3]~input_o\)))) # (!\Mux4~4_combout\ & (\N[67]~input_o\ & (\selecao[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[67]~input_o\,
	datab => \Mux4~4_combout\,
	datac => \selecao[3]~input_o\,
	datad => \N[99]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X25_Y1_N0
\Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\selecao[1]~input_o\ & ((\Mux4~3_combout\) # ((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & (((\Mux4~5_combout\ & !\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[1]~input_o\,
	datab => \Mux4~3_combout\,
	datac => \Mux4~5_combout\,
	datad => \selecao[0]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: IOIBUF_X0_Y25_N15
\N[123]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(123),
	o => \N[123]~input_o\);

-- Location: IOIBUF_X0_Y30_N15
\N[59]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(59),
	o => \N[59]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\N[91]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(91),
	o => \N[91]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\N[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(27),
	o => \N[27]~input_o\);

-- Location: LCCOMB_X1_Y26_N8
\Mux4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\selecao[2]~input_o\ & (((\selecao[3]~input_o\)))) # (!\selecao[2]~input_o\ & ((\selecao[3]~input_o\ & (\N[91]~input_o\)) # (!\selecao[3]~input_o\ & ((\N[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[91]~input_o\,
	datab => \selecao[2]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \N[27]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X1_Y26_N26
\Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~7_combout\ & ((\N[123]~input_o\) # ((!\selecao[2]~input_o\)))) # (!\Mux4~7_combout\ & (((\N[59]~input_o\ & \selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[123]~input_o\,
	datab => \N[59]~input_o\,
	datac => \Mux4~7_combout\,
	datad => \selecao[2]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X25_Y1_N2
\Mux4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux4~6_combout\ & (((\Mux4~8_combout\) # (!\selecao[0]~input_o\)))) # (!\Mux4~6_combout\ & (\Mux4~1_combout\ & ((\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~6_combout\,
	datac => \Mux4~8_combout\,
	datad => \selecao[0]~input_o\,
	combout => \Mux4~9_combout\);

-- Location: IOIBUF_X24_Y39_N22
\N[124]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(124),
	o => \N[124]~input_o\);

-- Location: IOIBUF_X26_Y39_N22
\N[108]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(108),
	o => \N[108]~input_o\);

-- Location: IOIBUF_X31_Y39_N15
\N[116]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(116),
	o => \N[116]~input_o\);

-- Location: IOIBUF_X34_Y39_N15
\N[100]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(100),
	o => \N[100]~input_o\);

-- Location: LCCOMB_X25_Y38_N14
\Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\selecao[1]~input_o\ & ((\N[116]~input_o\) # ((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & (((\N[100]~input_o\ & !\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[116]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[100]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X25_Y38_N8
\Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & ((\N[124]~input_o\) # ((!\selecao[0]~input_o\)))) # (!\Mux3~7_combout\ & (((\N[108]~input_o\ & \selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[124]~input_o\,
	datab => \N[108]~input_o\,
	datac => \Mux3~7_combout\,
	datad => \selecao[0]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: IOIBUF_X22_Y39_N22
\N[44]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(44),
	o => \N[44]~input_o\);

-- Location: IOIBUF_X24_Y39_N1
\N[36]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(36),
	o => \N[36]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\N[52]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(52),
	o => \N[52]~input_o\);

-- Location: LCCOMB_X25_Y38_N20
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\selecao[1]~input_o\ & (((\N[52]~input_o\) # (\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & (\N[36]~input_o\ & ((!\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[36]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[52]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X29_Y39_N1
\N[60]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(60),
	o => \N[60]~input_o\);

-- Location: LCCOMB_X25_Y38_N22
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\N[60]~input_o\) # (!\selecao[0]~input_o\)))) # (!\Mux3~2_combout\ & (\N[44]~input_o\ & ((\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[44]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \N[60]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X26_Y39_N1
\N[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(28),
	o => \N[28]~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\N[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(12),
	o => \N[12]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\N[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(4),
	o => \N[4]~input_o\);

-- Location: LCCOMB_X25_Y38_N24
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\selecao[1]~input_o\ & (((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & ((\selecao[0]~input_o\ & (\N[12]~input_o\)) # (!\selecao[0]~input_o\ & ((\N[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[12]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[4]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X20_Y39_N8
\N[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(20),
	o => \N[20]~input_o\);

-- Location: LCCOMB_X25_Y38_N18
\Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & ((\N[28]~input_o\) # ((!\selecao[1]~input_o\)))) # (!\Mux3~4_combout\ & (((\N[20]~input_o\ & \selecao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[28]~input_o\,
	datab => \Mux3~4_combout\,
	datac => \N[20]~input_o\,
	datad => \selecao[1]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X25_Y38_N4
\Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\selecao[2]~input_o\ & ((\Mux3~3_combout\) # ((\selecao[3]~input_o\)))) # (!\selecao[2]~input_o\ & (((\Mux3~5_combout\ & !\selecao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~5_combout\,
	datac => \selecao[2]~input_o\,
	datad => \selecao[3]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: IOIBUF_X22_Y39_N15
\N[84]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(84),
	o => \N[84]~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\N[76]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(76),
	o => \N[76]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\N[68]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(68),
	o => \N[68]~input_o\);

-- Location: LCCOMB_X25_Y38_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\selecao[1]~input_o\ & (((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & ((\selecao[0]~input_o\ & (\N[76]~input_o\)) # (!\selecao[0]~input_o\ & ((\N[68]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[76]~input_o\,
	datab => \selecao[1]~input_o\,
	datac => \N[68]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X34_Y39_N29
\N[92]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(92),
	o => \N[92]~input_o\);

-- Location: LCCOMB_X25_Y38_N2
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\N[92]~input_o\) # (!\selecao[1]~input_o\)))) # (!\Mux3~0_combout\ & (\N[84]~input_o\ & ((\selecao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[84]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \N[92]~input_o\,
	datad => \selecao[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X25_Y38_N26
\Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\selecao[3]~input_o\ & ((\Mux3~6_combout\ & (\Mux3~8_combout\)) # (!\Mux3~6_combout\ & ((\Mux3~1_combout\))))) # (!\selecao[3]~input_o\ & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \Mux3~8_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~9_combout\);

-- Location: IOIBUF_X29_Y39_N15
\N[93]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(93),
	o => \N[93]~input_o\);

-- Location: IOIBUF_X26_Y39_N15
\N[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(29),
	o => \N[29]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\N[61]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(61),
	o => \N[61]~input_o\);

-- Location: LCCOMB_X25_Y38_N10
\Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\selecao[3]~input_o\ & (((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & ((\selecao[2]~input_o\ & ((\N[61]~input_o\))) # (!\selecao[2]~input_o\ & (\N[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[29]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[61]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: IOIBUF_X29_Y39_N8
\N[125]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(125),
	o => \N[125]~input_o\);

-- Location: LCCOMB_X25_Y38_N12
\Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & (((\N[125]~input_o\) # (!\selecao[3]~input_o\)))) # (!\Mux2~7_combout\ & (\N[93]~input_o\ & ((\selecao[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[93]~input_o\,
	datab => \Mux2~7_combout\,
	datac => \N[125]~input_o\,
	datad => \selecao[3]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: IOIBUF_X31_Y39_N8
\N[45]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(45),
	o => \N[45]~input_o\);

-- Location: IOIBUF_X20_Y39_N15
\N[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(13),
	o => \N[13]~input_o\);

-- Location: LCCOMB_X25_Y38_N28
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\selecao[3]~input_o\ & (((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & ((\selecao[2]~input_o\ & (\N[45]~input_o\)) # (!\selecao[2]~input_o\ & ((\N[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[45]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[13]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: IOIBUF_X24_Y39_N8
\N[109]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(109),
	o => \N[109]~input_o\);

-- Location: IOIBUF_X34_Y39_N22
\N[77]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(77),
	o => \N[77]~input_o\);

-- Location: LCCOMB_X25_Y38_N6
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\selecao[3]~input_o\ & ((\Mux2~2_combout\ & (\N[109]~input_o\)) # (!\Mux2~2_combout\ & ((\N[77]~input_o\))))) # (!\selecao[3]~input_o\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \Mux2~2_combout\,
	datac => \N[109]~input_o\,
	datad => \N[77]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: IOIBUF_X0_Y27_N15
\N[101]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(101),
	o => \N[101]~input_o\);

-- Location: IOIBUF_X0_Y28_N8
\N[69]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(69),
	o => \N[69]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\N[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(5),
	o => \N[5]~input_o\);

-- Location: LCCOMB_X1_Y26_N24
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\selecao[3]~input_o\ & ((\N[69]~input_o\) # ((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & (((\N[5]~input_o\ & !\selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[69]~input_o\,
	datac => \N[5]~input_o\,
	datad => \selecao[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X0_Y25_N8
\N[37]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(37),
	o => \N[37]~input_o\);

-- Location: LCCOMB_X1_Y26_N10
\Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & ((\N[101]~input_o\) # ((!\selecao[2]~input_o\)))) # (!\Mux2~4_combout\ & (((\N[37]~input_o\ & \selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[101]~input_o\,
	datab => \Mux2~4_combout\,
	datac => \N[37]~input_o\,
	datad => \selecao[2]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X25_Y38_N16
\Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\selecao[1]~input_o\ & (((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & ((\selecao[0]~input_o\ & (\Mux2~3_combout\)) # (!\selecao[0]~input_o\ & ((\Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \selecao[1]~input_o\,
	datac => \Mux2~5_combout\,
	datad => \selecao[0]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: IOIBUF_X0_Y30_N1
\N[53]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(53),
	o => \N[53]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\N[117]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(117),
	o => \N[117]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\N[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(21),
	o => \N[21]~input_o\);

-- Location: IOIBUF_X0_Y29_N1
\N[85]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(85),
	o => \N[85]~input_o\);

-- Location: LCCOMB_X1_Y26_N4
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\selecao[3]~input_o\ & (((\N[85]~input_o\) # (\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & (\N[21]~input_o\ & ((!\selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[21]~input_o\,
	datab => \N[85]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \selecao[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y26_N14
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\N[117]~input_o\) # (!\selecao[2]~input_o\)))) # (!\Mux2~0_combout\ & (\N[53]~input_o\ & ((\selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[53]~input_o\,
	datab => \N[117]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \selecao[2]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X25_Y38_N30
\Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux2~6_combout\ & ((\Mux2~8_combout\) # ((!\selecao[1]~input_o\)))) # (!\Mux2~6_combout\ & (((\Mux2~1_combout\ & \selecao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datab => \Mux2~6_combout\,
	datac => \Mux2~1_combout\,
	datad => \selecao[1]~input_o\,
	combout => \Mux2~9_combout\);

-- Location: IOIBUF_X0_Y27_N1
\N[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(14),
	o => \N[14]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\N[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(30),
	o => \N[30]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\N[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(22),
	o => \N[22]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\N[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(6),
	o => \N[6]~input_o\);

-- Location: LCCOMB_X1_Y26_N12
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\selecao[0]~input_o\ & (((\selecao[1]~input_o\)))) # (!\selecao[0]~input_o\ & ((\selecao[1]~input_o\ & (\N[22]~input_o\)) # (!\selecao[1]~input_o\ & ((\N[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[22]~input_o\,
	datab => \selecao[0]~input_o\,
	datac => \N[6]~input_o\,
	datad => \selecao[1]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X1_Y26_N22
\Mux1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\selecao[0]~input_o\ & ((\Mux1~4_combout\ & ((\N[30]~input_o\))) # (!\Mux1~4_combout\ & (\N[14]~input_o\)))) # (!\selecao[0]~input_o\ & (((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[14]~input_o\,
	datab => \N[30]~input_o\,
	datac => \selecao[0]~input_o\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~5_combout\);

-- Location: IOIBUF_X0_Y23_N8
\N[78]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(78),
	o => \N[78]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\N[94]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(94),
	o => \N[94]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\N[86]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(86),
	o => \N[86]~input_o\);

-- Location: IOIBUF_X0_Y30_N22
\N[70]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(70),
	o => \N[70]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\selecao[1]~input_o\ & ((\N[86]~input_o\) # ((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & (((!\selecao[0]~input_o\ & \N[70]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[1]~input_o\,
	datab => \N[86]~input_o\,
	datac => \selecao[0]~input_o\,
	datad => \N[70]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X1_Y26_N18
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\selecao[0]~input_o\ & ((\Mux1~2_combout\ & ((\N[94]~input_o\))) # (!\Mux1~2_combout\ & (\N[78]~input_o\)))) # (!\selecao[0]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[78]~input_o\,
	datab => \N[94]~input_o\,
	datac => \selecao[0]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X1_Y26_N16
\Mux1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\selecao[3]~input_o\ & (((\Mux1~3_combout\) # (\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & (\Mux1~5_combout\ & ((!\selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux1~3_combout\,
	datac => \selecao[3]~input_o\,
	datad => \selecao[2]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: IOIBUF_X0_Y29_N8
\N[126]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(126),
	o => \N[126]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\N[102]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(102),
	o => \N[102]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\N[110]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(110),
	o => \N[110]~input_o\);

-- Location: LCCOMB_X1_Y26_N2
\Mux1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\selecao[1]~input_o\ & (\selecao[0]~input_o\)) # (!\selecao[1]~input_o\ & ((\selecao[0]~input_o\ & ((\N[110]~input_o\))) # (!\selecao[0]~input_o\ & (\N[102]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[1]~input_o\,
	datab => \selecao[0]~input_o\,
	datac => \N[102]~input_o\,
	datad => \N[110]~input_o\,
	combout => \Mux1~7_combout\);

-- Location: IOIBUF_X0_Y26_N8
\N[118]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(118),
	o => \N[118]~input_o\);

-- Location: LCCOMB_X1_Y26_N20
\Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux1~7_combout\ & ((\N[126]~input_o\) # ((!\selecao[1]~input_o\)))) # (!\Mux1~7_combout\ & (((\N[118]~input_o\ & \selecao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[126]~input_o\,
	datab => \Mux1~7_combout\,
	datac => \N[118]~input_o\,
	datad => \selecao[1]~input_o\,
	combout => \Mux1~8_combout\);

-- Location: IOIBUF_X0_Y25_N22
\N[38]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(38),
	o => \N[38]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\N[46]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(46),
	o => \N[46]~input_o\);

-- Location: LCCOMB_X1_Y26_N28
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\selecao[0]~input_o\ & (((\N[46]~input_o\) # (\selecao[1]~input_o\)))) # (!\selecao[0]~input_o\ & (\N[38]~input_o\ & ((!\selecao[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[38]~input_o\,
	datab => \N[46]~input_o\,
	datac => \selecao[0]~input_o\,
	datad => \selecao[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X0_Y23_N22
\N[54]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(54),
	o => \N[54]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\N[62]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(62),
	o => \N[62]~input_o\);

-- Location: LCCOMB_X1_Y26_N30
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\selecao[1]~input_o\ & ((\Mux1~0_combout\ & ((\N[62]~input_o\))) # (!\Mux1~0_combout\ & (\N[54]~input_o\)))) # (!\selecao[1]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[1]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \N[54]~input_o\,
	datad => \N[62]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X1_Y26_N6
\Mux1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\Mux1~6_combout\ & ((\Mux1~8_combout\) # ((!\selecao[2]~input_o\)))) # (!\Mux1~6_combout\ & (((\Mux1~1_combout\ & \selecao[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \Mux1~8_combout\,
	datac => \Mux1~1_combout\,
	datad => \selecao[2]~input_o\,
	combout => \Mux1~9_combout\);

-- Location: IOIBUF_X29_Y0_N15
\N[95]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(95),
	o => \N[95]~input_o\);

-- Location: IOIBUF_X22_Y0_N29
\N[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(31),
	o => \N[31]~input_o\);

-- Location: LCCOMB_X25_Y1_N26
\Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\selecao[3]~input_o\ & ((\N[95]~input_o\) # ((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & (((!\selecao[2]~input_o\ & \N[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[95]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[31]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: IOIBUF_X26_Y0_N1
\N[127]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(127),
	o => \N[127]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\N[63]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(63),
	o => \N[63]~input_o\);

-- Location: LCCOMB_X25_Y1_N12
\Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Mux0~7_combout\ & ((\N[127]~input_o\) # ((!\selecao[2]~input_o\)))) # (!\Mux0~7_combout\ & (((\selecao[2]~input_o\ & \N[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datab => \N[127]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[63]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X24_Y0_N15
\N[119]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(119),
	o => \N[119]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\N[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(23),
	o => \N[23]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\N[55]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(55),
	o => \N[55]~input_o\);

-- Location: LCCOMB_X25_Y1_N8
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\selecao[3]~input_o\ & (((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & ((\selecao[2]~input_o\ & ((\N[55]~input_o\))) # (!\selecao[2]~input_o\ & (\N[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[23]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[55]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X26_Y0_N8
\N[87]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(87),
	o => \N[87]~input_o\);

-- Location: LCCOMB_X25_Y1_N10
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\selecao[3]~input_o\ & ((\Mux0~2_combout\ & (\N[119]~input_o\)) # (!\Mux0~2_combout\ & ((\N[87]~input_o\))))) # (!\selecao[3]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[119]~input_o\,
	datac => \Mux0~2_combout\,
	datad => \N[87]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X26_Y0_N22
\N[103]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(103),
	o => \N[103]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\N[71]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(71),
	o => \N[71]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\N[39]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(39),
	o => \N[39]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\N[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(7),
	o => \N[7]~input_o\);

-- Location: LCCOMB_X25_Y1_N28
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\selecao[2]~input_o\ & ((\N[39]~input_o\) # ((\selecao[3]~input_o\)))) # (!\selecao[2]~input_o\ & (((!\selecao[3]~input_o\ & \N[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[39]~input_o\,
	datab => \selecao[2]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \N[7]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X25_Y1_N22
\Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\selecao[3]~input_o\ & ((\Mux0~4_combout\ & (\N[103]~input_o\)) # (!\Mux0~4_combout\ & ((\N[71]~input_o\))))) # (!\selecao[3]~input_o\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[103]~input_o\,
	datab => \N[71]~input_o\,
	datac => \selecao[3]~input_o\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X25_Y1_N16
\Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\selecao[1]~input_o\ & ((\Mux0~3_combout\) # ((\selecao[0]~input_o\)))) # (!\selecao[1]~input_o\ & (((\Mux0~5_combout\ & !\selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~5_combout\,
	datac => \selecao[1]~input_o\,
	datad => \selecao[0]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: IOIBUF_X22_Y0_N8
\N[111]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(111),
	o => \N[111]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\N[47]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(47),
	o => \N[47]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\N[79]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(79),
	o => \N[79]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\N[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N(15),
	o => \N[15]~input_o\);

-- Location: LCCOMB_X25_Y1_N20
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\selecao[3]~input_o\ & ((\N[79]~input_o\) # ((\selecao[2]~input_o\)))) # (!\selecao[3]~input_o\ & (((!\selecao[2]~input_o\ & \N[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecao[3]~input_o\,
	datab => \N[79]~input_o\,
	datac => \selecao[2]~input_o\,
	datad => \N[15]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X25_Y1_N14
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\selecao[2]~input_o\ & ((\Mux0~0_combout\ & (\N[111]~input_o\)) # (!\Mux0~0_combout\ & ((\N[47]~input_o\))))) # (!\selecao[2]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N[111]~input_o\,
	datab => \selecao[2]~input_o\,
	datac => \N[47]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X25_Y1_N6
\Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\Mux0~6_combout\ & ((\Mux0~8_combout\) # ((!\selecao[0]~input_o\)))) # (!\Mux0~6_combout\ & (((\Mux0~1_combout\ & \selecao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \Mux0~6_combout\,
	datac => \Mux0~1_combout\,
	datad => \selecao[0]~input_o\,
	combout => \Mux0~9_combout\);

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

ww_z(0) <= \z[0]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(2) <= \z[2]~output_o\;

ww_z(3) <= \z[3]~output_o\;

ww_z(4) <= \z[4]~output_o\;

ww_z(5) <= \z[5]~output_o\;

ww_z(6) <= \z[6]~output_o\;

ww_z(7) <= \z[7]~output_o\;
END structure;


