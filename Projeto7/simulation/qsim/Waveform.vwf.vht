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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/20/2026 22:11:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          atividade7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY atividade7_vhd_vec_tst IS
END atividade7_vhd_vec_tst;
ARCHITECTURE atividade7_arch OF atividade7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL hex0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL led_done : STD_LOGIC;
SIGNAL pause_n : STD_LOGIC;
SIGNAL reset_n : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT atividade7
	PORT (
	clk : IN STD_LOGIC;
	hex0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	led_done : OUT STD_LOGIC;
	pause_n : IN STD_LOGIC;
	reset_n : IN STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : atividade7
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	hex0 => hex0,
	hex1 => hex1,
	hex2 => hex2,
	hex3 => hex3,
	led_done => led_done,
	pause_n => pause_n,
	reset_n => reset_n,
	sel => sel
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- pause_n
t_prcs_pause_n: PROCESS
BEGIN
	pause_n <= '0';
WAIT;
END PROCESS t_prcs_pause_n;

-- reset_n
t_prcs_reset_n: PROCESS
BEGIN
	reset_n <= '0';
WAIT;
END PROCESS t_prcs_reset_n;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;
END atividade7_arch;
