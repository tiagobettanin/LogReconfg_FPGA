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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/30/2026 23:27:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          projeto
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY projeto_vhd_vec_tst IS
END projeto_vhd_vec_tst;
ARCHITECTURE projeto_arch OF projeto_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL N : STD_LOGIC_VECTOR(127 DOWNTO 0);
SIGNAL selecao : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL z : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT projeto
	PORT (
	N : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
	selecao : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	z : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : projeto
	PORT MAP (
-- list connections between master ports and signals
	N => N,
	selecao => selecao,
	z => z
	);
-- N[127]
t_prcs_N_127: PROCESS
BEGIN
	N(127) <= '1';
WAIT;
END PROCESS t_prcs_N_127;
-- N[126]
t_prcs_N_126: PROCESS
BEGIN
	N(126) <= '1';
WAIT;
END PROCESS t_prcs_N_126;
-- N[125]
t_prcs_N_125: PROCESS
BEGIN
	N(125) <= '1';
WAIT;
END PROCESS t_prcs_N_125;
-- N[124]
t_prcs_N_124: PROCESS
BEGIN
	N(124) <= '0';
WAIT;
END PROCESS t_prcs_N_124;
-- N[123]
t_prcs_N_123: PROCESS
BEGIN
	N(123) <= '0';
WAIT;
END PROCESS t_prcs_N_123;
-- N[122]
t_prcs_N_122: PROCESS
BEGIN
	N(122) <= '1';
WAIT;
END PROCESS t_prcs_N_122;
-- N[121]
t_prcs_N_121: PROCESS
BEGIN
	N(121) <= '0';
WAIT;
END PROCESS t_prcs_N_121;
-- N[120]
t_prcs_N_120: PROCESS
BEGIN
	N(120) <= '1';
WAIT;
END PROCESS t_prcs_N_120;
-- N[119]
t_prcs_N_119: PROCESS
BEGIN
	N(119) <= '0';
WAIT;
END PROCESS t_prcs_N_119;
-- N[118]
t_prcs_N_118: PROCESS
BEGIN
	N(118) <= '0';
WAIT;
END PROCESS t_prcs_N_118;
-- N[117]
t_prcs_N_117: PROCESS
BEGIN
	N(117) <= '1';
WAIT;
END PROCESS t_prcs_N_117;
-- N[116]
t_prcs_N_116: PROCESS
BEGIN
	N(116) <= '1';
WAIT;
END PROCESS t_prcs_N_116;
-- N[115]
t_prcs_N_115: PROCESS
BEGIN
	N(115) <= '1';
WAIT;
END PROCESS t_prcs_N_115;
-- N[114]
t_prcs_N_114: PROCESS
BEGIN
	N(114) <= '0';
WAIT;
END PROCESS t_prcs_N_114;
-- N[113]
t_prcs_N_113: PROCESS
BEGIN
	N(113) <= '1';
WAIT;
END PROCESS t_prcs_N_113;
-- N[112]
t_prcs_N_112: PROCESS
BEGIN
	N(112) <= '1';
WAIT;
END PROCESS t_prcs_N_112;
-- N[111]
t_prcs_N_111: PROCESS
BEGIN
	N(111) <= '0';
WAIT;
END PROCESS t_prcs_N_111;
-- N[110]
t_prcs_N_110: PROCESS
BEGIN
	N(110) <= '0';
WAIT;
END PROCESS t_prcs_N_110;
-- N[109]
t_prcs_N_109: PROCESS
BEGIN
	N(109) <= '1';
WAIT;
END PROCESS t_prcs_N_109;
-- N[108]
t_prcs_N_108: PROCESS
BEGIN
	N(108) <= '1';
WAIT;
END PROCESS t_prcs_N_108;
-- N[107]
t_prcs_N_107: PROCESS
BEGIN
	N(107) <= '0';
WAIT;
END PROCESS t_prcs_N_107;
-- N[106]
t_prcs_N_106: PROCESS
BEGIN
	N(106) <= '0';
WAIT;
END PROCESS t_prcs_N_106;
-- N[105]
t_prcs_N_105: PROCESS
BEGIN
	N(105) <= '0';
WAIT;
END PROCESS t_prcs_N_105;
-- N[104]
t_prcs_N_104: PROCESS
BEGIN
	N(104) <= '0';
WAIT;
END PROCESS t_prcs_N_104;
-- N[103]
t_prcs_N_103: PROCESS
BEGIN
	N(103) <= '0';
WAIT;
END PROCESS t_prcs_N_103;
-- N[102]
t_prcs_N_102: PROCESS
BEGIN
	N(102) <= '0';
WAIT;
END PROCESS t_prcs_N_102;
-- N[101]
t_prcs_N_101: PROCESS
BEGIN
	N(101) <= '1';
WAIT;
END PROCESS t_prcs_N_101;
-- N[100]
t_prcs_N_100: PROCESS
BEGIN
	N(100) <= '0';
WAIT;
END PROCESS t_prcs_N_100;
-- N[99]
t_prcs_N_99: PROCESS
BEGIN
	N(99) <= '1';
WAIT;
END PROCESS t_prcs_N_99;
-- N[98]
t_prcs_N_98: PROCESS
BEGIN
	N(98) <= '0';
WAIT;
END PROCESS t_prcs_N_98;
-- N[97]
t_prcs_N_97: PROCESS
BEGIN
	N(97) <= '0';
WAIT;
END PROCESS t_prcs_N_97;
-- N[96]
t_prcs_N_96: PROCESS
BEGIN
	N(96) <= '0';
WAIT;
END PROCESS t_prcs_N_96;
-- N[95]
t_prcs_N_95: PROCESS
BEGIN
	N(95) <= '0';
WAIT;
END PROCESS t_prcs_N_95;
-- N[94]
t_prcs_N_94: PROCESS
BEGIN
	N(94) <= '1';
WAIT;
END PROCESS t_prcs_N_94;
-- N[93]
t_prcs_N_93: PROCESS
BEGIN
	N(93) <= '1';
WAIT;
END PROCESS t_prcs_N_93;
-- N[92]
t_prcs_N_92: PROCESS
BEGIN
	N(92) <= '1';
WAIT;
END PROCESS t_prcs_N_92;
-- N[91]
t_prcs_N_91: PROCESS
BEGIN
	N(91) <= '0';
WAIT;
END PROCESS t_prcs_N_91;
-- N[90]
t_prcs_N_90: PROCESS
BEGIN
	N(90) <= '1';
WAIT;
END PROCESS t_prcs_N_90;
-- N[89]
t_prcs_N_89: PROCESS
BEGIN
	N(89) <= '0';
WAIT;
END PROCESS t_prcs_N_89;
-- N[88]
t_prcs_N_88: PROCESS
BEGIN
	N(88) <= '1';
WAIT;
END PROCESS t_prcs_N_88;
-- N[87]
t_prcs_N_87: PROCESS
BEGIN
	N(87) <= '0';
WAIT;
END PROCESS t_prcs_N_87;
-- N[86]
t_prcs_N_86: PROCESS
BEGIN
	N(86) <= '0';
WAIT;
END PROCESS t_prcs_N_86;
-- N[85]
t_prcs_N_85: PROCESS
BEGIN
	N(85) <= '0';
WAIT;
END PROCESS t_prcs_N_85;
-- N[84]
t_prcs_N_84: PROCESS
BEGIN
	N(84) <= '0';
WAIT;
END PROCESS t_prcs_N_84;
-- N[83]
t_prcs_N_83: PROCESS
BEGIN
	N(83) <= '0';
WAIT;
END PROCESS t_prcs_N_83;
-- N[82]
t_prcs_N_82: PROCESS
BEGIN
	N(82) <= '0';
WAIT;
END PROCESS t_prcs_N_82;
-- N[81]
t_prcs_N_81: PROCESS
BEGIN
	N(81) <= '0';
WAIT;
END PROCESS t_prcs_N_81;
-- N[80]
t_prcs_N_80: PROCESS
BEGIN
	N(80) <= '0';
WAIT;
END PROCESS t_prcs_N_80;
-- N[79]
t_prcs_N_79: PROCESS
BEGIN
	N(79) <= '1';
WAIT;
END PROCESS t_prcs_N_79;
-- N[78]
t_prcs_N_78: PROCESS
BEGIN
	N(78) <= '1';
WAIT;
END PROCESS t_prcs_N_78;
-- N[77]
t_prcs_N_77: PROCESS
BEGIN
	N(77) <= '0';
WAIT;
END PROCESS t_prcs_N_77;
-- N[76]
t_prcs_N_76: PROCESS
BEGIN
	N(76) <= '0';
WAIT;
END PROCESS t_prcs_N_76;
-- N[75]
t_prcs_N_75: PROCESS
BEGIN
	N(75) <= '1';
WAIT;
END PROCESS t_prcs_N_75;
-- N[74]
t_prcs_N_74: PROCESS
BEGIN
	N(74) <= '0';
WAIT;
END PROCESS t_prcs_N_74;
-- N[73]
t_prcs_N_73: PROCESS
BEGIN
	N(73) <= '0';
WAIT;
END PROCESS t_prcs_N_73;
-- N[72]
t_prcs_N_72: PROCESS
BEGIN
	N(72) <= '0';
WAIT;
END PROCESS t_prcs_N_72;
-- N[71]
t_prcs_N_71: PROCESS
BEGIN
	N(71) <= '0';
WAIT;
END PROCESS t_prcs_N_71;
-- N[70]
t_prcs_N_70: PROCESS
BEGIN
	N(70) <= '1';
WAIT;
END PROCESS t_prcs_N_70;
-- N[69]
t_prcs_N_69: PROCESS
BEGIN
	N(69) <= '0';
WAIT;
END PROCESS t_prcs_N_69;
-- N[68]
t_prcs_N_68: PROCESS
BEGIN
	N(68) <= '1';
WAIT;
END PROCESS t_prcs_N_68;
-- N[67]
t_prcs_N_67: PROCESS
BEGIN
	N(67) <= '0';
WAIT;
END PROCESS t_prcs_N_67;
-- N[66]
t_prcs_N_66: PROCESS
BEGIN
	N(66) <= '0';
WAIT;
END PROCESS t_prcs_N_66;
-- N[65]
t_prcs_N_65: PROCESS
BEGIN
	N(65) <= '0';
WAIT;
END PROCESS t_prcs_N_65;
-- N[64]
t_prcs_N_64: PROCESS
BEGIN
	N(64) <= '1';
WAIT;
END PROCESS t_prcs_N_64;
-- N[63]
t_prcs_N_63: PROCESS
BEGIN
	N(63) <= '1';
WAIT;
END PROCESS t_prcs_N_63;
-- N[62]
t_prcs_N_62: PROCESS
BEGIN
	N(62) <= '0';
WAIT;
END PROCESS t_prcs_N_62;
-- N[61]
t_prcs_N_61: PROCESS
BEGIN
	N(61) <= '0';
WAIT;
END PROCESS t_prcs_N_61;
-- N[60]
t_prcs_N_60: PROCESS
BEGIN
	N(60) <= '0';
WAIT;
END PROCESS t_prcs_N_60;
-- N[59]
t_prcs_N_59: PROCESS
BEGIN
	N(59) <= '1';
WAIT;
END PROCESS t_prcs_N_59;
-- N[58]
t_prcs_N_58: PROCESS
BEGIN
	N(58) <= '1';
WAIT;
END PROCESS t_prcs_N_58;
-- N[57]
t_prcs_N_57: PROCESS
BEGIN
	N(57) <= '1';
WAIT;
END PROCESS t_prcs_N_57;
-- N[56]
t_prcs_N_56: PROCESS
BEGIN
	N(56) <= '1';
WAIT;
END PROCESS t_prcs_N_56;
-- N[55]
t_prcs_N_55: PROCESS
BEGIN
	N(55) <= '0';
WAIT;
END PROCESS t_prcs_N_55;
-- N[54]
t_prcs_N_54: PROCESS
BEGIN
	N(54) <= '1';
WAIT;
END PROCESS t_prcs_N_54;
-- N[53]
t_prcs_N_53: PROCESS
BEGIN
	N(53) <= '1';
WAIT;
END PROCESS t_prcs_N_53;
-- N[52]
t_prcs_N_52: PROCESS
BEGIN
	N(52) <= '0';
WAIT;
END PROCESS t_prcs_N_52;
-- N[51]
t_prcs_N_51: PROCESS
BEGIN
	N(51) <= '1';
WAIT;
END PROCESS t_prcs_N_51;
-- N[50]
t_prcs_N_50: PROCESS
BEGIN
	N(50) <= '1';
WAIT;
END PROCESS t_prcs_N_50;
-- N[49]
t_prcs_N_49: PROCESS
BEGIN
	N(49) <= '0';
WAIT;
END PROCESS t_prcs_N_49;
-- N[48]
t_prcs_N_48: PROCESS
BEGIN
	N(48) <= '0';
WAIT;
END PROCESS t_prcs_N_48;
-- N[47]
t_prcs_N_47: PROCESS
BEGIN
	N(47) <= '1';
WAIT;
END PROCESS t_prcs_N_47;
-- N[46]
t_prcs_N_46: PROCESS
BEGIN
	N(46) <= '1';
WAIT;
END PROCESS t_prcs_N_46;
-- N[45]
t_prcs_N_45: PROCESS
BEGIN
	N(45) <= '1';
WAIT;
END PROCESS t_prcs_N_45;
-- N[44]
t_prcs_N_44: PROCESS
BEGIN
	N(44) <= '1';
WAIT;
END PROCESS t_prcs_N_44;
-- N[43]
t_prcs_N_43: PROCESS
BEGIN
	N(43) <= '1';
WAIT;
END PROCESS t_prcs_N_43;
-- N[42]
t_prcs_N_42: PROCESS
BEGIN
	N(42) <= '1';
WAIT;
END PROCESS t_prcs_N_42;
-- N[41]
t_prcs_N_41: PROCESS
BEGIN
	N(41) <= '0';
WAIT;
END PROCESS t_prcs_N_41;
-- N[40]
t_prcs_N_40: PROCESS
BEGIN
	N(40) <= '1';
WAIT;
END PROCESS t_prcs_N_40;
-- N[39]
t_prcs_N_39: PROCESS
BEGIN
	N(39) <= '1';
WAIT;
END PROCESS t_prcs_N_39;
-- N[38]
t_prcs_N_38: PROCESS
BEGIN
	N(38) <= '1';
WAIT;
END PROCESS t_prcs_N_38;
-- N[37]
t_prcs_N_37: PROCESS
BEGIN
	N(37) <= '0';
WAIT;
END PROCESS t_prcs_N_37;
-- N[36]
t_prcs_N_36: PROCESS
BEGIN
	N(36) <= '1';
WAIT;
END PROCESS t_prcs_N_36;
-- N[35]
t_prcs_N_35: PROCESS
BEGIN
	N(35) <= '0';
WAIT;
END PROCESS t_prcs_N_35;
-- N[34]
t_prcs_N_34: PROCESS
BEGIN
	N(34) <= '1';
WAIT;
END PROCESS t_prcs_N_34;
-- N[33]
t_prcs_N_33: PROCESS
BEGIN
	N(33) <= '1';
WAIT;
END PROCESS t_prcs_N_33;
-- N[32]
t_prcs_N_32: PROCESS
BEGIN
	N(32) <= '1';
WAIT;
END PROCESS t_prcs_N_32;
-- N[31]
t_prcs_N_31: PROCESS
BEGIN
	N(31) <= '1';
WAIT;
END PROCESS t_prcs_N_31;
-- N[30]
t_prcs_N_30: PROCESS
BEGIN
	N(30) <= '1';
WAIT;
END PROCESS t_prcs_N_30;
-- N[29]
t_prcs_N_29: PROCESS
BEGIN
	N(29) <= '0';
WAIT;
END PROCESS t_prcs_N_29;
-- N[28]
t_prcs_N_28: PROCESS
BEGIN
	N(28) <= '0';
WAIT;
END PROCESS t_prcs_N_28;
-- N[27]
t_prcs_N_27: PROCESS
BEGIN
	N(27) <= '0';
WAIT;
END PROCESS t_prcs_N_27;
-- N[26]
t_prcs_N_26: PROCESS
BEGIN
	N(26) <= '1';
WAIT;
END PROCESS t_prcs_N_26;
-- N[25]
t_prcs_N_25: PROCESS
BEGIN
	N(25) <= '1';
WAIT;
END PROCESS t_prcs_N_25;
-- N[24]
t_prcs_N_24: PROCESS
BEGIN
	N(24) <= '0';
WAIT;
END PROCESS t_prcs_N_24;
-- N[23]
t_prcs_N_23: PROCESS
BEGIN
	N(23) <= '1';
WAIT;
END PROCESS t_prcs_N_23;
-- N[22]
t_prcs_N_22: PROCESS
BEGIN
	N(22) <= '0';
WAIT;
END PROCESS t_prcs_N_22;
-- N[21]
t_prcs_N_21: PROCESS
BEGIN
	N(21) <= '0';
WAIT;
END PROCESS t_prcs_N_21;
-- N[20]
t_prcs_N_20: PROCESS
BEGIN
	N(20) <= '1';
WAIT;
END PROCESS t_prcs_N_20;
-- N[19]
t_prcs_N_19: PROCESS
BEGIN
	N(19) <= '1';
WAIT;
END PROCESS t_prcs_N_19;
-- N[18]
t_prcs_N_18: PROCESS
BEGIN
	N(18) <= '1';
WAIT;
END PROCESS t_prcs_N_18;
-- N[17]
t_prcs_N_17: PROCESS
BEGIN
	N(17) <= '0';
WAIT;
END PROCESS t_prcs_N_17;
-- N[16]
t_prcs_N_16: PROCESS
BEGIN
	N(16) <= '1';
WAIT;
END PROCESS t_prcs_N_16;
-- N[15]
t_prcs_N_15: PROCESS
BEGIN
	N(15) <= '1';
WAIT;
END PROCESS t_prcs_N_15;
-- N[14]
t_prcs_N_14: PROCESS
BEGIN
	N(14) <= '1';
WAIT;
END PROCESS t_prcs_N_14;
-- N[13]
t_prcs_N_13: PROCESS
BEGIN
	N(13) <= '1';
WAIT;
END PROCESS t_prcs_N_13;
-- N[12]
t_prcs_N_12: PROCESS
BEGIN
	N(12) <= '1';
WAIT;
END PROCESS t_prcs_N_12;
-- N[11]
t_prcs_N_11: PROCESS
BEGIN
	N(11) <= '1';
WAIT;
END PROCESS t_prcs_N_11;
-- N[10]
t_prcs_N_10: PROCESS
BEGIN
	N(10) <= '0';
WAIT;
END PROCESS t_prcs_N_10;
-- N[9]
t_prcs_N_9: PROCESS
BEGIN
	N(9) <= '1';
WAIT;
END PROCESS t_prcs_N_9;
-- N[8]
t_prcs_N_8: PROCESS
BEGIN
	N(8) <= '1';
WAIT;
END PROCESS t_prcs_N_8;
-- N[7]
t_prcs_N_7: PROCESS
BEGIN
	N(7) <= '0';
WAIT;
END PROCESS t_prcs_N_7;
-- N[6]
t_prcs_N_6: PROCESS
BEGIN
	N(6) <= '0';
WAIT;
END PROCESS t_prcs_N_6;
-- N[5]
t_prcs_N_5: PROCESS
BEGIN
	N(5) <= '1';
WAIT;
END PROCESS t_prcs_N_5;
-- N[4]
t_prcs_N_4: PROCESS
BEGIN
	N(4) <= '1';
WAIT;
END PROCESS t_prcs_N_4;
-- N[3]
t_prcs_N_3: PROCESS
BEGIN
	N(3) <= '0';
WAIT;
END PROCESS t_prcs_N_3;
-- N[2]
t_prcs_N_2: PROCESS
BEGIN
	N(2) <= '0';
WAIT;
END PROCESS t_prcs_N_2;
-- N[1]
t_prcs_N_1: PROCESS
BEGIN
	N(1) <= '1';
WAIT;
END PROCESS t_prcs_N_1;
-- N[0]
t_prcs_N_0: PROCESS
BEGIN
	N(0) <= '0';
WAIT;
END PROCESS t_prcs_N_0;
-- selecao[3]
t_prcs_selecao_3: PROCESS
BEGIN
	selecao(3) <= '0';
	WAIT FOR 320000 ps;
	selecao(3) <= '1';
	WAIT FOR 320000 ps;
	selecao(3) <= '0';
	WAIT FOR 320000 ps;
	selecao(3) <= '1';
WAIT;
END PROCESS t_prcs_selecao_3;
-- selecao[2]
t_prcs_selecao_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		selecao(2) <= '0';
		WAIT FOR 160000 ps;
		selecao(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	selecao(2) <= '0';
WAIT;
END PROCESS t_prcs_selecao_2;
-- selecao[1]
t_prcs_selecao_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		selecao(1) <= '0';
		WAIT FOR 80000 ps;
		selecao(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	selecao(1) <= '0';
WAIT;
END PROCESS t_prcs_selecao_1;
-- selecao[0]
t_prcs_selecao_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		selecao(0) <= '0';
		WAIT FOR 40000 ps;
		selecao(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	selecao(0) <= '0';
WAIT;
END PROCESS t_prcs_selecao_0;
END projeto_arch;
