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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/07/2022 21:42:33"

-- 
-- Device: Altera 5M1270ZF256C4 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	IITB_RISC_22 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	PC : OUT std_logic_vector(15 DOWNTO 0);
	IR : OUT std_logic_vector(15 DOWNTO 0);
	done : OUT std_logic;
	C : OUT std_logic;
	Z : OUT std_logic;
	reg0 : OUT std_logic_vector(15 DOWNTO 0);
	reg1 : OUT std_logic_vector(15 DOWNTO 0);
	reg2 : OUT std_logic_vector(15 DOWNTO 0);
	reg3 : OUT std_logic_vector(15 DOWNTO 0);
	reg4 : OUT std_logic_vector(15 DOWNTO 0);
	reg5 : OUT std_logic_vector(15 DOWNTO 0);
	reg6 : OUT std_logic_vector(15 DOWNTO 0);
	reg7 : OUT std_logic_vector(15 DOWNTO 0)
	);
END IITB_RISC_22;

-- Design Ports Information


ARCHITECTURE structure OF IITB_RISC_22 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_PC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_reg0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg6 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reg7 : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S8A~regout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S8B~regout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S7A~regout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S7B~regout\ : std_logic;
SIGNAL \FSM_R|WideOr14~combout\ : std_logic;
SIGNAL \memory_R|RAM~296_combout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S3~regout\ : std_logic;
SIGNAL \FSM_R|WideOr9~0_combout\ : std_logic;
SIGNAL \ALU_b[2]~2_combout\ : std_logic;
SIGNAL \ALU_b[1]~1\ : std_logic;
SIGNAL \ALU_en|Add0~0\ : std_logic;
SIGNAL \M3_out[0]~0\ : std_logic;
SIGNAL \FSM_R|WideOr0~combout\ : std_logic;
SIGNAL \FSM_R|WideOr1~0_combout\ : std_logic;
SIGNAL \M2_out[2]~4_combout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S2B~regout\ : std_logic;
SIGNAL \FSM_R|WideOr19~combout\ : std_logic;
SIGNAL \PE_R|op_addr[1]~0\ : std_logic;
SIGNAL \PE_R|op_addr[1]~2_combout\ : std_logic;
SIGNAL \M2_out[1]~2_combout\ : std_logic;
SIGNAL \M2_out[1]~3_combout\ : std_logic;
SIGNAL \PE_R|op_addr[0]~1_combout\ : std_logic;
SIGNAL \M2_out[0]~0_combout\ : std_logic;
SIGNAL \M2_out[0]~1_combout\ : std_logic;
SIGNAL \RF_R|Decoder0~2_combout\ : std_logic;
SIGNAL \RF_R|registers[2][0]~regout\ : std_logic;
SIGNAL \M3_out[0]~1\ : std_logic;
SIGNAL \RF_R|Decoder0~1_combout\ : std_logic;
SIGNAL \RF_R|registers[1][0]~regout\ : std_logic;
SIGNAL \RF_R|Decoder0~0_combout\ : std_logic;
SIGNAL \RF_R|registers[0][0]~regout\ : std_logic;
SIGNAL \RF_R|Mux15~0\ : std_logic;
SIGNAL \RF_R|Decoder0~3_combout\ : std_logic;
SIGNAL \RF_R|registers[3][0]~regout\ : std_logic;
SIGNAL \RF_R|Mux31~2\ : std_logic;
SIGNAL \RF_R|Mux31~3_combout\ : std_logic;
SIGNAL \RF_R|Decoder0~6_combout\ : std_logic;
SIGNAL \RF_R|registers[6][0]~regout\ : std_logic;
SIGNAL \RF_R|Decoder0~4_combout\ : std_logic;
SIGNAL \RF_R|registers[4][0]~regout\ : std_logic;
SIGNAL \RF_R|Mux31~0\ : std_logic;
SIGNAL \RF_R|Decoder0~5_combout\ : std_logic;
SIGNAL \RF_R|registers[5][0]~regout\ : std_logic;
SIGNAL \RF_R|Mux15~2\ : std_logic;
SIGNAL \RF_R|Decoder0~7_combout\ : std_logic;
SIGNAL \RF_R|registers[7][0]~regout\ : std_logic;
SIGNAL \RF_R|Mux31~1\ : std_logic;
SIGNAL \RF_R|Mux31~4_combout\ : std_logic;
SIGNAL \RF_R|Mux15~3\ : std_logic;
SIGNAL \RF_R|Mux15~1\ : std_logic;
SIGNAL \FSM_R|WideOr8~0_combout\ : std_logic;
SIGNAL \FSM_R|WideOr8~combout\ : std_logic;
SIGNAL \T1_R|r[0]~COMBOUT\ : std_logic;
SIGNAL \FSM_R|WideOr9~combout\ : std_logic;
SIGNAL \ALU_a[0]~0_combout\ : std_logic;
SIGNAL \ALU_en|Add0~2\ : std_logic;
SIGNAL \ALU_en|Add0~2COUT1_86\ : std_logic;
SIGNAL \ALU_en|Add0~7\ : std_logic;
SIGNAL \ALU_en|Add0~7COUT1_87\ : std_logic;
SIGNAL \ALU_en|Add0~10\ : std_logic;
SIGNAL \M3_out[2]~4\ : std_logic;
SIGNAL \RF_R|registers[2][2]~regout\ : std_logic;
SIGNAL \M3_out[2]~5\ : std_logic;
SIGNAL \RF_R|registers[1][2]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][2]~regout\ : std_logic;
SIGNAL \RF_R|Mux13~0\ : std_logic;
SIGNAL \RF_R|Mux13~1\ : std_logic;
SIGNAL \T1_R|r[2]~COMBOUT\ : std_logic;
SIGNAL \RF_R|Mux29~2\ : std_logic;
SIGNAL \RF_R|registers[3][2]~regout\ : std_logic;
SIGNAL \RF_R|Mux29~3_combout\ : std_logic;
SIGNAL \RF_R|registers[6][2]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][2]~regout\ : std_logic;
SIGNAL \RF_R|Mux29~0\ : std_logic;
SIGNAL \RF_R|Mux29~1\ : std_logic;
SIGNAL \RF_R|Mux29~4_combout\ : std_logic;
SIGNAL \ALU_a[2]~2_combout\ : std_logic;
SIGNAL \M11_out[2]~2_combout\ : std_logic;
SIGNAL \memory_R|RAM~288_combout\ : std_logic;
SIGNAL \memory_R|RAM~21_regout\ : std_logic;
SIGNAL \memory_R|RAM~294_combout\ : std_logic;
SIGNAL \memory_R|RAM~57_regout\ : std_logic;
SIGNAL \memory_R|RAM~297_combout\ : std_logic;
SIGNAL \memory_R|RAM~298_combout\ : std_logic;
SIGNAL \ALU_b[4]~4\ : std_logic;
SIGNAL \ALU_en|Add0~12\ : std_logic;
SIGNAL \ALU_b[3]~3_combout\ : std_logic;
SIGNAL \ALU_en|Add0~15\ : std_logic;
SIGNAL \M3_out[3]~6\ : std_logic;
SIGNAL \M3_out[3]~7\ : std_logic;
SIGNAL \RF_R|registers[6][3]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][3]~regout\ : std_logic;
SIGNAL \RF_R|Mux28~0\ : std_logic;
SIGNAL \RF_R|registers[5][3]~regout\ : std_logic;
SIGNAL \RF_R|Mux12~2\ : std_logic;
SIGNAL \RF_R|registers[7][3]~regout\ : std_logic;
SIGNAL \RF_R|Mux28~1\ : std_logic;
SIGNAL \RF_R|registers[2][3]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][3]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][3]~regout\ : std_logic;
SIGNAL \RF_R|Mux12~0\ : std_logic;
SIGNAL \RF_R|registers[3][3]~regout\ : std_logic;
SIGNAL \RF_R|Mux28~2\ : std_logic;
SIGNAL \RF_R|Mux28~3_combout\ : std_logic;
SIGNAL \RF_R|Mux28~4_combout\ : std_logic;
SIGNAL \RF_R|Mux12~3\ : std_logic;
SIGNAL \T1_R|r[3]~COMBOUT\ : std_logic;
SIGNAL \ALU_a[3]~3_combout\ : std_logic;
SIGNAL \ALU_en|Add0~17\ : std_logic;
SIGNAL \ALU_en|Add0~17COUT1_88\ : std_logic;
SIGNAL \M3_out[4]~9\ : std_logic;
SIGNAL \RF_R|registers[4][4]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][4]~regout\ : std_logic;
SIGNAL \RF_R|Mux11~2\ : std_logic;
SIGNAL \RF_R|registers[7][4]~regout\ : std_logic;
SIGNAL \RF_R|Mux27~0\ : std_logic;
SIGNAL \RF_R|registers[5][4]~regout\ : std_logic;
SIGNAL \RF_R|Mux11~3\ : std_logic;
SIGNAL \RF_R|registers[1][4]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][4]~regout\ : std_logic;
SIGNAL \RF_R|Mux11~0\ : std_logic;
SIGNAL \RF_R|Mux11~1\ : std_logic;
SIGNAL \ALU_a[4]~4_combout\ : std_logic;
SIGNAL \ALU_en|Add0~20\ : std_logic;
SIGNAL \M3_out[4]~8\ : std_logic;
SIGNAL \RF_R|registers[2][4]~regout\ : std_logic;
SIGNAL \RF_R|registers[3][4]~regout\ : std_logic;
SIGNAL \RF_R|Mux27~2\ : std_logic;
SIGNAL \RF_R|Mux27~3_combout\ : std_logic;
SIGNAL \RF_R|Mux27~1\ : std_logic;
SIGNAL \RF_R|Mux27~4_combout\ : std_logic;
SIGNAL \T1_R|r[4]~COMBOUT\ : std_logic;
SIGNAL \PE_R|op_addr[1]~4\ : std_logic;
SIGNAL \M1_out[1]~0_combout\ : std_logic;
SIGNAL \RF_R|Mux12~1\ : std_logic;
SIGNAL \M11_out[3]~3_combout\ : std_logic;
SIGNAL \memory_R|RAM~290_combout\ : std_logic;
SIGNAL \memory_R|RAM~37_regout\ : std_logic;
SIGNAL \memory_R|RAM~282_combout\ : std_logic;
SIGNAL \memory_R|RAM~283_combout\ : std_logic;
SIGNAL \PE_R|op_addr[2]~3_combout\ : std_logic;
SIGNAL \M1_out[2]~2_combout\ : std_logic;
SIGNAL \M11_out[0]~0_combout\ : std_logic;
SIGNAL \memory_R|RAM~292_combout\ : std_logic;
SIGNAL \memory_R|RAM~70_regout\ : std_logic;
SIGNAL \memory_R|RAM~286_combout\ : std_logic;
SIGNAL \memory_R|RAM~287_combout\ : std_logic;
SIGNAL \ALU_b[8]~8\ : std_logic;
SIGNAL \RF_R|Mux8~2\ : std_logic;
SIGNAL \RF_R|Mux8~3\ : std_logic;
SIGNAL \M6_out[5]~1_combout\ : std_logic;
SIGNAL \ALU_en|Add0~22\ : std_logic;
SIGNAL \ALU_en|Add0~22COUT1_89\ : std_logic;
SIGNAL \M3_out[5]~11\ : std_logic;
SIGNAL \RF_R|registers[4][5]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][5]~regout\ : std_logic;
SIGNAL \RF_R|Mux26~2\ : std_logic;
SIGNAL \RF_R|registers[7][5]~regout\ : std_logic;
SIGNAL \RF_R|Mux10~2\ : std_logic;
SIGNAL \RF_R|registers[5][5]~regout\ : std_logic;
SIGNAL \RF_R|Mux26~3\ : std_logic;
SIGNAL \RF_R|registers[0][5]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][5]~regout\ : std_logic;
SIGNAL \RF_R|Mux26~0\ : std_logic;
SIGNAL \RF_R|Mux10~0\ : std_logic;
SIGNAL \RF_R|registers[2][5]~regout\ : std_logic;
SIGNAL \RF_R|Mux26~1_combout\ : std_logic;
SIGNAL \RF_R|Mux10~3\ : std_logic;
SIGNAL \T1_R|r[5]~COMBOUT\ : std_logic;
SIGNAL \M6_out[5]~0_combout\ : std_logic;
SIGNAL \ALU_b[15]~5_combout\ : std_logic;
SIGNAL \ALU_en|Add0~25\ : std_logic;
SIGNAL \M3_out[5]~10\ : std_logic;
SIGNAL \RF_R|registers[3][5]~regout\ : std_logic;
SIGNAL \RF_R|Mux10~1\ : std_logic;
SIGNAL \ALU_a[5]~5_combout\ : std_logic;
SIGNAL \ALU_en|Add0~27\ : std_logic;
SIGNAL \ALU_en|Add0~27COUT1_90\ : std_logic;
SIGNAL \ALU_en|Add0~30\ : std_logic;
SIGNAL \M3_out[6]~12\ : std_logic;
SIGNAL \RF_R|registers[2][6]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][6]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][6]~regout\ : std_logic;
SIGNAL \RF_R|Mux9~0\ : std_logic;
SIGNAL \RF_R|registers[3][6]~regout\ : std_logic;
SIGNAL \RF_R|Mux25~2\ : std_logic;
SIGNAL \RF_R|Mux25~3_combout\ : std_logic;
SIGNAL \RF_R|registers[6][6]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][6]~regout\ : std_logic;
SIGNAL \RF_R|Mux25~0\ : std_logic;
SIGNAL \RF_R|Mux25~1\ : std_logic;
SIGNAL \RF_R|Mux25~4_combout\ : std_logic;
SIGNAL \RF_R|Mux9~1\ : std_logic;
SIGNAL \T1_R|r[6]~COMBOUT\ : std_logic;
SIGNAL \ALU_b[6]~6_combout\ : std_logic;
SIGNAL \M3_out[6]~13\ : std_logic;
SIGNAL \RF_R|Mux9~2\ : std_logic;
SIGNAL \RF_R|registers[7][6]~regout\ : std_logic;
SIGNAL \RF_R|registers[5][6]~regout\ : std_logic;
SIGNAL \RF_R|Mux9~3\ : std_logic;
SIGNAL \ALU_a[6]~6_combout\ : std_logic;
SIGNAL \ALU_en|Add0~32\ : std_logic;
SIGNAL \ALU_en|Add0~32COUT1_91\ : std_logic;
SIGNAL \ALU_en|Add0~35\ : std_logic;
SIGNAL \M3_out[7]~14\ : std_logic;
SIGNAL \RF_R|registers[2][7]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][7]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][7]~regout\ : std_logic;
SIGNAL \RF_R|Mux8~0\ : std_logic;
SIGNAL \RF_R|Mux8~1\ : std_logic;
SIGNAL \ALU_a[7]~7_combout\ : std_logic;
SIGNAL \M3_out[7]~15\ : std_logic;
SIGNAL \RF_R|registers[6][7]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][7]~regout\ : std_logic;
SIGNAL \RF_R|Mux24~0\ : std_logic;
SIGNAL \RF_R|registers[5][7]~regout\ : std_logic;
SIGNAL \RF_R|registers[7][7]~regout\ : std_logic;
SIGNAL \RF_R|Mux24~1\ : std_logic;
SIGNAL \RF_R|Mux24~2\ : std_logic;
SIGNAL \RF_R|registers[3][7]~regout\ : std_logic;
SIGNAL \RF_R|Mux24~3_combout\ : std_logic;
SIGNAL \RF_R|Mux24~4_combout\ : std_logic;
SIGNAL \T1_R|r[7]~COMBOUT\ : std_logic;
SIGNAL \ALU_b[7]~7_combout\ : std_logic;
SIGNAL \ALU_en|Add0~37\ : std_logic;
SIGNAL \ALU_en|Add0~40\ : std_logic;
SIGNAL \M3_out[8]~16\ : std_logic;
SIGNAL \M3_out[8]~17\ : std_logic;
SIGNAL \RF_R|registers[1][8]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][8]~regout\ : std_logic;
SIGNAL \RF_R|Mux7~0\ : std_logic;
SIGNAL \RF_R|Mux7~1\ : std_logic;
SIGNAL \RF_R|registers[4][8]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][8]~regout\ : std_logic;
SIGNAL \RF_R|Mux7~2\ : std_logic;
SIGNAL \RF_R|registers[7][8]~regout\ : std_logic;
SIGNAL \RF_R|Mux23~0\ : std_logic;
SIGNAL \RF_R|registers[5][8]~regout\ : std_logic;
SIGNAL \RF_R|Mux7~3\ : std_logic;
SIGNAL \ALU_a[8]~8_combout\ : std_logic;
SIGNAL \RF_R|registers[2][8]~regout\ : std_logic;
SIGNAL \RF_R|registers[3][8]~regout\ : std_logic;
SIGNAL \RF_R|Mux23~2\ : std_logic;
SIGNAL \RF_R|Mux23~3_combout\ : std_logic;
SIGNAL \RF_R|Mux23~1\ : std_logic;
SIGNAL \RF_R|Mux23~4_combout\ : std_logic;
SIGNAL \T1_R|r[8]~COMBOUT\ : std_logic;
SIGNAL \ALU_en|Add0~5\ : std_logic;
SIGNAL \M3_out[1]~2\ : std_logic;
SIGNAL \M3_out[1]~3\ : std_logic;
SIGNAL \RF_R|registers[6][1]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][1]~regout\ : std_logic;
SIGNAL \RF_R|Mux30~0\ : std_logic;
SIGNAL \RF_R|registers[5][1]~regout\ : std_logic;
SIGNAL \RF_R|Mux14~2\ : std_logic;
SIGNAL \RF_R|registers[7][1]~regout\ : std_logic;
SIGNAL \RF_R|Mux30~1\ : std_logic;
SIGNAL \RF_R|registers[0][1]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][1]~regout\ : std_logic;
SIGNAL \RF_R|Mux30~2\ : std_logic;
SIGNAL \RF_R|registers[2][1]~regout\ : std_logic;
SIGNAL \RF_R|Mux14~0\ : std_logic;
SIGNAL \RF_R|registers[3][1]~regout\ : std_logic;
SIGNAL \RF_R|Mux30~3_combout\ : std_logic;
SIGNAL \RF_R|Mux30~4_combout\ : std_logic;
SIGNAL \RF_R|Mux14~3\ : std_logic;
SIGNAL \RF_R|Mux14~1\ : std_logic;
SIGNAL \T1_R|r[1]~COMBOUT\ : std_logic;
SIGNAL \ALU_a[1]~1_combout\ : std_logic;
SIGNAL \M11_out[1]~1_combout\ : std_logic;
SIGNAL \memory_R|RAM~279_combout\ : std_logic;
SIGNAL \memory_R|RAM~280_combout\ : std_logic;
SIGNAL \M1_out[0]~1\ : std_logic;
SIGNAL \RF_R|Mux13~2\ : std_logic;
SIGNAL \RF_R|registers[7][2]~regout\ : std_logic;
SIGNAL \RF_R|registers[5][2]~regout\ : std_logic;
SIGNAL \RF_R|Mux13~3\ : std_logic;
SIGNAL \memory_R|RAM~281_combout\ : std_logic;
SIGNAL \memory_R|RAM~284_combout\ : std_logic;
SIGNAL \memory_R|RAM~285_combout\ : std_logic;
SIGNAL \PE~0_combout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol~24_combout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.Sf~regout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.Si~regout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S0A~regout\ : std_logic;
SIGNAL \FSM_R|fsm_state_symbol.S2A~regout\ : std_logic;
SIGNAL \ALU_b[0]~0_combout\ : std_logic;
SIGNAL \RF_R|Mux6~2\ : std_logic;
SIGNAL \RF_R|registers[7][9]~regout\ : std_logic;
SIGNAL \RF_R|Mux22~1\ : std_logic;
SIGNAL \RF_R|registers[0][9]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][9]~regout\ : std_logic;
SIGNAL \RF_R|Mux22~2\ : std_logic;
SIGNAL \RF_R|registers[2][9]~regout\ : std_logic;
SIGNAL \RF_R|Mux6~0\ : std_logic;
SIGNAL \RF_R|registers[3][9]~regout\ : std_logic;
SIGNAL \RF_R|Mux22~3_combout\ : std_logic;
SIGNAL \RF_R|Mux22~4_combout\ : std_logic;
SIGNAL \RF_R|Mux6~1\ : std_logic;
SIGNAL \T1_R|r[9]~COMBOUT\ : std_logic;
SIGNAL \ALU_b[9]~9_combout\ : std_logic;
SIGNAL \ALU_en|Add0~42\ : std_logic;
SIGNAL \ALU_en|Add0~42COUT1_92\ : std_logic;
SIGNAL \ALU_en|Add0~45\ : std_logic;
SIGNAL \M3_out[9]~18\ : std_logic;
SIGNAL \M3_out[9]~19\ : std_logic;
SIGNAL \RF_R|registers[6][9]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][9]~regout\ : std_logic;
SIGNAL \RF_R|Mux22~0\ : std_logic;
SIGNAL \RF_R|registers[5][9]~regout\ : std_logic;
SIGNAL \RF_R|Mux6~3\ : std_logic;
SIGNAL \ALU_a[9]~9_combout\ : std_logic;
SIGNAL \ALU_b[10]~10_combout\ : std_logic;
SIGNAL \ALU_en|Add0~47\ : std_logic;
SIGNAL \ALU_en|Add0~47COUT1_93\ : std_logic;
SIGNAL \ALU_en|Add0~50\ : std_logic;
SIGNAL \M3_out[10]~20\ : std_logic;
SIGNAL \M3_out[10]~21\ : std_logic;
SIGNAL \RF_R|registers[4][10]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][10]~regout\ : std_logic;
SIGNAL \RF_R|Mux21~2\ : std_logic;
SIGNAL \RF_R|registers[7][10]~regout\ : std_logic;
SIGNAL \RF_R|Mux5~2\ : std_logic;
SIGNAL \RF_R|registers[5][10]~regout\ : std_logic;
SIGNAL \RF_R|Mux21~3\ : std_logic;
SIGNAL \RF_R|registers[3][10]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][10]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][10]~regout\ : std_logic;
SIGNAL \RF_R|Mux5~0\ : std_logic;
SIGNAL \RF_R|registers[2][10]~regout\ : std_logic;
SIGNAL \RF_R|Mux21~0\ : std_logic;
SIGNAL \RF_R|Mux21~1_combout\ : std_logic;
SIGNAL \RF_R|Mux5~1\ : std_logic;
SIGNAL \RF_R|Mux5~3\ : std_logic;
SIGNAL \T1_R|r[10]~COMBOUT\ : std_logic;
SIGNAL \M6_out[10]~3_combout\ : std_logic;
SIGNAL \ALU_a[10]~10_combout\ : std_logic;
SIGNAL \RF_R|registers[3][11]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][11]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][11]~regout\ : std_logic;
SIGNAL \RF_R|Mux4~0\ : std_logic;
SIGNAL \RF_R|Mux4~1\ : std_logic;
SIGNAL \RF_R|Mux4~2\ : std_logic;
SIGNAL \RF_R|registers[5][11]~regout\ : std_logic;
SIGNAL \RF_R|registers[7][11]~regout\ : std_logic;
SIGNAL \RF_R|Mux4~3\ : std_logic;
SIGNAL \ALU_a[11]~11_combout\ : std_logic;
SIGNAL \ALU_en|Add0~52\ : std_logic;
SIGNAL \ALU_en|Add0~52COUT1_94\ : std_logic;
SIGNAL \ALU_en|Add0~55\ : std_logic;
SIGNAL \M3_out[11]~22\ : std_logic;
SIGNAL \M3_out[11]~23\ : std_logic;
SIGNAL \RF_R|registers[4][11]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][11]~regout\ : std_logic;
SIGNAL \RF_R|Mux20~2\ : std_logic;
SIGNAL \RF_R|Mux20~3\ : std_logic;
SIGNAL \RF_R|registers[2][11]~regout\ : std_logic;
SIGNAL \RF_R|Mux20~0\ : std_logic;
SIGNAL \RF_R|Mux20~1_combout\ : std_logic;
SIGNAL \T1_R|r[11]~COMBOUT\ : std_logic;
SIGNAL \M6_out[11]~5_combout\ : std_logic;
SIGNAL \ALU_b[11]~11_combout\ : std_logic;
SIGNAL \M3_out[12]~25\ : std_logic;
SIGNAL \RF_R|registers[1][12]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][12]~regout\ : std_logic;
SIGNAL \RF_R|Mux3~0\ : std_logic;
SIGNAL \RF_R|registers[3][12]~regout\ : std_logic;
SIGNAL \RF_R|Mux19~2\ : std_logic;
SIGNAL \RF_R|Mux19~3_combout\ : std_logic;
SIGNAL \RF_R|registers[6][12]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][12]~regout\ : std_logic;
SIGNAL \RF_R|Mux19~0\ : std_logic;
SIGNAL \RF_R|registers[5][12]~regout\ : std_logic;
SIGNAL \RF_R|Mux3~2\ : std_logic;
SIGNAL \RF_R|registers[7][12]~regout\ : std_logic;
SIGNAL \RF_R|Mux19~1\ : std_logic;
SIGNAL \RF_R|Mux19~4_combout\ : std_logic;
SIGNAL \ALU_b[12]~12_combout\ : std_logic;
SIGNAL \ALU_en|Add0~57\ : std_logic;
SIGNAL \ALU_en|Add0~57COUT1_95\ : std_logic;
SIGNAL \ALU_en|Add0~60\ : std_logic;
SIGNAL \RF_R|Mux3~3\ : std_logic;
SIGNAL \T1_R|r[12]~COMBOUT\ : std_logic;
SIGNAL \M3_out[12]~24\ : std_logic;
SIGNAL \RF_R|registers[2][12]~regout\ : std_logic;
SIGNAL \RF_R|Mux3~1\ : std_logic;
SIGNAL \ALU_a[12]~12_combout\ : std_logic;
SIGNAL \RF_R|Mux18~0\ : std_logic;
SIGNAL \RF_R|Mux18~1\ : std_logic;
SIGNAL \RF_R|registers[2][13]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][13]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][13]~regout\ : std_logic;
SIGNAL \RF_R|Mux2~0\ : std_logic;
SIGNAL \RF_R|registers[3][13]~regout\ : std_logic;
SIGNAL \RF_R|Mux18~2\ : std_logic;
SIGNAL \RF_R|Mux18~3_combout\ : std_logic;
SIGNAL \RF_R|Mux18~4_combout\ : std_logic;
SIGNAL \RF_R|Mux2~1\ : std_logic;
SIGNAL \T1_R|r[13]~COMBOUT\ : std_logic;
SIGNAL \ALU_b[13]~13_combout\ : std_logic;
SIGNAL \ALU_en|Add0~62\ : std_logic;
SIGNAL \ALU_en|Add0~65\ : std_logic;
SIGNAL \M3_out[13]~26\ : std_logic;
SIGNAL \M3_out[13]~27\ : std_logic;
SIGNAL \RF_R|registers[4][13]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][13]~regout\ : std_logic;
SIGNAL \RF_R|Mux2~2\ : std_logic;
SIGNAL \RF_R|registers[7][13]~regout\ : std_logic;
SIGNAL \RF_R|registers[5][13]~regout\ : std_logic;
SIGNAL \RF_R|Mux2~3\ : std_logic;
SIGNAL \ALU_a[13]~13_combout\ : std_logic;
SIGNAL \RF_R|registers[3][14]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][14]~regout\ : std_logic;
SIGNAL \RF_R|registers[0][14]~regout\ : std_logic;
SIGNAL \RF_R|Mux1~0\ : std_logic;
SIGNAL \RF_R|Mux1~1\ : std_logic;
SIGNAL \RF_R|Mux1~2\ : std_logic;
SIGNAL \RF_R|registers[5][14]~regout\ : std_logic;
SIGNAL \RF_R|registers[7][14]~regout\ : std_logic;
SIGNAL \RF_R|Mux1~3\ : std_logic;
SIGNAL \ALU_a[14]~14_combout\ : std_logic;
SIGNAL \ALU_en|Add0~67\ : std_logic;
SIGNAL \ALU_en|Add0~67COUT1_96\ : std_logic;
SIGNAL \ALU_en|Add0~70\ : std_logic;
SIGNAL \M3_out[14]~28\ : std_logic;
SIGNAL \M3_out[14]~29\ : std_logic;
SIGNAL \RF_R|registers[4][14]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][14]~regout\ : std_logic;
SIGNAL \RF_R|Mux17~2\ : std_logic;
SIGNAL \RF_R|Mux17~3\ : std_logic;
SIGNAL \RF_R|registers[2][14]~regout\ : std_logic;
SIGNAL \RF_R|Mux17~0\ : std_logic;
SIGNAL \RF_R|Mux17~1_combout\ : std_logic;
SIGNAL \T1_R|r[14]~COMBOUT\ : std_logic;
SIGNAL \M6_out[14]~7_combout\ : std_logic;
SIGNAL \ALU_b[14]~14_combout\ : std_logic;
SIGNAL \ALU_b[15]~15_combout\ : std_logic;
SIGNAL \ALU_en|Add0~72\ : std_logic;
SIGNAL \ALU_en|Add0~72COUT1_97\ : std_logic;
SIGNAL \ALU_en|Add0~75\ : std_logic;
SIGNAL \M3_out[15]~30\ : std_logic;
SIGNAL \M3_out[15]~31\ : std_logic;
SIGNAL \RF_R|Mux16~2\ : std_logic;
SIGNAL \RF_R|registers[7][15]~regout\ : std_logic;
SIGNAL \RF_R|Mux0~2\ : std_logic;
SIGNAL \RF_R|registers[5][15]~regout\ : std_logic;
SIGNAL \RF_R|registers[4][15]~regout\ : std_logic;
SIGNAL \RF_R|registers[6][15]~regout\ : std_logic;
SIGNAL \RF_R|Mux16~3\ : std_logic;
SIGNAL \RF_R|registers[0][15]~regout\ : std_logic;
SIGNAL \RF_R|registers[1][15]~regout\ : std_logic;
SIGNAL \RF_R|Mux16~0\ : std_logic;
SIGNAL \RF_R|Mux0~0\ : std_logic;
SIGNAL \RF_R|registers[2][15]~regout\ : std_logic;
SIGNAL \RF_R|Mux16~1_combout\ : std_logic;
SIGNAL \RF_R|Mux0~3\ : std_logic;
SIGNAL \T1_R|r[15]~COMBOUT\ : std_logic;
SIGNAL \M6_out[15]~9_combout\ : std_logic;
SIGNAL \RF_R|registers[3][15]~regout\ : std_logic;
SIGNAL \RF_R|Mux0~1\ : std_logic;
SIGNAL \ALU_a[15]~15_combout\ : std_logic;
SIGNAL \ALU_en|Add0~77\ : std_logic;
SIGNAL \ALU_en|Add0~77COUT1_98\ : std_logic;
SIGNAL \C_R|r~regout\ : std_logic;
SIGNAL \ALU_en|zero~0_combout\ : std_logic;
SIGNAL \ALU_en|zero~2_combout\ : std_logic;
SIGNAL \ALU_en|zero~1_combout\ : std_logic;
SIGNAL \ALU_en|zero~3_combout\ : std_logic;
SIGNAL \Z_R|r~regout\ : std_logic;
SIGNAL \PC_R|r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \T1_R|r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IR_R|r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \T2_R|r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \T3_R|r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \FSM_R|ALT_INV_fsm_state_symbol.Si~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
PC <= ww_PC;
IR <= ww_IR;
done <= ww_done;
C <= ww_C;
Z <= ww_Z;
reg0 <= ww_reg0;
reg1 <= ww_reg1;
reg2 <= ww_reg2;
reg3 <= ww_reg3;
reg4 <= ww_reg4;
reg5 <= ww_reg5;
reg6 <= ww_reg6;
reg7 <= ww_reg7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FSM_R|ALT_INV_fsm_state_symbol.Si~regout\ <= NOT \FSM_R|fsm_state_symbol.Si~regout\;

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X10_Y6_N9
\FSM_R|fsm_state_symbol.S8A\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S8A~regout\ = DFFEAS((!\rst~combout\ & (((!\PE~0_combout\ & \FSM_R|fsm_state_symbol.S8B~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datac => \PE~0_combout\,
	datad => \FSM_R|fsm_state_symbol.S8B~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S8A~regout\);

-- Location: LC_X10_Y8_N6
\FSM_R|fsm_state_symbol.S8B\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S8B~regout\ = DFFEAS((!\rst~combout\ & (((\FSM_R|fsm_state_symbol.S8A~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datad => \FSM_R|fsm_state_symbol.S8A~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S8B~regout\);

-- Location: LC_X10_Y9_N8
\FSM_R|fsm_state_symbol.S7A\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S7A~regout\ = DFFEAS((!\PE~0_combout\ & (!\rst~combout\ & (\FSM_R|fsm_state_symbol.S7B~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PE~0_combout\,
	datab => \rst~combout\,
	datac => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S7A~regout\);

-- Location: LC_X10_Y8_N8
\FSM_R|fsm_state_symbol.S7B\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S7B~regout\ = DFFEAS((!\rst~combout\ & (((\FSM_R|fsm_state_symbol.S7A~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datad => \FSM_R|fsm_state_symbol.S7A~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S7B~regout\);

-- Location: LC_X10_Y8_N0
\FSM_R|WideOr14\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr14~combout\ = ((\FSM_R|fsm_state_symbol.Sf~regout\) # ((\FSM_R|fsm_state_symbol.S8B~regout\) # (\FSM_R|fsm_state_symbol.S7B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.Sf~regout\,
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr14~combout\);

-- Location: LC_X12_Y10_N8
\memory_R|RAM~296\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~296_combout\ = (\M11_out[1]~1_combout\ & (\M11_out[0]~0_combout\ & (\memory_R|RAM~281_combout\ & !\memory_R|RAM~70_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M11_out[1]~1_combout\,
	datab => \M11_out[0]~0_combout\,
	datac => \memory_R|RAM~281_combout\,
	datad => \memory_R|RAM~70_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~296_combout\);

-- Location: LC_X9_Y8_N7
\FSM_R|fsm_state_symbol.S3\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S3~regout\ = DFFEAS((!\FSM_R|fsm_state_symbol.Si~regout\ & (((!\rst~combout\ & !\memory_R|RAM~280_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.Si~regout\,
	datac => \rst~combout\,
	datad => \memory_R|RAM~280_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S3~regout\);

-- Location: LC_X10_Y9_N4
\FSM_R|WideOr9~0\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr9~0_combout\ = (!\FSM_R|fsm_state_symbol.S7A~regout\ & (((!\FSM_R|fsm_state_symbol.S8A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S7A~regout\,
	datad => \FSM_R|fsm_state_symbol.S8A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr9~0_combout\);

-- Location: LC_X10_Y8_N7
\ALU_b[2]~2\ : maxv_lcell
-- Equation(s):
-- \ALU_b[2]~2_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((\IR_R|r\(0))))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (!\FSM_R|WideOr14~combout\ & ((\T2_R|r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b1a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S2A~regout\,
	datab => \FSM_R|WideOr14~combout\,
	datac => \IR_R|r\(0),
	datad => \T2_R|r\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[2]~2_combout\);

-- Location: LC_X10_Y6_N2
\IR_R|r[1]\ : maxv_lcell
-- Equation(s):
-- \ALU_b[1]~1\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((E2_r[1])))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (\T2_R|r\(1) & ((!\FSM_R|WideOr14~combout\))))
-- \IR_R|r\(1) = DFFEAS(\ALU_b[1]~1\, GLOBAL(\clk~combout\), VCC, , !\FSM_R|fsm_state_symbol.Si~regout\, \memory_R|RAM~283_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S2A~regout\,
	datab => \T2_R|r\(1),
	datac => \memory_R|RAM~283_combout\,
	datad => \FSM_R|WideOr14~combout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|ALT_INV_fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[1]~1\,
	regout => \IR_R|r\(1));

-- Location: LC_X11_Y8_N2
\PC_R|r[0]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~0\ = \ALU_b[0]~0_combout\ $ ((\ALU_a[0]~0_combout\))
-- \PC_R|r\(0) = DFFEAS(\ALU_en|Add0~0\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~2\ = CARRY((\ALU_b[0]~0_combout\ & (\ALU_a[0]~0_combout\)))
-- \ALU_en|Add0~2COUT1_86\ = CARRY((\ALU_b[0]~0_combout\ & (\ALU_a[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_b[0]~0_combout\,
	datab => \ALU_a[0]~0_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~0\,
	regout => \PC_R|r\(0),
	cout0 => \ALU_en|Add0~2\,
	cout1 => \ALU_en|Add0~2COUT1_86\);

-- Location: LC_X13_Y9_N2
\T3_R|r[0]\ : maxv_lcell
-- Equation(s):
-- \M3_out[0]~0\ = (\FSM_R|fsm_state_symbol.S7B~regout\ & (((\T2_R|r\(0))))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (((E5_r[0]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~0\,
	datad => \T2_R|r\(0),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[0]~0\,
	regout => \T3_R|r\(0));

-- Location: LC_X9_Y8_N1
\FSM_R|WideOr0\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr0~combout\ = (((\FSM_R|fsm_state_symbol.S3~regout\) # (!\FSM_R|fsm_state_symbol.Si~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_R|fsm_state_symbol.S3~regout\,
	datad => \FSM_R|fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr0~combout\);

-- Location: LC_X9_Y8_N2
\FSM_R|WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr1~0_combout\ = (((!\FSM_R|fsm_state_symbol.S3~regout\ & !\FSM_R|fsm_state_symbol.S7B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_R|fsm_state_symbol.S3~regout\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr1~0_combout\);

-- Location: LC_X9_Y6_N7
\M2_out[2]~4\ : maxv_lcell
-- Equation(s):
-- \M2_out[2]~4_combout\ = (!\FSM_R|WideOr0~combout\ & ((\FSM_R|WideOr1~0_combout\ & (\IR_R|r\(8))) # (!\FSM_R|WideOr1~0_combout\ & ((\PE_R|op_addr[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datab => \FSM_R|WideOr0~combout\,
	datac => \FSM_R|WideOr1~0_combout\,
	datad => \PE_R|op_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M2_out[2]~4_combout\);

-- Location: LC_X9_Y8_N8
\FSM_R|fsm_state_symbol.S2B\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S2B~regout\ = DFFEAS((!\rst~combout\ & (((\FSM_R|fsm_state_symbol.S2A~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datac => \FSM_R|fsm_state_symbol.S2A~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S2B~regout\);

-- Location: LC_X9_Y8_N6
\FSM_R|WideOr19\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr19~combout\ = ((\FSM_R|fsm_state_symbol.S7B~regout\) # ((\FSM_R|fsm_state_symbol.S3~regout\) # (\FSM_R|fsm_state_symbol.S2B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \FSM_R|fsm_state_symbol.S3~regout\,
	datad => \FSM_R|fsm_state_symbol.S2B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr19~combout\);

-- Location: LC_X10_Y6_N8
\IR_R|r[0]\ : maxv_lcell
-- Equation(s):
-- \PE_R|op_addr[1]~0\ = (((!E2_r[0] & !\IR_R|r\(1))))
-- \IR_R|r\(0) = DFFEAS(\PE_R|op_addr[1]~0\, GLOBAL(\clk~combout\), VCC, , !\FSM_R|fsm_state_symbol.Si~regout\, \memory_R|RAM~280_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \memory_R|RAM~280_combout\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|ALT_INV_fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PE_R|op_addr[1]~0\,
	regout => \IR_R|r\(0));

-- Location: LC_X10_Y6_N1
\PE_R|op_addr[1]~2\ : maxv_lcell
-- Equation(s):
-- \PE_R|op_addr[1]~2_combout\ = (\PE_R|op_addr[1]~0\ & ((\IR_R|r\(3)) # ((\IR_R|r\(6) & !\IR_R|r\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(6),
	datab => \IR_R|r\(3),
	datac => \IR_R|r\(4),
	datad => \PE_R|op_addr[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PE_R|op_addr[1]~2_combout\);

-- Location: LC_X9_Y6_N8
\M2_out[1]~2\ : maxv_lcell
-- Equation(s):
-- \M2_out[1]~2_combout\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (((\IR_R|r\(4))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & ((\FSM_R|fsm_state_symbol.Si~regout\ & (\IR_R|r\(1))) # (!\FSM_R|fsm_state_symbol.Si~regout\ & ((\IR_R|r\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \IR_R|r\(1),
	datac => \IR_R|r\(4),
	datad => \FSM_R|fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M2_out[1]~2_combout\);

-- Location: LC_X9_Y6_N6
\M2_out[1]~3\ : maxv_lcell
-- Equation(s):
-- \M2_out[1]~3_combout\ = (\FSM_R|WideOr1~0_combout\ & (((\M2_out[1]~2_combout\)))) # (!\FSM_R|WideOr1~0_combout\ & (\PE_R|op_addr[1]~2_combout\ & (!\FSM_R|WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PE_R|op_addr[1]~2_combout\,
	datab => \FSM_R|WideOr0~combout\,
	datac => \FSM_R|WideOr1~0_combout\,
	datad => \M2_out[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M2_out[1]~3_combout\);

-- Location: LC_X8_Y6_N0
\PE_R|op_addr[0]~1\ : maxv_lcell
-- Equation(s):
-- \PE_R|op_addr[0]~1_combout\ = ((!\IR_R|r\(0) & ((\IR_R|r\(3)) # (\IR_R|r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_R|r\(3),
	datac => \IR_R|r\(0),
	datad => \IR_R|r\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PE_R|op_addr[0]~1_combout\);

-- Location: LC_X8_Y6_N1
\M2_out[0]~0\ : maxv_lcell
-- Equation(s):
-- \M2_out[0]~0_combout\ = (\FSM_R|WideOr1~0_combout\ & ((\FSM_R|WideOr0~combout\ & ((\IR_R|r\(3)))) # (!\FSM_R|WideOr0~combout\ & (\IR_R|r\(6))))) # (!\FSM_R|WideOr1~0_combout\ & (((\FSM_R|WideOr0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(6),
	datab => \FSM_R|WideOr1~0_combout\,
	datac => \FSM_R|WideOr0~combout\,
	datad => \IR_R|r\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M2_out[0]~0_combout\);

-- Location: LC_X8_Y6_N2
\M2_out[0]~1\ : maxv_lcell
-- Equation(s):
-- \M2_out[0]~1_combout\ = (\FSM_R|WideOr1~0_combout\ & (((\M2_out[0]~0_combout\)))) # (!\FSM_R|WideOr1~0_combout\ & ((\M2_out[0]~0_combout\ & (\IR_R|r\(1))) # (!\M2_out[0]~0_combout\ & ((\PE_R|op_addr[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \FSM_R|WideOr1~0_combout\,
	datac => \PE_R|op_addr[0]~1_combout\,
	datad => \M2_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M2_out[0]~1_combout\);

-- Location: LC_X8_Y6_N9
\RF_R|Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~2_combout\ = (!\M2_out[2]~4_combout\ & (\FSM_R|WideOr19~combout\ & (\M2_out[1]~3_combout\ & !\M2_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M2_out[2]~4_combout\,
	datab => \FSM_R|WideOr19~combout\,
	datac => \M2_out[1]~3_combout\,
	datad => \M2_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~2_combout\);

-- Location: LC_X13_Y9_N3
\RF_R|registers[2][0]\ : maxv_lcell
-- Equation(s):
-- \M3_out[0]~1\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\FSM_R|fsm_state_symbol.S7B~regout\ & (\PC_R|r\(0)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[0]~0\))))
-- \RF_R|registers[2][0]~regout\ = DFFEAS(\M3_out[0]~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \PC_R|r\(0),
	datad => \M3_out[0]~0\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[0]~1\,
	regout => \RF_R|registers[2][0]~regout\);

-- Location: LC_X8_Y6_N5
\RF_R|Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~1_combout\ = (!\M2_out[2]~4_combout\ & (\FSM_R|WideOr19~combout\ & (!\M2_out[1]~3_combout\ & \M2_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M2_out[2]~4_combout\,
	datab => \FSM_R|WideOr19~combout\,
	datac => \M2_out[1]~3_combout\,
	datad => \M2_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~1_combout\);

-- Location: LC_X12_Y6_N6
\RF_R|registers[1][0]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux15~0\ = (\M1_out[0]~1\ & ((\M1_out[1]~0_combout\) # ((H1_registers[1][0])))) # (!\M1_out[0]~1\ & (!\M1_out[1]~0_combout\ & ((\RF_R|registers[0][0]~regout\))))
-- \RF_R|registers[1][0]~regout\ = DFFEAS(\RF_R|Mux15~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[0]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[0]~1\,
	datad => \RF_R|registers[0][0]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux15~0\,
	regout => \RF_R|registers[1][0]~regout\);

-- Location: LC_X9_Y5_N7
\RF_R|Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~0_combout\ = (\FSM_R|WideOr19~combout\ & (!\M2_out[1]~3_combout\ & (!\M2_out[0]~1_combout\ & !\M2_out[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|WideOr19~combout\,
	datab => \M2_out[1]~3_combout\,
	datac => \M2_out[0]~1_combout\,
	datad => \M2_out[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~0_combout\);

-- Location: LC_X9_Y5_N1
\RF_R|registers[0][0]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux31~2\ = (\IR_R|r\(6) & ((\RF_R|registers[1][0]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][0] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][0]~regout\ = DFFEAS(\RF_R|Mux31~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[0]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][0]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[0]~1\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux31~2\,
	regout => \RF_R|registers[0][0]~regout\);

-- Location: LC_X9_Y6_N3
\RF_R|Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~3_combout\ = (\M2_out[1]~3_combout\ & (\FSM_R|WideOr19~combout\ & (!\M2_out[2]~4_combout\ & \M2_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M2_out[1]~3_combout\,
	datab => \FSM_R|WideOr19~combout\,
	datac => \M2_out[2]~4_combout\,
	datad => \M2_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~3_combout\);

-- Location: LC_X12_Y6_N7
\RF_R|registers[3][0]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux15~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux15~0\ & ((H1_registers[3][0]))) # (!\RF_R|Mux15~0\ & (\RF_R|registers[2][0]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux15~0\))))
-- \RF_R|registers[3][0]~regout\ = DFFEAS(\RF_R|Mux15~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[0]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[2][0]~regout\,
	datac => \M3_out[0]~1\,
	datad => \RF_R|Mux15~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux15~1\,
	regout => \RF_R|registers[3][0]~regout\);

-- Location: LC_X9_Y5_N9
\RF_R|Mux31~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux31~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux31~2\ & ((\RF_R|registers[3][0]~regout\))) # (!\RF_R|Mux31~2\ & (\RF_R|registers[2][0]~regout\)))) # (!\IR_R|r\(1) & (((\RF_R|Mux31~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|registers[2][0]~regout\,
	datab => \RF_R|registers[3][0]~regout\,
	datac => \IR_R|r\(1),
	datad => \RF_R|Mux31~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux31~3_combout\);

-- Location: LC_X8_Y6_N8
\RF_R|Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~6_combout\ = (\M2_out[2]~4_combout\ & (\FSM_R|WideOr19~combout\ & (\M2_out[1]~3_combout\ & !\M2_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M2_out[2]~4_combout\,
	datab => \FSM_R|WideOr19~combout\,
	datac => \M2_out[1]~3_combout\,
	datad => \M2_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~6_combout\);

-- Location: LC_X8_Y6_N7
\RF_R|registers[6][0]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux31~0\ = (\IR_R|r\(6) & (\IR_R|r\(1))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & (H1_registers[6][0])) # (!\IR_R|r\(1) & ((\RF_R|registers[4][0]~regout\)))))
-- \RF_R|registers[6][0]~regout\ = DFFEAS(\RF_R|Mux31~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[0]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \IR_R|r\(1),
	datac => \M3_out[0]~1\,
	datad => \RF_R|registers[4][0]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux31~0\,
	regout => \RF_R|registers[6][0]~regout\);

-- Location: LC_X9_Y6_N1
\RF_R|Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~4_combout\ = (!\M2_out[1]~3_combout\ & (\FSM_R|WideOr19~combout\ & (\M2_out[2]~4_combout\ & !\M2_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M2_out[1]~3_combout\,
	datab => \FSM_R|WideOr19~combout\,
	datac => \M2_out[2]~4_combout\,
	datad => \M2_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~4_combout\);

-- Location: LC_X10_Y5_N5
\RF_R|registers[4][0]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux15~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & (\RF_R|registers[6][0]~regout\)) # (!\M1_out[1]~0_combout\ & ((H1_registers[4][0])))))
-- \RF_R|registers[4][0]~regout\ = DFFEAS(\RF_R|Mux15~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[0]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[6][0]~regout\,
	datac => \M3_out[0]~1\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux15~2\,
	regout => \RF_R|registers[4][0]~regout\);

-- Location: LC_X8_Y6_N4
\RF_R|Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~5_combout\ = (\M2_out[2]~4_combout\ & (\FSM_R|WideOr19~combout\ & (!\M2_out[1]~3_combout\ & \M2_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M2_out[2]~4_combout\,
	datab => \FSM_R|WideOr19~combout\,
	datac => \M2_out[1]~3_combout\,
	datad => \M2_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~5_combout\);

-- Location: LC_X8_Y5_N9
\RF_R|registers[5][0]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux31~1\ = (\IR_R|r\(6) & ((\RF_R|Mux31~0\ & (\RF_R|registers[7][0]~regout\)) # (!\RF_R|Mux31~0\ & ((H1_registers[5][0]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux31~0\))))
-- \RF_R|registers[5][0]~regout\ = DFFEAS(\RF_R|Mux31~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[0]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[7][0]~regout\,
	datac => \M3_out[0]~1\,
	datad => \RF_R|Mux31~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux31~1\,
	regout => \RF_R|registers[5][0]~regout\);

-- Location: LC_X8_Y6_N3
\RF_R|Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \RF_R|Decoder0~7_combout\ = (\M2_out[2]~4_combout\ & (\FSM_R|WideOr19~combout\ & (\M2_out[1]~3_combout\ & \M2_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M2_out[2]~4_combout\,
	datab => \FSM_R|WideOr19~combout\,
	datac => \M2_out[1]~3_combout\,
	datad => \M2_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Decoder0~7_combout\);

-- Location: LC_X10_Y5_N6
\RF_R|registers[7][0]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux15~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux15~2\ & ((H1_registers[7][0]))) # (!\RF_R|Mux15~2\ & (\RF_R|registers[5][0]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux15~2\))))
-- \RF_R|registers[7][0]~regout\ = DFFEAS(\RF_R|Mux15~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[0]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][0]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[0]~1\,
	datad => \RF_R|Mux15~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux15~3\,
	regout => \RF_R|registers[7][0]~regout\);

-- Location: LC_X8_Y5_N5
\RF_R|Mux31~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux31~4_combout\ = (\IR_R|r\(8) & (((\RF_R|Mux31~1\)))) # (!\IR_R|r\(8) & (((\RF_R|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datac => \RF_R|Mux31~3_combout\,
	datad => \RF_R|Mux31~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux31~4_combout\);

-- Location: LC_X11_Y7_N6
\FSM_R|WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr8~0_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\) # ((\FSM_R|fsm_state_symbol.S7B~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr8~0_combout\);

-- Location: LC_X11_Y6_N3
\FSM_R|WideOr8\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr8~combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\) # ((\FSM_R|fsm_state_symbol.S7B~regout\) # (\FSM_R|fsm_state_symbol.S0A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \FSM_R|fsm_state_symbol.S7B~regout\,
	datad => \FSM_R|fsm_state_symbol.S0A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr8~combout\);

-- Location: LC_X11_Y6_N1
\T1_R|r[0]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[0]~COMBOUT\ = (\M1_out[2]~2_combout\ & (\RF_R|Mux15~3\)) # (!\M1_out[2]~2_combout\ & (((\RF_R|Mux15~1\))))
-- \T1_R|r\(0) = DFFEAS(\T1_R|r[0]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~0\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux15~3\,
	datac => \ALU_en|Add0~0\,
	datad => \RF_R|Mux15~1\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[0]~COMBOUT\,
	regout => \T1_R|r\(0));

-- Location: LC_X10_Y7_N1
\FSM_R|WideOr9\ : maxv_lcell
-- Equation(s):
-- \FSM_R|WideOr9~combout\ = ((\FSM_R|fsm_state_symbol.S8A~regout\) # ((\FSM_R|fsm_state_symbol.S0A~regout\) # (\FSM_R|fsm_state_symbol.S7A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8A~regout\,
	datac => \FSM_R|fsm_state_symbol.S0A~regout\,
	datad => \FSM_R|fsm_state_symbol.S7A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|WideOr9~combout\);

-- Location: LC_X10_Y7_N2
\T2_R|r[0]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(0) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux31~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[0]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~280_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux31~4_combout\,
	datab => \FSM_R|WideOr9~0_combout\,
	datac => \memory_R|RAM~280_combout\,
	datad => \T1_R|r[0]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(0));

-- Location: LC_X11_Y6_N5
\ALU_a[0]~0\ : maxv_lcell
-- Equation(s):
-- \ALU_a[0]~0_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T2_R|r\(0))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T2_R|r\(0),
	datad => \T1_R|r\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[0]~0_combout\);

-- Location: LC_X11_Y8_N3
\PC_R|r[1]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~5\ = \ALU_a[1]~1_combout\ $ (\ALU_b[1]~1\ $ ((\ALU_en|Add0~2\)))
-- \PC_R|r\(1) = DFFEAS(\ALU_en|Add0~5\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~7\ = CARRY((\ALU_a[1]~1_combout\ & (!\ALU_b[1]~1\ & !\ALU_en|Add0~2\)) # (!\ALU_a[1]~1_combout\ & ((!\ALU_en|Add0~2\) # (!\ALU_b[1]~1\))))
-- \ALU_en|Add0~7COUT1_87\ = CARRY((\ALU_a[1]~1_combout\ & (!\ALU_b[1]~1\ & !\ALU_en|Add0~2COUT1_86\)) # (!\ALU_a[1]~1_combout\ & ((!\ALU_en|Add0~2COUT1_86\) # (!\ALU_b[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[1]~1_combout\,
	datab => \ALU_b[1]~1\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin0 => \ALU_en|Add0~2\,
	cin1 => \ALU_en|Add0~2COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~5\,
	regout => \PC_R|r\(1),
	cout0 => \ALU_en|Add0~7\,
	cout1 => \ALU_en|Add0~7COUT1_87\);

-- Location: LC_X11_Y8_N4
\PC_R|r[2]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~10\ = \ALU_a[2]~2_combout\ $ (\ALU_b[2]~2_combout\ $ ((!\ALU_en|Add0~7\)))
-- \PC_R|r\(2) = DFFEAS(\ALU_en|Add0~10\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~12\ = CARRY((\ALU_a[2]~2_combout\ & ((\ALU_b[2]~2_combout\) # (!\ALU_en|Add0~7COUT1_87\))) # (!\ALU_a[2]~2_combout\ & (\ALU_b[2]~2_combout\ & !\ALU_en|Add0~7COUT1_87\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[2]~2_combout\,
	datab => \ALU_b[2]~2_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin0 => \ALU_en|Add0~7\,
	cin1 => \ALU_en|Add0~7COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~10\,
	regout => \PC_R|r\(2),
	cout => \ALU_en|Add0~12\);

-- Location: LC_X8_Y8_N2
\T3_R|r[2]\ : maxv_lcell
-- Equation(s):
-- \M3_out[2]~4\ = ((\FSM_R|fsm_state_symbol.S7B~regout\ & ((\T2_R|r\(2)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (E5_r[2])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~10\,
	datad => \T2_R|r\(2),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[2]~4\,
	regout => \T3_R|r\(2));

-- Location: LC_X8_Y8_N8
\RF_R|registers[2][2]\ : maxv_lcell
-- Equation(s):
-- \M3_out[2]~5\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\FSM_R|fsm_state_symbol.S7B~regout\ & (\PC_R|r\(2)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[2]~4\))))
-- \RF_R|registers[2][2]~regout\ = DFFEAS(\M3_out[2]~5\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \PC_R|r\(2),
	datad => \M3_out[2]~4\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[2]~5\,
	regout => \RF_R|registers[2][2]~regout\);

-- Location: LC_X12_Y6_N9
\RF_R|registers[1][2]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux13~0\ = (\M1_out[1]~0_combout\ & (((\M1_out[0]~1\)))) # (!\M1_out[1]~0_combout\ & ((\M1_out[0]~1\ & ((H1_registers[1][2]))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][2]~regout\))))
-- \RF_R|registers[1][2]~regout\ = DFFEAS(\RF_R|Mux13~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[2]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[0][2]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[2]~5\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux13~0\,
	regout => \RF_R|registers[1][2]~regout\);

-- Location: LC_X11_Y5_N7
\RF_R|registers[0][2]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux29~2\ = (\IR_R|r\(6) & ((\IR_R|r\(1)) # ((\RF_R|registers[1][2]~regout\)))) # (!\IR_R|r\(6) & (!\IR_R|r\(1) & (H1_registers[0][2])))
-- \RF_R|registers[0][2]~regout\ = DFFEAS(\RF_R|Mux29~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[2]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \IR_R|r\(1),
	datac => \M3_out[2]~5\,
	datad => \RF_R|registers[1][2]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux29~2\,
	regout => \RF_R|registers[0][2]~regout\);

-- Location: LC_X12_Y6_N8
\RF_R|registers[3][2]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux13~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux13~0\ & ((H1_registers[3][2]))) # (!\RF_R|Mux13~0\ & (\RF_R|registers[2][2]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux13~0\))))
-- \RF_R|registers[3][2]~regout\ = DFFEAS(\RF_R|Mux13~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[2]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[2][2]~regout\,
	datac => \M3_out[2]~5\,
	datad => \RF_R|Mux13~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux13~1\,
	regout => \RF_R|registers[3][2]~regout\);

-- Location: LC_X11_Y10_N2
\T1_R|r[2]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[2]~COMBOUT\ = ((\M1_out[2]~2_combout\ & (\RF_R|Mux13~3\)) # (!\M1_out[2]~2_combout\ & ((\RF_R|Mux13~1\))))
-- \T1_R|r\(2) = DFFEAS(\T1_R|r[2]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~10\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux13~3\,
	datab => \RF_R|Mux13~1\,
	datac => \ALU_en|Add0~10\,
	datad => \M1_out[2]~2_combout\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[2]~COMBOUT\,
	regout => \T1_R|r\(2));

-- Location: LC_X11_Y5_N8
\RF_R|Mux29~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux29~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux29~2\ & ((\RF_R|registers[3][2]~regout\))) # (!\RF_R|Mux29~2\ & (\RF_R|registers[2][2]~regout\)))) # (!\IR_R|r\(1) & (((\RF_R|Mux29~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[2][2]~regout\,
	datac => \RF_R|Mux29~2\,
	datad => \RF_R|registers[3][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux29~3_combout\);

-- Location: LC_X7_Y6_N3
\RF_R|registers[6][2]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux29~0\ = (\IR_R|r\(6) & (\IR_R|r\(1))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & (H1_registers[6][2])) # (!\IR_R|r\(1) & ((\RF_R|registers[4][2]~regout\)))))
-- \RF_R|registers[6][2]~regout\ = DFFEAS(\RF_R|Mux29~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[2]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \IR_R|r\(1),
	datac => \M3_out[2]~5\,
	datad => \RF_R|registers[4][2]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux29~0\,
	regout => \RF_R|registers[6][2]~regout\);

-- Location: LC_X10_Y10_N8
\RF_R|registers[4][2]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux13~2\ = (\M1_out[1]~0_combout\ & ((\RF_R|registers[6][2]~regout\) # ((\M1_out[0]~1\)))) # (!\M1_out[1]~0_combout\ & (((H1_registers[4][2] & !\M1_out[0]~1\))))
-- \RF_R|registers[4][2]~regout\ = DFFEAS(\RF_R|Mux13~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[2]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][2]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[2]~5\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux13~2\,
	regout => \RF_R|registers[4][2]~regout\);

-- Location: LC_X11_Y5_N3
\RF_R|registers[5][2]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux29~1\ = (\IR_R|r\(6) & ((\RF_R|Mux29~0\ & (\RF_R|registers[7][2]~regout\)) # (!\RF_R|Mux29~0\ & ((H1_registers[5][2]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux29~0\))))
-- \RF_R|registers[5][2]~regout\ = DFFEAS(\RF_R|Mux29~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[2]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][2]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[2]~5\,
	datad => \RF_R|Mux29~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux29~1\,
	regout => \RF_R|registers[5][2]~regout\);

-- Location: LC_X11_Y5_N5
\RF_R|Mux29~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux29~4_combout\ = ((\IR_R|r\(8) & ((\RF_R|Mux29~1\))) # (!\IR_R|r\(8) & (\RF_R|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|Mux29~3_combout\,
	datac => \IR_R|r\(8),
	datad => \RF_R|Mux29~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux29~4_combout\);

-- Location: LC_X12_Y10_N9
\T2_R|r[2]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(2) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (((\RF_R|Mux29~4_combout\)))) # (!\FSM_R|WideOr9~0_combout\ & (\T1_R|r[2]~COMBOUT\)), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~280_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|WideOr9~0_combout\,
	datab => \T1_R|r[2]~COMBOUT\,
	datac => \memory_R|RAM~280_combout\,
	datad => \RF_R|Mux29~4_combout\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(2));

-- Location: LC_X11_Y10_N5
\ALU_a[2]~2\ : maxv_lcell
-- Equation(s):
-- \ALU_a[2]~2_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T2_R|r\(2))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \T2_R|r\(2),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \T1_R|r\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[2]~2_combout\);

-- Location: LC_X11_Y10_N9
\M11_out[2]~2\ : maxv_lcell
-- Equation(s):
-- \M11_out[2]~2_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(2)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\PC_R|r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC_R|r\(2),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \T1_R|r\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M11_out[2]~2_combout\);

-- Location: LC_X13_Y10_N3
\memory_R|RAM~288\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~288_combout\ = (!\M11_out[0]~0_combout\ & (!\M11_out[3]~3_combout\ & (!\M11_out[2]~2_combout\ & !\M11_out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M11_out[0]~0_combout\,
	datab => \M11_out[3]~3_combout\,
	datac => \M11_out[2]~2_combout\,
	datad => \M11_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~288_combout\);

-- Location: LC_X13_Y10_N4
\memory_R|RAM~21\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~21_regout\ = DFFEAS((\memory_R|RAM~21_regout\) # (((!\FSM_R|fsm_state_symbol.S8B~regout\ & \memory_R|RAM~288_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memory_R|RAM~21_regout\,
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \memory_R|RAM~288_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory_R|RAM~21_regout\);

-- Location: LC_X13_Y10_N5
\memory_R|RAM~294\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~294_combout\ = (!\M11_out[0]~0_combout\ & (!\M11_out[3]~3_combout\ & (!\M11_out[2]~2_combout\ & \M11_out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M11_out[0]~0_combout\,
	datab => \M11_out[3]~3_combout\,
	datac => \M11_out[2]~2_combout\,
	datad => \M11_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~294_combout\);

-- Location: LC_X13_Y10_N6
\memory_R|RAM~57\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~57_regout\ = DFFEAS((\memory_R|RAM~57_regout\) # (((!\FSM_R|fsm_state_symbol.S8B~regout\ & \memory_R|RAM~294_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \memory_R|RAM~57_regout\,
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \memory_R|RAM~294_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory_R|RAM~57_regout\);

-- Location: LC_X12_Y10_N2
\memory_R|RAM~297\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~297_combout\ = (\M11_out[0]~0_combout\ & (((\M11_out[1]~1_combout\ & !\memory_R|RAM~70_regout\)))) # (!\M11_out[0]~0_combout\ & (((!\M11_out[1]~1_combout\)) # (!\memory_R|RAM~57_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "13d3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_R|RAM~57_regout\,
	datab => \M11_out[0]~0_combout\,
	datac => \M11_out[1]~1_combout\,
	datad => \memory_R|RAM~70_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~297_combout\);

-- Location: LC_X12_Y10_N5
\memory_R|RAM~298\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~298_combout\ = (\memory_R|RAM~281_combout\ & (\memory_R|RAM~297_combout\ & ((\M11_out[1]~1_combout\) # (!\memory_R|RAM~21_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_R|RAM~281_combout\,
	datab => \memory_R|RAM~21_regout\,
	datac => \M11_out[1]~1_combout\,
	datad => \memory_R|RAM~297_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~298_combout\);

-- Location: LC_X10_Y6_N6
\IR_R|r[4]\ : maxv_lcell
-- Equation(s):
-- \ALU_b[4]~4\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((E2_r[4])))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (\T2_R|r\(4) & ((!\FSM_R|WideOr14~combout\))))
-- \IR_R|r\(4) = DFFEAS(\ALU_b[4]~4\, GLOBAL(\clk~combout\), VCC, , !\FSM_R|fsm_state_symbol.Si~regout\, \memory_R|RAM~298_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \T2_R|r\(4),
	datab => \FSM_R|fsm_state_symbol.S2A~regout\,
	datac => \memory_R|RAM~298_combout\,
	datad => \FSM_R|WideOr14~combout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|ALT_INV_fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[4]~4\,
	regout => \IR_R|r\(4));

-- Location: LC_X11_Y8_N0
\ALU_b[3]~3\ : maxv_lcell
-- Equation(s):
-- \ALU_b[3]~3_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((\IR_R|r\(3))))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (!\FSM_R|WideOr14~combout\ & ((\T2_R|r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|WideOr14~combout\,
	datab => \IR_R|r\(3),
	datac => \FSM_R|fsm_state_symbol.S2A~regout\,
	datad => \T2_R|r\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[3]~3_combout\);

-- Location: LC_X11_Y8_N5
\PC_R|r[3]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~15\ = \ALU_a[3]~3_combout\ $ (\ALU_b[3]~3_combout\ $ ((\ALU_en|Add0~12\)))
-- \PC_R|r\(3) = DFFEAS(\ALU_en|Add0~15\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~17\ = CARRY((\ALU_a[3]~3_combout\ & (!\ALU_b[3]~3_combout\ & !\ALU_en|Add0~12\)) # (!\ALU_a[3]~3_combout\ & ((!\ALU_en|Add0~12\) # (!\ALU_b[3]~3_combout\))))
-- \ALU_en|Add0~17COUT1_88\ = CARRY((\ALU_a[3]~3_combout\ & (!\ALU_b[3]~3_combout\ & !\ALU_en|Add0~12\)) # (!\ALU_a[3]~3_combout\ & ((!\ALU_en|Add0~12\) # (!\ALU_b[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[3]~3_combout\,
	datab => \ALU_b[3]~3_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~15\,
	regout => \PC_R|r\(3),
	cout0 => \ALU_en|Add0~17\,
	cout1 => \ALU_en|Add0~17COUT1_88\);

-- Location: LC_X8_Y8_N3
\T3_R|r[3]\ : maxv_lcell
-- Equation(s):
-- \M3_out[3]~6\ = ((\FSM_R|fsm_state_symbol.S7B~regout\ & ((\T2_R|r\(3)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (E5_r[3])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~15\,
	datad => \T2_R|r\(3),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[3]~6\,
	regout => \T3_R|r\(3));

-- Location: LC_X8_Y8_N4
\RF_R|registers[2][3]\ : maxv_lcell
-- Equation(s):
-- \M3_out[3]~7\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\FSM_R|fsm_state_symbol.S7B~regout\ & (\PC_R|r\(3)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[3]~6\))))
-- \RF_R|registers[2][3]~regout\ = DFFEAS(\M3_out[3]~7\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \PC_R|r\(3),
	datad => \M3_out[3]~6\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[3]~7\,
	regout => \RF_R|registers[2][3]~regout\);

-- Location: LC_X8_Y10_N8
\RF_R|registers[6][3]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux28~0\ = (\IR_R|r\(6) & (((\IR_R|r\(1))))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & ((H1_registers[6][3]))) # (!\IR_R|r\(1) & (\RF_R|registers[4][3]~regout\))))
-- \RF_R|registers[6][3]~regout\ = DFFEAS(\RF_R|Mux28~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[4][3]~regout\,
	datac => \M3_out[3]~7\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux28~0\,
	regout => \RF_R|registers[6][3]~regout\);

-- Location: LC_X10_Y10_N2
\RF_R|registers[4][3]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux12~2\ = (\M1_out[1]~0_combout\ & ((\RF_R|registers[6][3]~regout\) # ((\M1_out[0]~1\)))) # (!\M1_out[1]~0_combout\ & (((H1_registers[4][3] & !\M1_out[0]~1\))))
-- \RF_R|registers[4][3]~regout\ = DFFEAS(\RF_R|Mux12~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][3]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[3]~7\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux12~2\,
	regout => \RF_R|registers[4][3]~regout\);

-- Location: LC_X8_Y10_N5
\RF_R|registers[5][3]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux28~1\ = (\IR_R|r\(6) & ((\RF_R|Mux28~0\ & (\RF_R|registers[7][3]~regout\)) # (!\RF_R|Mux28~0\ & ((H1_registers[5][3]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux28~0\))))
-- \RF_R|registers[5][3]~regout\ = DFFEAS(\RF_R|Mux28~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][3]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[3]~7\,
	datad => \RF_R|Mux28~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux28~1\,
	regout => \RF_R|registers[5][3]~regout\);

-- Location: LC_X10_Y10_N0
\RF_R|registers[7][3]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux12~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux12~2\ & ((H1_registers[7][3]))) # (!\RF_R|Mux12~2\ & (\RF_R|registers[5][3]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux12~2\))))
-- \RF_R|registers[7][3]~regout\ = DFFEAS(\RF_R|Mux12~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][3]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[3]~7\,
	datad => \RF_R|Mux12~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux12~3\,
	regout => \RF_R|registers[7][3]~regout\);

-- Location: LC_X12_Y6_N3
\RF_R|registers[1][3]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux12~0\ = (\M1_out[1]~0_combout\ & (((\M1_out[0]~1\)))) # (!\M1_out[1]~0_combout\ & ((\M1_out[0]~1\ & ((H1_registers[1][3]))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][3]~regout\))))
-- \RF_R|registers[1][3]~regout\ = DFFEAS(\RF_R|Mux12~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[0][3]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[3]~7\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux12~0\,
	regout => \RF_R|registers[1][3]~regout\);

-- Location: LC_X11_Y5_N2
\RF_R|registers[0][3]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux28~2\ = (\IR_R|r\(1) & (((\IR_R|r\(6))))) # (!\IR_R|r\(1) & ((\IR_R|r\(6) & (\RF_R|registers[1][3]~regout\)) # (!\IR_R|r\(6) & ((H1_registers[0][3])))))
-- \RF_R|registers[0][3]~regout\ = DFFEAS(\RF_R|Mux28~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][3]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[3]~7\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux28~2\,
	regout => \RF_R|registers[0][3]~regout\);

-- Location: LC_X12_Y6_N4
\RF_R|registers[3][3]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux12~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux12~0\ & ((H1_registers[3][3]))) # (!\RF_R|Mux12~0\ & (\RF_R|registers[2][3]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux12~0\))))
-- \RF_R|registers[3][3]~regout\ = DFFEAS(\RF_R|Mux12~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[3]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[2][3]~regout\,
	datac => \M3_out[3]~7\,
	datad => \RF_R|Mux12~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux12~1\,
	regout => \RF_R|registers[3][3]~regout\);

-- Location: LC_X11_Y6_N6
\RF_R|Mux28~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux28~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux28~2\ & (\RF_R|registers[3][3]~regout\)) # (!\RF_R|Mux28~2\ & ((\RF_R|registers[2][3]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux28~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|registers[3][3]~regout\,
	datab => \RF_R|registers[2][3]~regout\,
	datac => \IR_R|r\(1),
	datad => \RF_R|Mux28~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux28~3_combout\);

-- Location: LC_X10_Y9_N6
\RF_R|Mux28~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux28~4_combout\ = ((\IR_R|r\(8) & (\RF_R|Mux28~1\)) # (!\IR_R|r\(8) & ((\RF_R|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_R|r\(8),
	datac => \RF_R|Mux28~1\,
	datad => \RF_R|Mux28~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux28~4_combout\);

-- Location: LC_X11_Y6_N8
\T1_R|r[3]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[3]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux12~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux12~1\))
-- \T1_R|r\(3) = DFFEAS(\T1_R|r[3]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~15\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux12~1\,
	datac => \ALU_en|Add0~15\,
	datad => \RF_R|Mux12~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[3]~COMBOUT\,
	regout => \T1_R|r\(3));

-- Location: LC_X10_Y9_N5
\T2_R|r[3]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(3) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux28~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[3]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~296_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux28~4_combout\,
	datab => \FSM_R|WideOr9~0_combout\,
	datac => \memory_R|RAM~296_combout\,
	datad => \T1_R|r[3]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(3));

-- Location: LC_X10_Y9_N1
\ALU_a[3]~3\ : maxv_lcell
-- Equation(s):
-- \ALU_a[3]~3_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T2_R|r\(3))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T2_R|r\(3),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \T1_R|r\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[3]~3_combout\);

-- Location: LC_X11_Y8_N6
\PC_R|r[4]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~20\ = \ALU_a[4]~4_combout\ $ (\ALU_b[4]~4\ $ ((!(!\ALU_en|Add0~12\ & \ALU_en|Add0~17\) # (\ALU_en|Add0~12\ & \ALU_en|Add0~17COUT1_88\))))
-- \PC_R|r\(4) = DFFEAS(\ALU_en|Add0~20\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~22\ = CARRY((\ALU_a[4]~4_combout\ & ((\ALU_b[4]~4\) # (!\ALU_en|Add0~17\))) # (!\ALU_a[4]~4_combout\ & (\ALU_b[4]~4\ & !\ALU_en|Add0~17\)))
-- \ALU_en|Add0~22COUT1_89\ = CARRY((\ALU_a[4]~4_combout\ & ((\ALU_b[4]~4\) # (!\ALU_en|Add0~17COUT1_88\))) # (!\ALU_a[4]~4_combout\ & (\ALU_b[4]~4\ & !\ALU_en|Add0~17COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[4]~4_combout\,
	datab => \ALU_b[4]~4\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~12\,
	cin0 => \ALU_en|Add0~17\,
	cin1 => \ALU_en|Add0~17COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~20\,
	regout => \PC_R|r\(4),
	cout0 => \ALU_en|Add0~22\,
	cout1 => \ALU_en|Add0~22COUT1_89\);

-- Location: LC_X8_Y8_N6
\RF_R|registers[2][4]\ : maxv_lcell
-- Equation(s):
-- \M3_out[4]~9\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\FSM_R|fsm_state_symbol.S7B~regout\ & ((\PC_R|r\(4))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[4]~8\))))
-- \RF_R|registers[2][4]~regout\ = DFFEAS(\M3_out[4]~9\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \M3_out[4]~8\,
	datad => \PC_R|r\(4),
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[4]~9\,
	regout => \RF_R|registers[2][4]~regout\);

-- Location: LC_X10_Y5_N4
\RF_R|registers[4][4]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux11~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & (\RF_R|registers[6][4]~regout\)) # (!\M1_out[1]~0_combout\ & ((H1_registers[4][4])))))
-- \RF_R|registers[4][4]~regout\ = DFFEAS(\RF_R|Mux11~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[4]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[6][4]~regout\,
	datac => \M3_out[4]~9\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux11~2\,
	regout => \RF_R|registers[4][4]~regout\);

-- Location: LC_X7_Y8_N9
\RF_R|registers[6][4]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux27~0\ = (\IR_R|r\(1) & (((H1_registers[6][4]) # (\IR_R|r\(6))))) # (!\IR_R|r\(1) & (\RF_R|registers[4][4]~regout\ & ((!\IR_R|r\(6)))))
-- \RF_R|registers[6][4]~regout\ = DFFEAS(\RF_R|Mux27~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[4]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][4]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[4]~9\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux27~0\,
	regout => \RF_R|registers[6][4]~regout\);

-- Location: LC_X10_Y5_N7
\RF_R|registers[7][4]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux11~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux11~2\ & ((H1_registers[7][4]))) # (!\RF_R|Mux11~2\ & (\RF_R|registers[5][4]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux11~2\))))
-- \RF_R|registers[7][4]~regout\ = DFFEAS(\RF_R|Mux11~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[4]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[5][4]~regout\,
	datac => \M3_out[4]~9\,
	datad => \RF_R|Mux11~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux11~3\,
	regout => \RF_R|registers[7][4]~regout\);

-- Location: LC_X7_Y8_N0
\RF_R|registers[5][4]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux27~1\ = (\IR_R|r\(6) & ((\RF_R|Mux27~0\ & (\RF_R|registers[7][4]~regout\)) # (!\RF_R|Mux27~0\ & ((H1_registers[5][4]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux27~0\))))
-- \RF_R|registers[5][4]~regout\ = DFFEAS(\RF_R|Mux27~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[4]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][4]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[4]~9\,
	datad => \RF_R|Mux27~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux27~1\,
	regout => \RF_R|registers[5][4]~regout\);

-- Location: LC_X9_Y5_N5
\RF_R|registers[1][4]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux11~0\ = (\M1_out[0]~1\ & (((H1_registers[1][4]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][4]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][4]~regout\ = DFFEAS(\RF_R|Mux11~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[4]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[0][4]~regout\,
	datac => \M3_out[4]~9\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux11~0\,
	regout => \RF_R|registers[1][4]~regout\);

-- Location: LC_X9_Y5_N4
\RF_R|registers[0][4]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux27~2\ = (\IR_R|r\(6) & ((\RF_R|registers[1][4]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][4] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][4]~regout\ = DFFEAS(\RF_R|Mux27~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[4]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][4]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[4]~9\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux27~2\,
	regout => \RF_R|registers[0][4]~regout\);

-- Location: LC_X9_Y9_N8
\RF_R|registers[3][4]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux11~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux11~0\ & ((H1_registers[3][4]))) # (!\RF_R|Mux11~0\ & (\RF_R|registers[2][4]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux11~0\))))
-- \RF_R|registers[3][4]~regout\ = DFFEAS(\RF_R|Mux11~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[4]~9\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[2][4]~regout\,
	datac => \M3_out[4]~9\,
	datad => \RF_R|Mux11~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux11~1\,
	regout => \RF_R|registers[3][4]~regout\);

-- Location: LC_X11_Y9_N8
\T1_R|r[4]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[4]~COMBOUT\ = (\M1_out[2]~2_combout\ & (\RF_R|Mux11~3\)) # (!\M1_out[2]~2_combout\ & (((\RF_R|Mux11~1\))))
-- \T1_R|r\(4) = DFFEAS(\T1_R|r[4]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~20\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux11~3\,
	datac => \ALU_en|Add0~20\,
	datad => \RF_R|Mux11~1\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[4]~COMBOUT\,
	regout => \T1_R|r\(4));

-- Location: LC_X11_Y9_N3
\ALU_a[4]~4\ : maxv_lcell
-- Equation(s):
-- \ALU_a[4]~4_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(4)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T1_R|r\(4),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \T2_R|r\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[4]~4_combout\);

-- Location: LC_X8_Y8_N5
\T3_R|r[4]\ : maxv_lcell
-- Equation(s):
-- \M3_out[4]~8\ = ((\FSM_R|fsm_state_symbol.S7B~regout\ & (\T2_R|r\(4))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & ((E5_r[4]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \T2_R|r\(4),
	datac => \ALU_en|Add0~20\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[4]~8\,
	regout => \T3_R|r\(4));

-- Location: LC_X8_Y8_N7
\RF_R|Mux27~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux27~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux27~2\ & (\RF_R|registers[3][4]~regout\)) # (!\RF_R|Mux27~2\ & ((\RF_R|registers[2][4]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux27~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|registers[3][4]~regout\,
	datab => \IR_R|r\(1),
	datac => \RF_R|registers[2][4]~regout\,
	datad => \RF_R|Mux27~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux27~3_combout\);

-- Location: LC_X8_Y8_N0
\RF_R|Mux27~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux27~4_combout\ = (\IR_R|r\(8) & (((\RF_R|Mux27~1\)))) # (!\IR_R|r\(8) & (((\RF_R|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datac => \RF_R|Mux27~3_combout\,
	datad => \RF_R|Mux27~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux27~4_combout\);

-- Location: LC_X10_Y9_N0
\T2_R|r[4]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(4) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux27~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[4]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~298_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux27~4_combout\,
	datab => \FSM_R|WideOr9~0_combout\,
	datac => \memory_R|RAM~298_combout\,
	datad => \T1_R|r[4]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(4));

-- Location: LC_X10_Y6_N5
\IR_R|r[6]\ : maxv_lcell
-- Equation(s):
-- \PE_R|op_addr[1]~4\ = (((E2_r[6] & !\IR_R|r\(4))))
-- \IR_R|r\(6) = DFFEAS(\PE_R|op_addr[1]~4\, GLOBAL(\clk~combout\), VCC, , !\FSM_R|fsm_state_symbol.Si~regout\, \memory_R|RAM~285_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \memory_R|RAM~285_combout\,
	datad => \IR_R|r\(4),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|ALT_INV_fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PE_R|op_addr[1]~4\,
	regout => \IR_R|r\(6));

-- Location: LC_X10_Y6_N7
\M1_out[1]~0\ : maxv_lcell
-- Equation(s):
-- \M1_out[1]~0_combout\ = (\FSM_R|fsm_state_symbol.S8A~regout\ & (\PE_R|op_addr[1]~0\ & ((\PE_R|op_addr[1]~4\) # (\IR_R|r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PE_R|op_addr[1]~4\,
	datab => \FSM_R|fsm_state_symbol.S8A~regout\,
	datac => \IR_R|r\(3),
	datad => \PE_R|op_addr[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M1_out[1]~0_combout\);

-- Location: LC_X11_Y10_N0
\M11_out[3]~3\ : maxv_lcell
-- Equation(s):
-- \M11_out[3]~3_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(3))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\PC_R|r\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T1_R|r\(3),
	datad => \PC_R|r\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M11_out[3]~3_combout\);

-- Location: LC_X13_Y10_N1
\memory_R|RAM~290\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~290_combout\ = (\M11_out[0]~0_combout\ & (!\M11_out[3]~3_combout\ & (!\M11_out[2]~2_combout\ & !\M11_out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M11_out[0]~0_combout\,
	datab => \M11_out[3]~3_combout\,
	datac => \M11_out[2]~2_combout\,
	datad => \M11_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~290_combout\);

-- Location: LC_X13_Y10_N2
\memory_R|RAM~37\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~37_regout\ = DFFEAS(((\memory_R|RAM~37_regout\) # ((!\FSM_R|fsm_state_symbol.S8B~regout\ & \memory_R|RAM~290_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memory_R|RAM~37_regout\,
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \memory_R|RAM~290_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory_R|RAM~37_regout\);

-- Location: LC_X13_Y10_N8
\memory_R|RAM~282\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~282_combout\ = ((\M11_out[1]~1_combout\ & (!\memory_R|RAM~70_regout\)) # (!\M11_out[1]~1_combout\ & ((!\memory_R|RAM~37_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "303f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory_R|RAM~70_regout\,
	datac => \M11_out[1]~1_combout\,
	datad => \memory_R|RAM~37_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~282_combout\);

-- Location: LC_X12_Y10_N3
\memory_R|RAM~283\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~283_combout\ = ((\M11_out[0]~0_combout\ & (\memory_R|RAM~281_combout\ & \memory_R|RAM~282_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \M11_out[0]~0_combout\,
	datac => \memory_R|RAM~281_combout\,
	datad => \memory_R|RAM~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~283_combout\);

-- Location: LC_X10_Y6_N0
\IR_R|r[3]\ : maxv_lcell
-- Equation(s):
-- \M1_out[0]~1\ = (\FSM_R|fsm_state_symbol.S8A~regout\ & (!\IR_R|r\(0) & ((E2_r[3]) # (\IR_R|r\(1))))) # (!\FSM_R|fsm_state_symbol.S8A~regout\ & (((\IR_R|r\(1)))))
-- \IR_R|r\(3) = DFFEAS(\M1_out[0]~1\, GLOBAL(\clk~combout\), VCC, , !\FSM_R|fsm_state_symbol.Si~regout\, \memory_R|RAM~296_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7740",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(0),
	datab => \FSM_R|fsm_state_symbol.S8A~regout\,
	datac => \memory_R|RAM~296_combout\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|ALT_INV_fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M1_out[0]~1\,
	regout => \IR_R|r\(3));

-- Location: LC_X10_Y6_N4
\PE_R|op_addr[2]~3\ : maxv_lcell
-- Equation(s):
-- \PE_R|op_addr[2]~3_combout\ = (!\IR_R|r\(3) & (\PE_R|op_addr[1]~0\ & ((\IR_R|r\(6)) # (\IR_R|r\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(6),
	datab => \IR_R|r\(3),
	datac => \IR_R|r\(4),
	datad => \PE_R|op_addr[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PE_R|op_addr[2]~3_combout\);

-- Location: LC_X11_Y6_N4
\M1_out[2]~2\ : maxv_lcell
-- Equation(s):
-- \M1_out[2]~2_combout\ = (((\FSM_R|fsm_state_symbol.S8A~regout\ & \PE_R|op_addr[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM_R|fsm_state_symbol.S8A~regout\,
	datad => \PE_R|op_addr[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M1_out[2]~2_combout\);

-- Location: LC_X12_Y10_N1
\M11_out[0]~0\ : maxv_lcell
-- Equation(s):
-- \M11_out[0]~0_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(0))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\PC_R|r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T1_R|r\(0),
	datad => \PC_R|r\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M11_out[0]~0_combout\);

-- Location: LC_X13_Y10_N9
\memory_R|RAM~292\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~292_combout\ = (\M11_out[0]~0_combout\ & (!\M11_out[3]~3_combout\ & (!\M11_out[2]~2_combout\ & \M11_out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M11_out[0]~0_combout\,
	datab => \M11_out[3]~3_combout\,
	datac => \M11_out[2]~2_combout\,
	datad => \M11_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~292_combout\);

-- Location: LC_X13_Y10_N7
\memory_R|RAM~70\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~70_regout\ = DFFEAS(((\memory_R|RAM~70_regout\) # ((!\FSM_R|fsm_state_symbol.S8B~regout\ & \memory_R|RAM~292_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \memory_R|RAM~70_regout\,
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \memory_R|RAM~292_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory_R|RAM~70_regout\);

-- Location: LC_X12_Y10_N7
\memory_R|RAM~286\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~286_combout\ = (\M11_out[0]~0_combout\ & (!\memory_R|RAM~70_regout\ & (\M11_out[1]~1_combout\))) # (!\M11_out[0]~0_combout\ & (((!\M11_out[1]~1_combout\ & !\memory_R|RAM~21_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4043",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_R|RAM~70_regout\,
	datab => \M11_out[0]~0_combout\,
	datac => \M11_out[1]~1_combout\,
	datad => \memory_R|RAM~21_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~286_combout\);

-- Location: LC_X12_Y10_N0
\memory_R|RAM~287\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~287_combout\ = ((\memory_R|RAM~286_combout\ & (\memory_R|RAM~281_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory_R|RAM~286_combout\,
	datac => \memory_R|RAM~281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~287_combout\);

-- Location: LC_X10_Y8_N1
\IR_R|r[8]\ : maxv_lcell
-- Equation(s):
-- \ALU_b[8]~8\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (\FSM_R|WideOr14~combout\ & (E2_r[8]))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (!\FSM_R|WideOr14~combout\ & ((\T2_R|r\(8)))))
-- \IR_R|r\(8) = DFFEAS(\ALU_b[8]~8\, GLOBAL(\clk~combout\), VCC, , !\FSM_R|fsm_state_symbol.Si~regout\, \memory_R|RAM~287_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9180",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S2A~regout\,
	datab => \FSM_R|WideOr14~combout\,
	datac => \memory_R|RAM~287_combout\,
	datad => \T2_R|r\(8),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|ALT_INV_fsm_state_symbol.Si~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[8]~8\,
	regout => \IR_R|r\(8));

-- Location: LC_X11_Y4_N7
\RF_R|registers[4][7]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux8~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & (\RF_R|registers[6][7]~regout\)) # (!\M1_out[1]~0_combout\ & ((H1_registers[4][7])))))
-- \RF_R|registers[4][7]~regout\ = DFFEAS(\RF_R|Mux8~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[7]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[6][7]~regout\,
	datac => \M3_out[7]~15\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux8~2\,
	regout => \RF_R|registers[4][7]~regout\);

-- Location: LC_X11_Y4_N8
\RF_R|registers[7][7]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux8~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux8~2\ & ((H1_registers[7][7]))) # (!\RF_R|Mux8~2\ & (\RF_R|registers[5][7]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux8~2\))))
-- \RF_R|registers[7][7]~regout\ = DFFEAS(\RF_R|Mux8~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[7]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[5][7]~regout\,
	datac => \M3_out[7]~15\,
	datad => \RF_R|Mux8~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux8~3\,
	regout => \RF_R|registers[7][7]~regout\);

-- Location: LC_X10_Y7_N9
\M6_out[5]~1\ : maxv_lcell
-- Equation(s):
-- \M6_out[5]~1_combout\ = ((!\FSM_R|fsm_state_symbol.S7A~regout\ & (!\FSM_R|fsm_state_symbol.S8A~regout\ & \IR_R|r\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S7A~regout\,
	datac => \FSM_R|fsm_state_symbol.S8A~regout\,
	datad => \IR_R|r\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6_out[5]~1_combout\);

-- Location: LC_X11_Y8_N7
\PC_R|r[5]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~25\ = \ALU_a[5]~5_combout\ $ (\ALU_b[15]~5_combout\ $ (((!\ALU_en|Add0~12\ & \ALU_en|Add0~22\) # (\ALU_en|Add0~12\ & \ALU_en|Add0~22COUT1_89\))))
-- \PC_R|r\(5) = DFFEAS(\ALU_en|Add0~25\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~27\ = CARRY((\ALU_a[5]~5_combout\ & (!\ALU_b[15]~5_combout\ & !\ALU_en|Add0~22\)) # (!\ALU_a[5]~5_combout\ & ((!\ALU_en|Add0~22\) # (!\ALU_b[15]~5_combout\))))
-- \ALU_en|Add0~27COUT1_90\ = CARRY((\ALU_a[5]~5_combout\ & (!\ALU_b[15]~5_combout\ & !\ALU_en|Add0~22COUT1_89\)) # (!\ALU_a[5]~5_combout\ & ((!\ALU_en|Add0~22COUT1_89\) # (!\ALU_b[15]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[5]~5_combout\,
	datab => \ALU_b[15]~5_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~12\,
	cin0 => \ALU_en|Add0~22\,
	cin1 => \ALU_en|Add0~22COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~25\,
	regout => \PC_R|r\(5),
	cout0 => \ALU_en|Add0~27\,
	cout1 => \ALU_en|Add0~27COUT1_90\);

-- Location: LC_X14_Y8_N7
\RF_R|registers[3][5]\ : maxv_lcell
-- Equation(s):
-- \M3_out[5]~11\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (((\PC_R|r\(5) & \FSM_R|fsm_state_symbol.S7B~regout\)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (\M3_out[5]~10\))
-- \RF_R|registers[3][5]~regout\ = DFFEAS(\M3_out[5]~11\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M3_out[5]~10\,
	datab => \PC_R|r\(5),
	datac => \FSM_R|fsm_state_symbol.S7B~regout\,
	datad => \FSM_R|fsm_state_symbol.S3~regout\,
	aclr => GND,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[5]~11\,
	regout => \RF_R|registers[3][5]~regout\);

-- Location: LC_X7_Y6_N0
\RF_R|registers[4][5]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux26~2\ = (\IR_R|r\(6) & (((\IR_R|r\(1))))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & (\RF_R|registers[6][5]~regout\)) # (!\IR_R|r\(1) & ((H1_registers[4][5])))))
-- \RF_R|registers[4][5]~regout\ = DFFEAS(\RF_R|Mux26~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][5]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[5]~11\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux26~2\,
	regout => \RF_R|registers[4][5]~regout\);

-- Location: LC_X7_Y7_N5
\RF_R|registers[6][5]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux10~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & ((H1_registers[6][5]))) # (!\M1_out[1]~0_combout\ & (\RF_R|registers[4][5]~regout\))))
-- \RF_R|registers[6][5]~regout\ = DFFEAS(\RF_R|Mux10~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][5]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[5]~11\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux10~2\,
	regout => \RF_R|registers[6][5]~regout\);

-- Location: LC_X12_Y7_N4
\RF_R|registers[7][5]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux26~3\ = (\IR_R|r\(6) & ((\RF_R|Mux26~2\ & (H1_registers[7][5])) # (!\RF_R|Mux26~2\ & ((\RF_R|registers[5][5]~regout\))))) # (!\IR_R|r\(6) & (\RF_R|Mux26~2\))
-- \RF_R|registers[7][5]~regout\ = DFFEAS(\RF_R|Mux26~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|Mux26~2\,
	datac => \M3_out[5]~11\,
	datad => \RF_R|registers[5][5]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux26~3\,
	regout => \RF_R|registers[7][5]~regout\);

-- Location: LC_X7_Y7_N6
\RF_R|registers[5][5]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux10~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux10~2\ & (\RF_R|registers[7][5]~regout\)) # (!\RF_R|Mux10~2\ & ((H1_registers[5][5]))))) # (!\M1_out[0]~1\ & (((\RF_R|Mux10~2\))))
-- \RF_R|registers[5][5]~regout\ = DFFEAS(\RF_R|Mux10~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][5]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[5]~11\,
	datad => \RF_R|Mux10~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux10~3\,
	regout => \RF_R|registers[5][5]~regout\);

-- Location: LC_X8_Y5_N1
\RF_R|registers[0][5]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux26~0\ = (\IR_R|r\(6) & ((\RF_R|registers[1][5]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][5] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][5]~regout\ = DFFEAS(\RF_R|Mux26~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[1][5]~regout\,
	datac => \M3_out[5]~11\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux26~0\,
	regout => \RF_R|registers[0][5]~regout\);

-- Location: LC_X9_Y6_N9
\RF_R|registers[1][5]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux10~0\ = (\M1_out[0]~1\ & (((H1_registers[1][5]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][5]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][5]~regout\ = DFFEAS(\RF_R|Mux10~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[0][5]~regout\,
	datac => \M3_out[5]~11\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux10~0\,
	regout => \RF_R|registers[1][5]~regout\);

-- Location: LC_X9_Y6_N4
\RF_R|registers[2][5]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux10~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux10~0\ & (\RF_R|registers[3][5]~regout\)) # (!\RF_R|Mux10~0\ & ((H1_registers[2][5]))))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux10~0\))))
-- \RF_R|registers[2][5]~regout\ = DFFEAS(\RF_R|Mux10~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, \M3_out[5]~11\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[3][5]~regout\,
	datac => \M3_out[5]~11\,
	datad => \RF_R|Mux10~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux10~1\,
	regout => \RF_R|registers[2][5]~regout\);

-- Location: LC_X8_Y5_N6
\RF_R|Mux26~1\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux26~1_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux26~0\ & ((\RF_R|registers[3][5]~regout\))) # (!\RF_R|Mux26~0\ & (\RF_R|registers[2][5]~regout\)))) # (!\IR_R|r\(1) & (\RF_R|Mux26~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \RF_R|Mux26~0\,
	datac => \RF_R|registers[2][5]~regout\,
	datad => \RF_R|registers[3][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux26~1_combout\);

-- Location: LC_X11_Y7_N0
\T1_R|r[5]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[5]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux10~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux10~1\))
-- \T1_R|r\(5) = DFFEAS(\T1_R|r[5]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~25\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux10~1\,
	datac => \ALU_en|Add0~25\,
	datad => \RF_R|Mux10~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[5]~COMBOUT\,
	regout => \T1_R|r\(5));

-- Location: LC_X12_Y7_N0
\M6_out[5]~0\ : maxv_lcell
-- Equation(s):
-- \M6_out[5]~0_combout\ = (\FSM_R|WideOr9~0_combout\ & (!\IR_R|r\(8) & (\RF_R|Mux26~1_combout\))) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[5]~COMBOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|WideOr9~0_combout\,
	datab => \IR_R|r\(8),
	datac => \RF_R|Mux26~1_combout\,
	datad => \T1_R|r[5]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6_out[5]~0_combout\);

-- Location: LC_X12_Y7_N1
\T2_R|r[5]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(5) = DFFEAS((!\FSM_R|fsm_state_symbol.S7A~regout\ & ((\M6_out[5]~0_combout\) # ((\M6_out[5]~1_combout\ & \RF_R|Mux26~3\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7A~regout\,
	datab => \M6_out[5]~1_combout\,
	datac => \RF_R|Mux26~3\,
	datad => \M6_out[5]~0_combout\,
	aclr => GND,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(5));

-- Location: LC_X10_Y8_N4
\ALU_b[15]~5\ : maxv_lcell
-- Equation(s):
-- \ALU_b[15]~5_combout\ = (!\FSM_R|fsm_state_symbol.S2A~regout\ & (((!\FSM_R|WideOr14~combout\ & \T2_R|r\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S2A~regout\,
	datac => \FSM_R|WideOr14~combout\,
	datad => \T2_R|r\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[15]~5_combout\);

-- Location: LC_X14_Y8_N6
\T3_R|r[5]\ : maxv_lcell
-- Equation(s):
-- \M3_out[5]~10\ = ((\FSM_R|fsm_state_symbol.S7B~regout\ & ((\T2_R|r\(5)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (E5_r[5])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~25\,
	datad => \T2_R|r\(5),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[5]~10\,
	regout => \T3_R|r\(5));

-- Location: LC_X11_Y7_N3
\ALU_a[5]~5\ : maxv_lcell
-- Equation(s):
-- \ALU_a[5]~5_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(5)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T1_R|r\(5),
	datad => \T2_R|r\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[5]~5_combout\);

-- Location: LC_X11_Y8_N8
\PC_R|r[6]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~30\ = \ALU_a[6]~6_combout\ $ (\ALU_b[6]~6_combout\ $ ((!(!\ALU_en|Add0~12\ & \ALU_en|Add0~27\) # (\ALU_en|Add0~12\ & \ALU_en|Add0~27COUT1_90\))))
-- \PC_R|r\(6) = DFFEAS(\ALU_en|Add0~30\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~32\ = CARRY((\ALU_a[6]~6_combout\ & ((\ALU_b[6]~6_combout\) # (!\ALU_en|Add0~27\))) # (!\ALU_a[6]~6_combout\ & (\ALU_b[6]~6_combout\ & !\ALU_en|Add0~27\)))
-- \ALU_en|Add0~32COUT1_91\ = CARRY((\ALU_a[6]~6_combout\ & ((\ALU_b[6]~6_combout\) # (!\ALU_en|Add0~27COUT1_90\))) # (!\ALU_a[6]~6_combout\ & (\ALU_b[6]~6_combout\ & !\ALU_en|Add0~27COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[6]~6_combout\,
	datab => \ALU_b[6]~6_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~12\,
	cin0 => \ALU_en|Add0~27\,
	cin1 => \ALU_en|Add0~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~30\,
	regout => \PC_R|r\(6),
	cout0 => \ALU_en|Add0~32\,
	cout1 => \ALU_en|Add0~32COUT1_91\);

-- Location: LC_X11_Y8_N1
\T3_R|r[6]\ : maxv_lcell
-- Equation(s):
-- \M3_out[6]~12\ = ((\FSM_R|fsm_state_symbol.S7B~regout\ & ((\T2_R|r\(6)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (E5_r[6])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~30\,
	datad => \T2_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[6]~12\,
	regout => \T3_R|r\(6));

-- Location: LC_X8_Y8_N1
\RF_R|registers[2][6]\ : maxv_lcell
-- Equation(s):
-- \M3_out[6]~13\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\PC_R|r\(6) & ((\FSM_R|fsm_state_symbol.S7B~regout\)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[6]~12\))))
-- \RF_R|registers[2][6]~regout\ = DFFEAS(\M3_out[6]~13\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \PC_R|r\(6),
	datac => \M3_out[6]~12\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[6]~13\,
	regout => \RF_R|registers[2][6]~regout\);

-- Location: LC_X6_Y7_N3
\RF_R|registers[1][6]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux9~0\ = (\M1_out[0]~1\ & (((H1_registers[1][6]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][6]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][6]~regout\ = DFFEAS(\RF_R|Mux9~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[6]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[0][6]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[6]~13\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux9~0\,
	regout => \RF_R|registers[1][6]~regout\);

-- Location: LC_X8_Y5_N3
\RF_R|registers[0][6]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux25~2\ = (\IR_R|r\(6) & ((\RF_R|registers[1][6]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][6] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][6]~regout\ = DFFEAS(\RF_R|Mux25~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[6]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[1][6]~regout\,
	datac => \M3_out[6]~13\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux25~2\,
	regout => \RF_R|registers[0][6]~regout\);

-- Location: LC_X6_Y7_N4
\RF_R|registers[3][6]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux9~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux9~0\ & ((H1_registers[3][6]))) # (!\RF_R|Mux9~0\ & (\RF_R|registers[2][6]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux9~0\))))
-- \RF_R|registers[3][6]~regout\ = DFFEAS(\RF_R|Mux9~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[6]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[2][6]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[6]~13\,
	datad => \RF_R|Mux9~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux9~1\,
	regout => \RF_R|registers[3][6]~regout\);

-- Location: LC_X8_Y5_N0
\RF_R|Mux25~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux25~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux25~2\ & (\RF_R|registers[3][6]~regout\)) # (!\RF_R|Mux25~2\ & ((\RF_R|registers[2][6]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux25~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[3][6]~regout\,
	datac => \RF_R|registers[2][6]~regout\,
	datad => \RF_R|Mux25~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux25~3_combout\);

-- Location: LC_X8_Y6_N6
\RF_R|registers[6][6]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux25~0\ = (\IR_R|r\(6) & (((\IR_R|r\(1))))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & ((H1_registers[6][6]))) # (!\IR_R|r\(1) & (\RF_R|registers[4][6]~regout\))))
-- \RF_R|registers[6][6]~regout\ = DFFEAS(\RF_R|Mux25~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[6]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[4][6]~regout\,
	datac => \M3_out[6]~13\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux25~0\,
	regout => \RF_R|registers[6][6]~regout\);

-- Location: LC_X9_Y7_N9
\RF_R|registers[4][6]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux9~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & (\RF_R|registers[6][6]~regout\)) # (!\M1_out[1]~0_combout\ & ((H1_registers[4][6])))))
-- \RF_R|registers[4][6]~regout\ = DFFEAS(\RF_R|Mux9~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[6]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][6]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[6]~13\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux9~2\,
	regout => \RF_R|registers[4][6]~regout\);

-- Location: LC_X8_Y7_N5
\RF_R|registers[5][6]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux25~1\ = (\IR_R|r\(6) & ((\RF_R|Mux25~0\ & (\RF_R|registers[7][6]~regout\)) # (!\RF_R|Mux25~0\ & ((H1_registers[5][6]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux25~0\))))
-- \RF_R|registers[5][6]~regout\ = DFFEAS(\RF_R|Mux25~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[6]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[7][6]~regout\,
	datac => \M3_out[6]~13\,
	datad => \RF_R|Mux25~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux25~1\,
	regout => \RF_R|registers[5][6]~regout\);

-- Location: LC_X9_Y7_N1
\RF_R|Mux25~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux25~4_combout\ = (\IR_R|r\(8) & (((\RF_R|Mux25~1\)))) # (!\IR_R|r\(8) & (\RF_R|Mux25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|Mux25~3_combout\,
	datab => \IR_R|r\(8),
	datad => \RF_R|Mux25~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux25~4_combout\);

-- Location: LC_X11_Y7_N9
\T1_R|r[6]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[6]~COMBOUT\ = (\M1_out[2]~2_combout\ & (\RF_R|Mux9~3\)) # (!\M1_out[2]~2_combout\ & (((\RF_R|Mux9~1\))))
-- \T1_R|r\(6) = DFFEAS(\T1_R|r[6]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~30\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux9~3\,
	datac => \ALU_en|Add0~30\,
	datad => \RF_R|Mux9~1\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[6]~COMBOUT\,
	regout => \T1_R|r\(6));

-- Location: LC_X10_Y7_N4
\T2_R|r[6]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(6) = DFFEAS(((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux25~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & ((\T1_R|r[6]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~285_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux25~4_combout\,
	datab => \T1_R|r[6]~COMBOUT\,
	datac => \memory_R|RAM~285_combout\,
	datad => \FSM_R|WideOr9~0_combout\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(6));

-- Location: LC_X10_Y7_N7
\ALU_b[6]~6\ : maxv_lcell
-- Equation(s):
-- \ALU_b[6]~6_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((\FSM_R|WideOr14~combout\ & \IR_R|r\(6))))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (\T2_R|r\(6) & (!\FSM_R|WideOr14~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T2_R|r\(6),
	datab => \FSM_R|fsm_state_symbol.S2A~regout\,
	datac => \FSM_R|WideOr14~combout\,
	datad => \IR_R|r\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[6]~6_combout\);

-- Location: LC_X9_Y7_N4
\RF_R|registers[7][6]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux9~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux9~2\ & ((H1_registers[7][6]))) # (!\RF_R|Mux9~2\ & (\RF_R|registers[5][6]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux9~2\))))
-- \RF_R|registers[7][6]~regout\ = DFFEAS(\RF_R|Mux9~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[6]~13\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][6]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[6]~13\,
	datad => \RF_R|Mux9~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux9~3\,
	regout => \RF_R|registers[7][6]~regout\);

-- Location: LC_X11_Y7_N1
\ALU_a[6]~6\ : maxv_lcell
-- Equation(s):
-- \ALU_a[6]~6_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(6)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \T1_R|r\(6),
	datac => \T2_R|r\(6),
	datad => \FSM_R|fsm_state_symbol.S8B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[6]~6_combout\);

-- Location: LC_X11_Y8_N9
\PC_R|r[7]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~35\ = \ALU_b[7]~7_combout\ $ (\ALU_a[7]~7_combout\ $ (((!\ALU_en|Add0~12\ & \ALU_en|Add0~32\) # (\ALU_en|Add0~12\ & \ALU_en|Add0~32COUT1_91\))))
-- \PC_R|r\(7) = DFFEAS(\ALU_en|Add0~35\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~37\ = CARRY((\ALU_b[7]~7_combout\ & (!\ALU_a[7]~7_combout\ & !\ALU_en|Add0~32COUT1_91\)) # (!\ALU_b[7]~7_combout\ & ((!\ALU_en|Add0~32COUT1_91\) # (!\ALU_a[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_b[7]~7_combout\,
	datab => \ALU_a[7]~7_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~12\,
	cin0 => \ALU_en|Add0~32\,
	cin1 => \ALU_en|Add0~32COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~35\,
	regout => \PC_R|r\(7),
	cout => \ALU_en|Add0~37\);

-- Location: LC_X8_Y8_N9
\T3_R|r[7]\ : maxv_lcell
-- Equation(s):
-- \M3_out[7]~14\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (((\FSM_R|fsm_state_symbol.S7B~regout\)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & ((\FSM_R|fsm_state_symbol.S7B~regout\ & (\T2_R|r\(7))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & ((E5_r[7])))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \T2_R|r\(7),
	datac => \ALU_en|Add0~35\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[7]~14\,
	regout => \T3_R|r\(7));

-- Location: LC_X7_Y5_N5
\RF_R|registers[2][7]\ : maxv_lcell
-- Equation(s):
-- \M3_out[7]~15\ = (\FSM_R|fsm_state_symbol.S3~regout\ & ((\M3_out[7]~14\ & ((\PC_R|r\(7)))) # (!\M3_out[7]~14\ & (\IR_R|r\(0))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[7]~14\))))
-- \RF_R|registers[2][7]~regout\ = DFFEAS(\M3_out[7]~15\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \IR_R|r\(0),
	datac => \PC_R|r\(7),
	datad => \M3_out[7]~14\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[7]~15\,
	regout => \RF_R|registers[2][7]~regout\);

-- Location: LC_X9_Y6_N5
\RF_R|registers[1][7]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux8~0\ = (\M1_out[0]~1\ & (((H1_registers[1][7]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][7]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][7]~regout\ = DFFEAS(\RF_R|Mux8~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[7]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[0][7]~regout\,
	datac => \M3_out[7]~15\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux8~0\,
	regout => \RF_R|registers[1][7]~regout\);

-- Location: LC_X9_Y5_N8
\RF_R|registers[0][7]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux24~2\ = (\IR_R|r\(6) & ((\RF_R|registers[1][7]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][7] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][7]~regout\ = DFFEAS(\RF_R|Mux24~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[7]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][7]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[7]~15\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux24~2\,
	regout => \RF_R|registers[0][7]~regout\);

-- Location: LC_X12_Y5_N7
\RF_R|registers[3][7]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux8~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux8~0\ & ((H1_registers[3][7]))) # (!\RF_R|Mux8~0\ & (\RF_R|registers[2][7]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux8~0\))))
-- \RF_R|registers[3][7]~regout\ = DFFEAS(\RF_R|Mux8~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[7]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[2][7]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[7]~15\,
	datad => \RF_R|Mux8~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux8~1\,
	regout => \RF_R|registers[3][7]~regout\);

-- Location: LC_X11_Y7_N5
\T1_R|r[7]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[7]~COMBOUT\ = (\M1_out[2]~2_combout\ & (\RF_R|Mux8~3\)) # (!\M1_out[2]~2_combout\ & (((\RF_R|Mux8~1\))))
-- \T1_R|r\(7) = DFFEAS(\T1_R|r[7]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~35\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux8~3\,
	datac => \ALU_en|Add0~35\,
	datad => \RF_R|Mux8~1\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[7]~COMBOUT\,
	regout => \T1_R|r\(7));

-- Location: LC_X11_Y7_N2
\ALU_a[7]~7\ : maxv_lcell
-- Equation(s):
-- \ALU_a[7]~7_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(7)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T1_R|r\(7),
	datad => \T2_R|r\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[7]~7_combout\);

-- Location: LC_X10_Y4_N7
\RF_R|registers[6][7]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux24~0\ = (\IR_R|r\(6) & (((\IR_R|r\(1))))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & ((H1_registers[6][7]))) # (!\IR_R|r\(1) & (\RF_R|registers[4][7]~regout\))))
-- \RF_R|registers[6][7]~regout\ = DFFEAS(\RF_R|Mux24~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[7]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][7]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[7]~15\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux24~0\,
	regout => \RF_R|registers[6][7]~regout\);

-- Location: LC_X10_Y4_N6
\RF_R|registers[5][7]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux24~1\ = (\RF_R|Mux24~0\ & ((\RF_R|registers[7][7]~regout\) # ((!\IR_R|r\(6))))) # (!\RF_R|Mux24~0\ & (((H1_registers[5][7] & \IR_R|r\(6)))))
-- \RF_R|registers[5][7]~regout\ = DFFEAS(\RF_R|Mux24~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[7]~15\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][7]~regout\,
	datab => \RF_R|Mux24~0\,
	datac => \M3_out[7]~15\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux24~1\,
	regout => \RF_R|registers[5][7]~regout\);

-- Location: LC_X10_Y5_N0
\RF_R|Mux24~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux24~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux24~2\ & ((\RF_R|registers[3][7]~regout\))) # (!\RF_R|Mux24~2\ & (\RF_R|registers[2][7]~regout\)))) # (!\IR_R|r\(1) & (((\RF_R|Mux24~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|registers[2][7]~regout\,
	datab => \IR_R|r\(1),
	datac => \RF_R|Mux24~2\,
	datad => \RF_R|registers[3][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux24~3_combout\);

-- Location: LC_X10_Y7_N0
\RF_R|Mux24~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux24~4_combout\ = (\IR_R|r\(8) & (\RF_R|Mux24~1\)) # (!\IR_R|r\(8) & (((\RF_R|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datab => \RF_R|Mux24~1\,
	datac => \RF_R|Mux24~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux24~4_combout\);

-- Location: LC_X10_Y7_N5
\T2_R|r[7]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(7) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux24~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[7]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~283_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|WideOr9~0_combout\,
	datab => \RF_R|Mux24~4_combout\,
	datac => \memory_R|RAM~283_combout\,
	datad => \T1_R|r[7]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(7));

-- Location: LC_X10_Y8_N5
\ALU_b[7]~7\ : maxv_lcell
-- Equation(s):
-- \ALU_b[7]~7_combout\ = (\FSM_R|WideOr14~combout\ & (\IR_R|r\(1) & ((\FSM_R|fsm_state_symbol.S2A~regout\)))) # (!\FSM_R|WideOr14~combout\ & (((\T2_R|r\(7) & !\FSM_R|fsm_state_symbol.S2A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \FSM_R|WideOr14~combout\,
	datac => \T2_R|r\(7),
	datad => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[7]~7_combout\);

-- Location: LC_X12_Y8_N0
\PC_R|r[8]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~40\ = \ALU_a[8]~8_combout\ $ (\ALU_b[8]~8\ $ ((!\ALU_en|Add0~37\)))
-- \PC_R|r\(8) = DFFEAS(\ALU_en|Add0~40\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~42\ = CARRY((\ALU_a[8]~8_combout\ & ((\ALU_b[8]~8\) # (!\ALU_en|Add0~37\))) # (!\ALU_a[8]~8_combout\ & (\ALU_b[8]~8\ & !\ALU_en|Add0~37\)))
-- \ALU_en|Add0~42COUT1_92\ = CARRY((\ALU_a[8]~8_combout\ & ((\ALU_b[8]~8\) # (!\ALU_en|Add0~37\))) # (!\ALU_a[8]~8_combout\ & (\ALU_b[8]~8\ & !\ALU_en|Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[8]~8_combout\,
	datab => \ALU_b[8]~8\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~40\,
	regout => \PC_R|r\(8),
	cout0 => \ALU_en|Add0~42\,
	cout1 => \ALU_en|Add0~42COUT1_92\);

-- Location: LC_X13_Y9_N1
\T3_R|r[8]\ : maxv_lcell
-- Equation(s):
-- \M3_out[8]~16\ = (\FSM_R|fsm_state_symbol.S7B~regout\ & ((\T2_R|r\(8)) # ((\FSM_R|fsm_state_symbol.S3~regout\)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (((E5_r[8] & !\FSM_R|fsm_state_symbol.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7B~regout\,
	datab => \T2_R|r\(8),
	datac => \ALU_en|Add0~40\,
	datad => \FSM_R|fsm_state_symbol.S3~regout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[8]~16\,
	regout => \T3_R|r\(8));

-- Location: LC_X9_Y9_N7
\RF_R|registers[2][8]\ : maxv_lcell
-- Equation(s):
-- \M3_out[8]~17\ = (\FSM_R|fsm_state_symbol.S3~regout\ & ((\M3_out[8]~16\ & ((\PC_R|r\(8)))) # (!\M3_out[8]~16\ & (\IR_R|r\(1))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[8]~16\))))
-- \RF_R|registers[2][8]~regout\ = DFFEAS(\M3_out[8]~17\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \IR_R|r\(1),
	datac => \PC_R|r\(8),
	datad => \M3_out[8]~16\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[8]~17\,
	regout => \RF_R|registers[2][8]~regout\);

-- Location: LC_X8_Y9_N6
\RF_R|registers[1][8]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux7~0\ = (\M1_out[0]~1\ & (((H1_registers[1][8]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][8]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][8]~regout\ = DFFEAS(\RF_R|Mux7~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[8]~17\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[0][8]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[8]~17\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux7~0\,
	regout => \RF_R|registers[1][8]~regout\);

-- Location: LC_X9_Y10_N6
\RF_R|registers[0][8]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux23~2\ = (\IR_R|r\(6) & ((\RF_R|registers[1][8]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][8] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][8]~regout\ = DFFEAS(\RF_R|Mux23~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[8]~17\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][8]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[8]~17\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux23~2\,
	regout => \RF_R|registers[0][8]~regout\);

-- Location: LC_X8_Y9_N5
\RF_R|registers[3][8]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux7~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux7~0\ & ((H1_registers[3][8]))) # (!\RF_R|Mux7~0\ & (\RF_R|registers[2][8]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux7~0\))))
-- \RF_R|registers[3][8]~regout\ = DFFEAS(\RF_R|Mux7~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[8]~17\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[2][8]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[8]~17\,
	datad => \RF_R|Mux7~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux7~1\,
	regout => \RF_R|registers[3][8]~regout\);

-- Location: LC_X7_Y9_N7
\RF_R|registers[4][8]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux7~2\ = (\M1_out[1]~0_combout\ & ((\RF_R|registers[6][8]~regout\) # ((\M1_out[0]~1\)))) # (!\M1_out[1]~0_combout\ & (((H1_registers[4][8] & !\M1_out[0]~1\))))
-- \RF_R|registers[4][8]~regout\ = DFFEAS(\RF_R|Mux7~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[8]~17\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][8]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[8]~17\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux7~2\,
	regout => \RF_R|registers[4][8]~regout\);

-- Location: LC_X8_Y10_N6
\RF_R|registers[6][8]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux23~0\ = (\IR_R|r\(1) & (((H1_registers[6][8]) # (\IR_R|r\(6))))) # (!\IR_R|r\(1) & (\RF_R|registers[4][8]~regout\ & ((!\IR_R|r\(6)))))
-- \RF_R|registers[6][8]~regout\ = DFFEAS(\RF_R|Mux23~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[8]~17\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][8]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[8]~17\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux23~0\,
	regout => \RF_R|registers[6][8]~regout\);

-- Location: LC_X7_Y9_N8
\RF_R|registers[7][8]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux7~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux7~2\ & ((H1_registers[7][8]))) # (!\RF_R|Mux7~2\ & (\RF_R|registers[5][8]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux7~2\))))
-- \RF_R|registers[7][8]~regout\ = DFFEAS(\RF_R|Mux7~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[8]~17\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][8]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[8]~17\,
	datad => \RF_R|Mux7~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux7~3\,
	regout => \RF_R|registers[7][8]~regout\);

-- Location: LC_X8_Y10_N7
\RF_R|registers[5][8]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux23~1\ = (\IR_R|r\(6) & ((\RF_R|Mux23~0\ & (\RF_R|registers[7][8]~regout\)) # (!\RF_R|Mux23~0\ & ((H1_registers[5][8]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux23~0\))))
-- \RF_R|registers[5][8]~regout\ = DFFEAS(\RF_R|Mux23~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[8]~17\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][8]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[8]~17\,
	datad => \RF_R|Mux23~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux23~1\,
	regout => \RF_R|registers[5][8]~regout\);

-- Location: LC_X11_Y9_N1
\T1_R|r[8]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[8]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux7~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux7~1\))
-- \T1_R|r\(8) = DFFEAS(\T1_R|r[8]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~40\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux7~1\,
	datac => \ALU_en|Add0~40\,
	datad => \RF_R|Mux7~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[8]~COMBOUT\,
	regout => \T1_R|r\(8));

-- Location: LC_X11_Y9_N2
\ALU_a[8]~8\ : maxv_lcell
-- Equation(s):
-- \ALU_a[8]~8_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T2_R|r\(8))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \T2_R|r\(8),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \T1_R|r\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[8]~8_combout\);

-- Location: LC_X9_Y10_N7
\RF_R|Mux23~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux23~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux23~2\ & (\RF_R|registers[3][8]~regout\)) # (!\RF_R|Mux23~2\ & ((\RF_R|registers[2][8]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux23~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|registers[3][8]~regout\,
	datab => \IR_R|r\(1),
	datac => \RF_R|registers[2][8]~regout\,
	datad => \RF_R|Mux23~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux23~3_combout\);

-- Location: LC_X9_Y10_N5
\RF_R|Mux23~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux23~4_combout\ = ((\IR_R|r\(8) & ((\RF_R|Mux23~1\))) # (!\IR_R|r\(8) & (\RF_R|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_R|r\(8),
	datac => \RF_R|Mux23~3_combout\,
	datad => \RF_R|Mux23~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux23~4_combout\);

-- Location: LC_X10_Y9_N2
\T2_R|r[8]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(8) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux23~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[8]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~287_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux23~4_combout\,
	datab => \FSM_R|WideOr9~0_combout\,
	datac => \memory_R|RAM~287_combout\,
	datad => \T1_R|r[8]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(8));

-- Location: LC_X13_Y9_N6
\T3_R|r[1]\ : maxv_lcell
-- Equation(s):
-- \M3_out[1]~2\ = (\FSM_R|fsm_state_symbol.S7B~regout\ & (((\T2_R|r\(1))))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (((E5_r[1]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~5\,
	datad => \T2_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[1]~2\,
	regout => \T3_R|r\(1));

-- Location: LC_X13_Y9_N7
\RF_R|registers[2][1]\ : maxv_lcell
-- Equation(s):
-- \M3_out[1]~3\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\PC_R|r\(1) & (\FSM_R|fsm_state_symbol.S7B~regout\))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[1]~2\))))
-- \RF_R|registers[2][1]~regout\ = DFFEAS(\M3_out[1]~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC_R|r\(1),
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \M3_out[1]~2\,
	datad => \FSM_R|fsm_state_symbol.S3~regout\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[1]~3\,
	regout => \RF_R|registers[2][1]~regout\);

-- Location: LC_X10_Y4_N0
\RF_R|registers[6][1]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux30~0\ = (\IR_R|r\(6) & (((\IR_R|r\(1))))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & ((H1_registers[6][1]))) # (!\IR_R|r\(1) & (\RF_R|registers[4][1]~regout\))))
-- \RF_R|registers[6][1]~regout\ = DFFEAS(\RF_R|Mux30~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[1]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][1]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[1]~3\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux30~0\,
	regout => \RF_R|registers[6][1]~regout\);

-- Location: LC_X10_Y5_N8
\RF_R|registers[4][1]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux14~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & (\RF_R|registers[6][1]~regout\)) # (!\M1_out[1]~0_combout\ & ((H1_registers[4][1])))))
-- \RF_R|registers[4][1]~regout\ = DFFEAS(\RF_R|Mux14~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[1]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][1]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[1]~3\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux14~2\,
	regout => \RF_R|registers[4][1]~regout\);

-- Location: LC_X10_Y4_N1
\RF_R|registers[5][1]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux30~1\ = (\IR_R|r\(6) & ((\RF_R|Mux30~0\ & (\RF_R|registers[7][1]~regout\)) # (!\RF_R|Mux30~0\ & ((H1_registers[5][1]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux30~0\))))
-- \RF_R|registers[5][1]~regout\ = DFFEAS(\RF_R|Mux30~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[1]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][1]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[1]~3\,
	datad => \RF_R|Mux30~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux30~1\,
	regout => \RF_R|registers[5][1]~regout\);

-- Location: LC_X10_Y5_N1
\RF_R|registers[7][1]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux14~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux14~2\ & ((H1_registers[7][1]))) # (!\RF_R|Mux14~2\ & (\RF_R|registers[5][1]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux14~2\))))
-- \RF_R|registers[7][1]~regout\ = DFFEAS(\RF_R|Mux14~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[1]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[5][1]~regout\,
	datac => \M3_out[1]~3\,
	datad => \RF_R|Mux14~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux14~3\,
	regout => \RF_R|registers[7][1]~regout\);

-- Location: LC_X11_Y5_N6
\RF_R|registers[0][1]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux30~2\ = (\IR_R|r\(1) & (((\IR_R|r\(6))))) # (!\IR_R|r\(1) & ((\IR_R|r\(6) & (\RF_R|registers[1][1]~regout\)) # (!\IR_R|r\(6) & ((H1_registers[0][1])))))
-- \RF_R|registers[0][1]~regout\ = DFFEAS(\RF_R|Mux30~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[1]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][1]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[1]~3\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux30~2\,
	regout => \RF_R|registers[0][1]~regout\);

-- Location: LC_X12_Y6_N0
\RF_R|registers[1][1]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux14~0\ = (\M1_out[1]~0_combout\ & (((\M1_out[0]~1\)))) # (!\M1_out[1]~0_combout\ & ((\M1_out[0]~1\ & ((H1_registers[1][1]))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][1]~regout\))))
-- \RF_R|registers[1][1]~regout\ = DFFEAS(\RF_R|Mux14~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[1]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[0][1]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[1]~3\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux14~0\,
	regout => \RF_R|registers[1][1]~regout\);

-- Location: LC_X12_Y6_N5
\RF_R|registers[3][1]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux14~1\ = (\RF_R|Mux14~0\ & (((H1_registers[3][1]) # (!\M1_out[1]~0_combout\)))) # (!\RF_R|Mux14~0\ & (\RF_R|registers[2][1]~regout\ & ((\M1_out[1]~0_combout\))))
-- \RF_R|registers[3][1]~regout\ = DFFEAS(\RF_R|Mux14~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[1]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[2][1]~regout\,
	datab => \RF_R|Mux14~0\,
	datac => \M3_out[1]~3\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux14~1\,
	regout => \RF_R|registers[3][1]~regout\);

-- Location: LC_X11_Y5_N9
\RF_R|Mux30~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux30~3_combout\ = (\RF_R|Mux30~2\ & ((\RF_R|registers[3][1]~regout\) # ((!\IR_R|r\(1))))) # (!\RF_R|Mux30~2\ & (((\IR_R|r\(1) & \RF_R|registers[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|Mux30~2\,
	datab => \RF_R|registers[3][1]~regout\,
	datac => \IR_R|r\(1),
	datad => \RF_R|registers[2][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux30~3_combout\);

-- Location: LC_X11_Y5_N4
\RF_R|Mux30~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux30~4_combout\ = (\IR_R|r\(8) & (((\RF_R|Mux30~1\)))) # (!\IR_R|r\(8) & (((\RF_R|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datac => \RF_R|Mux30~1\,
	datad => \RF_R|Mux30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux30~4_combout\);

-- Location: LC_X11_Y7_N8
\T1_R|r[1]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[1]~COMBOUT\ = (\M1_out[2]~2_combout\ & (\RF_R|Mux14~3\)) # (!\M1_out[2]~2_combout\ & (((\RF_R|Mux14~1\))))
-- \T1_R|r\(1) = DFFEAS(\T1_R|r[1]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~5\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux14~3\,
	datac => \ALU_en|Add0~5\,
	datad => \RF_R|Mux14~1\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[1]~COMBOUT\,
	regout => \T1_R|r\(1));

-- Location: LC_X10_Y7_N8
\T2_R|r[1]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(1) = DFFEAS(((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux30~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & ((\T1_R|r[1]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~283_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux30~4_combout\,
	datab => \T1_R|r[1]~COMBOUT\,
	datac => \memory_R|RAM~283_combout\,
	datad => \FSM_R|WideOr9~0_combout\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(1));

-- Location: LC_X10_Y7_N6
\ALU_a[1]~1\ : maxv_lcell
-- Equation(s):
-- \ALU_a[1]~1_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T2_R|r\(1))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T2_R|r\(1),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \T1_R|r\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[1]~1_combout\);

-- Location: LC_X11_Y10_N8
\M11_out[1]~1\ : maxv_lcell
-- Equation(s):
-- \M11_out[1]~1_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(1)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\PC_R|r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \PC_R|r\(1),
	datad => \T1_R|r\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M11_out[1]~1_combout\);

-- Location: LC_X12_Y10_N4
\memory_R|RAM~279\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~279_combout\ = ((\M11_out[0]~0_combout\ & ((!\memory_R|RAM~37_regout\))) # (!\M11_out[0]~0_combout\ & (!\memory_R|RAM~21_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory_R|RAM~21_regout\,
	datac => \memory_R|RAM~37_regout\,
	datad => \M11_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~279_combout\);

-- Location: LC_X11_Y10_N7
\memory_R|RAM~280\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~280_combout\ = (!\M11_out[1]~1_combout\ & (\memory_R|RAM~279_combout\ & (!\M11_out[3]~3_combout\ & !\M11_out[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M11_out[1]~1_combout\,
	datab => \memory_R|RAM~279_combout\,
	datac => \M11_out[3]~3_combout\,
	datad => \M11_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~280_combout\);

-- Location: LC_X10_Y10_N9
\RF_R|registers[7][2]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux13~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux13~2\ & ((H1_registers[7][2]))) # (!\RF_R|Mux13~2\ & (\RF_R|registers[5][2]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux13~2\))))
-- \RF_R|registers[7][2]~regout\ = DFFEAS(\RF_R|Mux13~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[2]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][2]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[2]~5\,
	datad => \RF_R|Mux13~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux13~3\,
	regout => \RF_R|registers[7][2]~regout\);

-- Location: LC_X11_Y10_N1
\memory_R|RAM~281\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~281_combout\ = (!\M11_out[3]~3_combout\ & ((\FSM_R|fsm_state_symbol.S8B~regout\ & (!\T1_R|r\(2))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((!\PC_R|r\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0027",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S8B~regout\,
	datab => \T1_R|r\(2),
	datac => \PC_R|r\(2),
	datad => \M11_out[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~281_combout\);

-- Location: LC_X12_Y10_N6
\memory_R|RAM~284\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~284_combout\ = (\M11_out[1]~1_combout\ & (!\memory_R|RAM~57_regout\ & ((!\M11_out[0]~0_combout\)))) # (!\M11_out[1]~1_combout\ & (((!\memory_R|RAM~37_regout\ & \M11_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \memory_R|RAM~57_regout\,
	datab => \memory_R|RAM~37_regout\,
	datac => \M11_out[1]~1_combout\,
	datad => \M11_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~284_combout\);

-- Location: LC_X11_Y10_N3
\memory_R|RAM~285\ : maxv_lcell
-- Equation(s):
-- \memory_R|RAM~285_combout\ = ((\memory_R|RAM~281_combout\ & (\memory_R|RAM~284_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \memory_R|RAM~281_combout\,
	datac => \memory_R|RAM~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \memory_R|RAM~285_combout\);

-- Location: LC_X10_Y6_N3
\PE~0\ : maxv_lcell
-- Equation(s):
-- \PE~0_combout\ = ((\IR_R|r\(6) & ((\IR_R|r\(3)) # (\IR_R|r\(4)))) # (!\IR_R|r\(6) & (\IR_R|r\(3) & \IR_R|r\(4)))) # (!\PE_R|op_addr[1]~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(6),
	datab => \IR_R|r\(3),
	datac => \IR_R|r\(4),
	datad => \PE_R|op_addr[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \PE~0_combout\);

-- Location: LC_X9_Y8_N9
\FSM_R|fsm_state_symbol~24\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol~24_combout\ = (\FSM_R|fsm_state_symbol.S3~regout\) # ((\FSM_R|fsm_state_symbol.S2B~regout\) # ((\FSM_R|fsm_state_symbol.S0A~regout\ & \IR_R|r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S0A~regout\,
	datab => \FSM_R|fsm_state_symbol.S3~regout\,
	datac => \IR_R|r\(0),
	datad => \FSM_R|fsm_state_symbol.S2B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \FSM_R|fsm_state_symbol~24_combout\);

-- Location: LC_X10_Y8_N2
\FSM_R|fsm_state_symbol.Sf\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.Sf~regout\ = DFFEAS((!\rst~combout\ & ((\FSM_R|fsm_state_symbol~24_combout\) # ((\PE~0_combout\ & \FSM_R|WideOr8~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \PE~0_combout\,
	datac => \FSM_R|fsm_state_symbol~24_combout\,
	datad => \FSM_R|WideOr8~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.Sf~regout\);

-- Location: LC_X9_Y8_N3
\FSM_R|fsm_state_symbol.Si\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.Si~regout\ = DFFEAS((((!\rst~combout\ & !\FSM_R|fsm_state_symbol.Sf~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \rst~combout\,
	datad => \FSM_R|fsm_state_symbol.Sf~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.Si~regout\);

-- Location: LC_X11_Y6_N9
\FSM_R|fsm_state_symbol.S0A\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S0A~regout\ = DFFEAS((!\rst~combout\ & (((!\FSM_R|fsm_state_symbol.Si~regout\ & \memory_R|RAM~280_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datac => \FSM_R|fsm_state_symbol.Si~regout\,
	datad => \memory_R|RAM~280_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S0A~regout\);

-- Location: LC_X9_Y8_N0
\FSM_R|fsm_state_symbol.S2A\ : maxv_lcell
-- Equation(s):
-- \FSM_R|fsm_state_symbol.S2A~regout\ = DFFEAS((\FSM_R|fsm_state_symbol.S0A~regout\ & (((!\IR_R|r\(0) & !\rst~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S0A~regout\,
	datac => \IR_R|r\(0),
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FSM_R|fsm_state_symbol.S2A~regout\);

-- Location: LC_X10_Y8_N9
\ALU_b[0]~0\ : maxv_lcell
-- Equation(s):
-- \ALU_b[0]~0_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((\IR_R|r\(0))))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & ((\FSM_R|WideOr14~combout\) # ((\T2_R|r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S2A~regout\,
	datab => \FSM_R|WideOr14~combout\,
	datac => \IR_R|r\(0),
	datad => \T2_R|r\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[0]~0_combout\);

-- Location: LC_X10_Y10_N6
\RF_R|registers[4][9]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux6~2\ = (\M1_out[1]~0_combout\ & ((\RF_R|registers[6][9]~regout\) # ((\M1_out[0]~1\)))) # (!\M1_out[1]~0_combout\ & (((H1_registers[4][9] & !\M1_out[0]~1\))))
-- \RF_R|registers[4][9]~regout\ = DFFEAS(\RF_R|Mux6~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[9]~19\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][9]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[9]~19\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux6~2\,
	regout => \RF_R|registers[4][9]~regout\);

-- Location: LC_X10_Y10_N7
\RF_R|registers[7][9]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux6~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux6~2\ & ((H1_registers[7][9]))) # (!\RF_R|Mux6~2\ & (\RF_R|registers[5][9]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux6~2\))))
-- \RF_R|registers[7][9]~regout\ = DFFEAS(\RF_R|Mux6~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[9]~19\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[5][9]~regout\,
	datac => \M3_out[9]~19\,
	datad => \RF_R|Mux6~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux6~3\,
	regout => \RF_R|registers[7][9]~regout\);

-- Location: LC_X8_Y10_N9
\RF_R|registers[5][9]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux22~1\ = (\RF_R|Mux22~0\ & ((\RF_R|registers[7][9]~regout\) # ((!\IR_R|r\(6))))) # (!\RF_R|Mux22~0\ & (((H1_registers[5][9] & \IR_R|r\(6)))))
-- \RF_R|registers[5][9]~regout\ = DFFEAS(\RF_R|Mux22~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[9]~19\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux22~0\,
	datab => \RF_R|registers[7][9]~regout\,
	datac => \M3_out[9]~19\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux22~1\,
	regout => \RF_R|registers[5][9]~regout\);

-- Location: LC_X9_Y5_N0
\RF_R|registers[0][9]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux22~2\ = (\IR_R|r\(6) & ((\RF_R|registers[1][9]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][9] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][9]~regout\ = DFFEAS(\RF_R|Mux22~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[9]~19\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][9]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[9]~19\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux22~2\,
	regout => \RF_R|registers[0][9]~regout\);

-- Location: LC_X9_Y5_N3
\RF_R|registers[1][9]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux6~0\ = (\M1_out[0]~1\ & (((H1_registers[1][9]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][9]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][9]~regout\ = DFFEAS(\RF_R|Mux6~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[9]~19\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[0][9]~regout\,
	datac => \M3_out[9]~19\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux6~0\,
	regout => \RF_R|registers[1][9]~regout\);

-- Location: LC_X9_Y9_N2
\RF_R|registers[2][9]\ : maxv_lcell
-- Equation(s):
-- \M3_out[9]~19\ = (\FSM_R|fsm_state_symbol.S3~regout\ & ((\M3_out[9]~18\ & ((\PC_R|r\(9)))) # (!\M3_out[9]~18\ & (\IR_R|r\(0))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[9]~18\))))
-- \RF_R|registers[2][9]~regout\ = DFFEAS(\M3_out[9]~19\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(0),
	datab => \FSM_R|fsm_state_symbol.S3~regout\,
	datac => \M3_out[9]~18\,
	datad => \PC_R|r\(9),
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[9]~19\,
	regout => \RF_R|registers[2][9]~regout\);

-- Location: LC_X9_Y9_N9
\RF_R|registers[3][9]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux6~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux6~0\ & ((H1_registers[3][9]))) # (!\RF_R|Mux6~0\ & (\RF_R|registers[2][9]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux6~0\))))
-- \RF_R|registers[3][9]~regout\ = DFFEAS(\RF_R|Mux6~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[9]~19\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[2][9]~regout\,
	datac => \M3_out[9]~19\,
	datad => \RF_R|Mux6~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux6~1\,
	regout => \RF_R|registers[3][9]~regout\);

-- Location: LC_X9_Y9_N5
\RF_R|Mux22~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux22~3_combout\ = (\RF_R|Mux22~2\ & (((\RF_R|registers[3][9]~regout\) # (!\IR_R|r\(1))))) # (!\RF_R|Mux22~2\ & (\RF_R|registers[2][9]~regout\ & (\IR_R|r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|Mux22~2\,
	datab => \RF_R|registers[2][9]~regout\,
	datac => \IR_R|r\(1),
	datad => \RF_R|registers[3][9]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux22~3_combout\);

-- Location: LC_X10_Y9_N3
\RF_R|Mux22~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux22~4_combout\ = ((\IR_R|r\(8) & (\RF_R|Mux22~1\)) # (!\IR_R|r\(8) & ((\RF_R|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_R|r\(8),
	datac => \RF_R|Mux22~1\,
	datad => \RF_R|Mux22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux22~4_combout\);

-- Location: LC_X11_Y9_N5
\T1_R|r[9]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[9]~COMBOUT\ = (\M1_out[2]~2_combout\ & (\RF_R|Mux6~3\)) # (!\M1_out[2]~2_combout\ & (((\RF_R|Mux6~1\))))
-- \T1_R|r\(9) = DFFEAS(\T1_R|r[9]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~45\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux6~3\,
	datac => \ALU_en|Add0~45\,
	datad => \RF_R|Mux6~1\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[9]~COMBOUT\,
	regout => \T1_R|r\(9));

-- Location: LC_X10_Y9_N7
\T2_R|r[9]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(9) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux22~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[9]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~283_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux22~4_combout\,
	datab => \FSM_R|WideOr9~0_combout\,
	datac => \memory_R|RAM~283_combout\,
	datad => \T1_R|r[9]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(9));

-- Location: LC_X13_Y8_N9
\ALU_b[9]~9\ : maxv_lcell
-- Equation(s):
-- \ALU_b[9]~9_combout\ = (\FSM_R|WideOr14~combout\ & (((\FSM_R|fsm_state_symbol.S2A~regout\ & \IR_R|r\(8))))) # (!\FSM_R|WideOr14~combout\ & (\T2_R|r\(9) & (!\FSM_R|fsm_state_symbol.S2A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|WideOr14~combout\,
	datab => \T2_R|r\(9),
	datac => \FSM_R|fsm_state_symbol.S2A~regout\,
	datad => \IR_R|r\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[9]~9_combout\);

-- Location: LC_X12_Y8_N1
\PC_R|r[9]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~45\ = \ALU_a[9]~9_combout\ $ (\ALU_b[9]~9_combout\ $ (((!\ALU_en|Add0~37\ & \ALU_en|Add0~42\) # (\ALU_en|Add0~37\ & \ALU_en|Add0~42COUT1_92\))))
-- \PC_R|r\(9) = DFFEAS(\ALU_en|Add0~45\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~47\ = CARRY((\ALU_a[9]~9_combout\ & (!\ALU_b[9]~9_combout\ & !\ALU_en|Add0~42\)) # (!\ALU_a[9]~9_combout\ & ((!\ALU_en|Add0~42\) # (!\ALU_b[9]~9_combout\))))
-- \ALU_en|Add0~47COUT1_93\ = CARRY((\ALU_a[9]~9_combout\ & (!\ALU_b[9]~9_combout\ & !\ALU_en|Add0~42COUT1_92\)) # (!\ALU_a[9]~9_combout\ & ((!\ALU_en|Add0~42COUT1_92\) # (!\ALU_b[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[9]~9_combout\,
	datab => \ALU_b[9]~9_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~37\,
	cin0 => \ALU_en|Add0~42\,
	cin1 => \ALU_en|Add0~42COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~45\,
	regout => \PC_R|r\(9),
	cout0 => \ALU_en|Add0~47\,
	cout1 => \ALU_en|Add0~47COUT1_93\);

-- Location: LC_X13_Y8_N1
\T3_R|r[9]\ : maxv_lcell
-- Equation(s):
-- \M3_out[9]~18\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\FSM_R|fsm_state_symbol.S7B~regout\)) # (!\FSM_R|fsm_state_symbol.S3~regout\ & ((\FSM_R|fsm_state_symbol.S7B~regout\ & ((\T2_R|r\(9)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (E5_r[9]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~45\,
	datad => \T2_R|r\(9),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[9]~18\,
	regout => \T3_R|r\(9));

-- Location: LC_X8_Y10_N4
\RF_R|registers[6][9]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux22~0\ = (\IR_R|r\(1) & (((H1_registers[6][9]) # (\IR_R|r\(6))))) # (!\IR_R|r\(1) & (\RF_R|registers[4][9]~regout\ & ((!\IR_R|r\(6)))))
-- \RF_R|registers[6][9]~regout\ = DFFEAS(\RF_R|Mux22~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[9]~19\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][9]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[9]~19\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux22~0\,
	regout => \RF_R|registers[6][9]~regout\);

-- Location: LC_X11_Y9_N7
\ALU_a[9]~9\ : maxv_lcell
-- Equation(s):
-- \ALU_a[9]~9_combout\ = (\FSM_R|fsm_state_symbol.S8B~regout\ & (((\T2_R|r\(9))))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T1_R|r\(9),
	datab => \T2_R|r\(9),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[9]~9_combout\);

-- Location: LC_X13_Y8_N8
\ALU_b[10]~10\ : maxv_lcell
-- Equation(s):
-- \ALU_b[10]~10_combout\ = (\FSM_R|WideOr14~combout\ & (((\FSM_R|fsm_state_symbol.S2A~regout\ & \IR_R|r\(8))))) # (!\FSM_R|WideOr14~combout\ & (\T2_R|r\(10) & (!\FSM_R|fsm_state_symbol.S2A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|WideOr14~combout\,
	datab => \T2_R|r\(10),
	datac => \FSM_R|fsm_state_symbol.S2A~regout\,
	datad => \IR_R|r\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[10]~10_combout\);

-- Location: LC_X12_Y8_N2
\PC_R|r[10]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~50\ = \ALU_a[10]~10_combout\ $ (\ALU_b[10]~10_combout\ $ ((!(!\ALU_en|Add0~37\ & \ALU_en|Add0~47\) # (\ALU_en|Add0~37\ & \ALU_en|Add0~47COUT1_93\))))
-- \PC_R|r\(10) = DFFEAS(\ALU_en|Add0~50\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~52\ = CARRY((\ALU_a[10]~10_combout\ & ((\ALU_b[10]~10_combout\) # (!\ALU_en|Add0~47\))) # (!\ALU_a[10]~10_combout\ & (\ALU_b[10]~10_combout\ & !\ALU_en|Add0~47\)))
-- \ALU_en|Add0~52COUT1_94\ = CARRY((\ALU_a[10]~10_combout\ & ((\ALU_b[10]~10_combout\) # (!\ALU_en|Add0~47COUT1_93\))) # (!\ALU_a[10]~10_combout\ & (\ALU_b[10]~10_combout\ & !\ALU_en|Add0~47COUT1_93\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[10]~10_combout\,
	datab => \ALU_b[10]~10_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~37\,
	cin0 => \ALU_en|Add0~47\,
	cin1 => \ALU_en|Add0~47COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~50\,
	regout => \PC_R|r\(10),
	cout0 => \ALU_en|Add0~52\,
	cout1 => \ALU_en|Add0~52COUT1_94\);

-- Location: LC_X12_Y5_N9
\T3_R|r[10]\ : maxv_lcell
-- Equation(s):
-- \M3_out[10]~20\ = (\FSM_R|fsm_state_symbol.S3~regout\ & ((\IR_R|r\(3)) # ((\FSM_R|fsm_state_symbol.S7B~regout\)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((E5_r[10] & !\FSM_R|fsm_state_symbol.S7B~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(3),
	datab => \FSM_R|fsm_state_symbol.S3~regout\,
	datac => \ALU_en|Add0~50\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[10]~20\,
	regout => \T3_R|r\(10));

-- Location: LC_X12_Y5_N6
\RF_R|registers[3][10]\ : maxv_lcell
-- Equation(s):
-- \M3_out[10]~21\ = (\FSM_R|fsm_state_symbol.S7B~regout\ & ((\M3_out[10]~20\ & ((\PC_R|r\(10)))) # (!\M3_out[10]~20\ & (\T2_R|r\(10))))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (((\M3_out[10]~20\))))
-- \RF_R|registers[3][10]~regout\ = DFFEAS(\M3_out[10]~21\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \T2_R|r\(10),
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \PC_R|r\(10),
	datad => \M3_out[10]~20\,
	aclr => GND,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[10]~21\,
	regout => \RF_R|registers[3][10]~regout\);

-- Location: LC_X9_Y4_N3
\RF_R|registers[4][10]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux21~2\ = (\IR_R|r\(1) & ((\RF_R|registers[6][10]~regout\) # ((\IR_R|r\(6))))) # (!\IR_R|r\(1) & (((H1_registers[4][10] & !\IR_R|r\(6)))))
-- \RF_R|registers[4][10]~regout\ = DFFEAS(\RF_R|Mux21~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[10]~21\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][10]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[10]~21\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux21~2\,
	regout => \RF_R|registers[4][10]~regout\);

-- Location: LC_X9_Y4_N8
\RF_R|registers[6][10]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux5~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & ((H1_registers[6][10]))) # (!\M1_out[1]~0_combout\ & (\RF_R|registers[4][10]~regout\))))
-- \RF_R|registers[6][10]~regout\ = DFFEAS(\RF_R|Mux5~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[10]~21\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][10]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[10]~21\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux5~2\,
	regout => \RF_R|registers[6][10]~regout\);

-- Location: LC_X13_Y4_N6
\RF_R|registers[7][10]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux21~3\ = (\IR_R|r\(6) & ((\RF_R|Mux21~2\ & ((H1_registers[7][10]))) # (!\RF_R|Mux21~2\ & (\RF_R|registers[5][10]~regout\)))) # (!\IR_R|r\(6) & (((\RF_R|Mux21~2\))))
-- \RF_R|registers[7][10]~regout\ = DFFEAS(\RF_R|Mux21~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[10]~21\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][10]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[10]~21\,
	datad => \RF_R|Mux21~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux21~3\,
	regout => \RF_R|registers[7][10]~regout\);

-- Location: LC_X13_Y4_N5
\RF_R|registers[5][10]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux5~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux5~2\ & (\RF_R|registers[7][10]~regout\)) # (!\RF_R|Mux5~2\ & ((H1_registers[5][10]))))) # (!\M1_out[0]~1\ & (((\RF_R|Mux5~2\))))
-- \RF_R|registers[5][10]~regout\ = DFFEAS(\RF_R|Mux5~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[10]~21\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][10]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[10]~21\,
	datad => \RF_R|Mux5~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux5~3\,
	regout => \RF_R|registers[5][10]~regout\);

-- Location: LC_X13_Y6_N1
\RF_R|registers[1][10]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux5~0\ = (\M1_out[0]~1\ & (((H1_registers[1][10]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][10]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][10]~regout\ = DFFEAS(\RF_R|Mux5~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[10]~21\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[0][10]~regout\,
	datac => \M3_out[10]~21\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux5~0\,
	regout => \RF_R|registers[1][10]~regout\);

-- Location: LC_X9_Y5_N6
\RF_R|registers[0][10]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux21~0\ = (\IR_R|r\(6) & ((\RF_R|registers[1][10]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][10] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][10]~regout\ = DFFEAS(\RF_R|Mux21~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[10]~21\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][10]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[10]~21\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux21~0\,
	regout => \RF_R|registers[0][10]~regout\);

-- Location: LC_X13_Y6_N2
\RF_R|registers[2][10]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux5~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux5~0\ & (\RF_R|registers[3][10]~regout\)) # (!\RF_R|Mux5~0\ & ((H1_registers[2][10]))))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux5~0\))))
-- \RF_R|registers[2][10]~regout\ = DFFEAS(\RF_R|Mux5~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, \M3_out[10]~21\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[3][10]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[10]~21\,
	datad => \RF_R|Mux5~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux5~1\,
	regout => \RF_R|registers[2][10]~regout\);

-- Location: LC_X13_Y7_N2
\RF_R|Mux21~1\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux21~1_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux21~0\ & (\RF_R|registers[3][10]~regout\)) # (!\RF_R|Mux21~0\ & ((\RF_R|registers[2][10]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux21~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|registers[3][10]~regout\,
	datab => \RF_R|registers[2][10]~regout\,
	datac => \IR_R|r\(1),
	datad => \RF_R|Mux21~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux21~1_combout\);

-- Location: LC_X13_Y7_N7
\T1_R|r[10]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[10]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux5~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux5~1\))
-- \T1_R|r\(10) = DFFEAS(\T1_R|r[10]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~50\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux5~1\,
	datac => \ALU_en|Add0~50\,
	datad => \RF_R|Mux5~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[10]~COMBOUT\,
	regout => \T1_R|r\(10));

-- Location: LC_X13_Y7_N8
\M6_out[10]~3\ : maxv_lcell
-- Equation(s):
-- \M6_out[10]~3_combout\ = (\FSM_R|WideOr9~0_combout\ & (!\IR_R|r\(8) & (\RF_R|Mux21~1_combout\))) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[10]~COMBOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datab => \RF_R|Mux21~1_combout\,
	datac => \FSM_R|WideOr9~0_combout\,
	datad => \T1_R|r[10]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6_out[10]~3_combout\);

-- Location: LC_X12_Y7_N7
\T2_R|r[10]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(10) = DFFEAS((!\FSM_R|fsm_state_symbol.S7A~regout\ & ((\M6_out[10]~3_combout\) # ((\RF_R|Mux21~3\ & \M6_out[5]~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7A~regout\,
	datab => \RF_R|Mux21~3\,
	datac => \M6_out[5]~1_combout\,
	datad => \M6_out[10]~3_combout\,
	aclr => GND,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(10));

-- Location: LC_X13_Y7_N3
\ALU_a[10]~10\ : maxv_lcell
-- Equation(s):
-- \ALU_a[10]~10_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & (\T2_R|r\(10))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T1_R|r\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \T2_R|r\(10),
	datac => \T1_R|r\(10),
	datad => \FSM_R|fsm_state_symbol.S8B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[10]~10_combout\);

-- Location: LC_X12_Y5_N5
\RF_R|registers[3][11]\ : maxv_lcell
-- Equation(s):
-- \M3_out[11]~23\ = (\FSM_R|fsm_state_symbol.S3~regout\ & ((\M3_out[11]~22\ & ((\PC_R|r\(11)))) # (!\M3_out[11]~22\ & (\IR_R|r\(4))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[11]~22\))))
-- \RF_R|registers[3][11]~regout\ = DFFEAS(\M3_out[11]~23\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(4),
	datab => \FSM_R|fsm_state_symbol.S3~regout\,
	datac => \PC_R|r\(11),
	datad => \M3_out[11]~22\,
	aclr => GND,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[11]~23\,
	regout => \RF_R|registers[3][11]~regout\);

-- Location: LC_X13_Y6_N8
\RF_R|registers[1][11]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux4~0\ = (\M1_out[0]~1\ & (((H1_registers[1][11]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][11]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][11]~regout\ = DFFEAS(\RF_R|Mux4~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[11]~23\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[0][11]~regout\,
	datac => \M3_out[11]~23\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux4~0\,
	regout => \RF_R|registers[1][11]~regout\);

-- Location: LC_X14_Y5_N4
\RF_R|registers[0][11]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux20~0\ = (\IR_R|r\(6) & ((\RF_R|registers[1][11]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][11] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][11]~regout\ = DFFEAS(\RF_R|Mux20~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[11]~23\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[1][11]~regout\,
	datac => \M3_out[11]~23\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux20~0\,
	regout => \RF_R|registers[0][11]~regout\);

-- Location: LC_X13_Y6_N9
\RF_R|registers[2][11]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux4~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux4~0\ & (\RF_R|registers[3][11]~regout\)) # (!\RF_R|Mux4~0\ & ((H1_registers[2][11]))))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux4~0\))))
-- \RF_R|registers[2][11]~regout\ = DFFEAS(\RF_R|Mux4~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, \M3_out[11]~23\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[3][11]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[11]~23\,
	datad => \RF_R|Mux4~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux4~1\,
	regout => \RF_R|registers[2][11]~regout\);

-- Location: LC_X10_Y4_N8
\RF_R|registers[6][11]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux4~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & ((H1_registers[6][11]))) # (!\M1_out[1]~0_combout\ & (\RF_R|registers[4][11]~regout\))))
-- \RF_R|registers[6][11]~regout\ = DFFEAS(\RF_R|Mux4~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[11]~23\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][11]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[11]~23\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux4~2\,
	regout => \RF_R|registers[6][11]~regout\);

-- Location: LC_X10_Y4_N5
\RF_R|registers[5][11]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux4~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux4~2\ & (\RF_R|registers[7][11]~regout\)) # (!\RF_R|Mux4~2\ & ((H1_registers[5][11]))))) # (!\M1_out[0]~1\ & (((\RF_R|Mux4~2\))))
-- \RF_R|registers[5][11]~regout\ = DFFEAS(\RF_R|Mux4~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[11]~23\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[7][11]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[11]~23\,
	datad => \RF_R|Mux4~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux4~3\,
	regout => \RF_R|registers[5][11]~regout\);

-- Location: LC_X11_Y4_N3
\RF_R|registers[7][11]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux20~3\ = (\IR_R|r\(6) & ((\RF_R|Mux20~2\ & (H1_registers[7][11])) # (!\RF_R|Mux20~2\ & ((\RF_R|registers[5][11]~regout\))))) # (!\IR_R|r\(6) & (\RF_R|Mux20~2\))
-- \RF_R|registers[7][11]~regout\ = DFFEAS(\RF_R|Mux20~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[11]~23\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|Mux20~2\,
	datac => \M3_out[11]~23\,
	datad => \RF_R|registers[5][11]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux20~3\,
	regout => \RF_R|registers[7][11]~regout\);

-- Location: LC_X11_Y6_N0
\T1_R|r[11]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[11]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux4~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux4~1\))
-- \T1_R|r\(11) = DFFEAS(\T1_R|r[11]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~55\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux4~1\,
	datac => \ALU_en|Add0~55\,
	datad => \RF_R|Mux4~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[11]~COMBOUT\,
	regout => \T1_R|r\(11));

-- Location: LC_X11_Y6_N2
\ALU_a[11]~11\ : maxv_lcell
-- Equation(s):
-- \ALU_a[11]~11_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(11)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T1_R|r\(11),
	datad => \T2_R|r\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[11]~11_combout\);

-- Location: LC_X12_Y8_N3
\PC_R|r[11]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~55\ = \ALU_b[11]~11_combout\ $ (\ALU_a[11]~11_combout\ $ (((!\ALU_en|Add0~37\ & \ALU_en|Add0~52\) # (\ALU_en|Add0~37\ & \ALU_en|Add0~52COUT1_94\))))
-- \PC_R|r\(11) = DFFEAS(\ALU_en|Add0~55\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~57\ = CARRY((\ALU_b[11]~11_combout\ & (!\ALU_a[11]~11_combout\ & !\ALU_en|Add0~52\)) # (!\ALU_b[11]~11_combout\ & ((!\ALU_en|Add0~52\) # (!\ALU_a[11]~11_combout\))))
-- \ALU_en|Add0~57COUT1_95\ = CARRY((\ALU_b[11]~11_combout\ & (!\ALU_a[11]~11_combout\ & !\ALU_en|Add0~52COUT1_94\)) # (!\ALU_b[11]~11_combout\ & ((!\ALU_en|Add0~52COUT1_94\) # (!\ALU_a[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_b[11]~11_combout\,
	datab => \ALU_a[11]~11_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~37\,
	cin0 => \ALU_en|Add0~52\,
	cin1 => \ALU_en|Add0~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~55\,
	regout => \PC_R|r\(11),
	cout0 => \ALU_en|Add0~57\,
	cout1 => \ALU_en|Add0~57COUT1_95\);

-- Location: LC_X12_Y5_N8
\T3_R|r[11]\ : maxv_lcell
-- Equation(s):
-- \M3_out[11]~22\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (((\FSM_R|fsm_state_symbol.S7B~regout\)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & ((\FSM_R|fsm_state_symbol.S7B~regout\ & (\T2_R|r\(11))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & ((E5_r[11])))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \T2_R|r\(11),
	datac => \ALU_en|Add0~55\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[11]~22\,
	regout => \T3_R|r\(11));

-- Location: LC_X11_Y4_N1
\RF_R|registers[4][11]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux20~2\ = (\IR_R|r\(1) & ((\RF_R|registers[6][11]~regout\) # ((\IR_R|r\(6))))) # (!\IR_R|r\(1) & (((H1_registers[4][11] & !\IR_R|r\(6)))))
-- \RF_R|registers[4][11]~regout\ = DFFEAS(\RF_R|Mux20~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[11]~23\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][11]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[11]~23\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux20~2\,
	regout => \RF_R|registers[4][11]~regout\);

-- Location: LC_X13_Y6_N3
\RF_R|Mux20~1\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux20~1_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux20~0\ & (\RF_R|registers[3][11]~regout\)) # (!\RF_R|Mux20~0\ & ((\RF_R|registers[2][11]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux20~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|registers[3][11]~regout\,
	datab => \RF_R|registers[2][11]~regout\,
	datac => \IR_R|r\(1),
	datad => \RF_R|Mux20~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux20~1_combout\);

-- Location: LC_X12_Y7_N8
\M6_out[11]~5\ : maxv_lcell
-- Equation(s):
-- \M6_out[11]~5_combout\ = (\FSM_R|WideOr9~0_combout\ & (!\IR_R|r\(8) & (\RF_R|Mux20~1_combout\))) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[11]~COMBOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|WideOr9~0_combout\,
	datab => \IR_R|r\(8),
	datac => \RF_R|Mux20~1_combout\,
	datad => \T1_R|r[11]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6_out[11]~5_combout\);

-- Location: LC_X12_Y7_N9
\T2_R|r[11]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(11) = DFFEAS((!\FSM_R|fsm_state_symbol.S7A~regout\ & ((\M6_out[11]~5_combout\) # ((\RF_R|Mux20~3\ & \M6_out[5]~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7A~regout\,
	datab => \RF_R|Mux20~3\,
	datac => \M6_out[5]~1_combout\,
	datad => \M6_out[11]~5_combout\,
	aclr => GND,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(11));

-- Location: LC_X13_Y8_N7
\ALU_b[11]~11\ : maxv_lcell
-- Equation(s):
-- \ALU_b[11]~11_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((\IR_R|r\(8) & \FSM_R|WideOr14~combout\)))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (\T2_R|r\(11) & ((!\FSM_R|WideOr14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c00a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T2_R|r\(11),
	datab => \IR_R|r\(8),
	datac => \FSM_R|fsm_state_symbol.S2A~regout\,
	datad => \FSM_R|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[11]~11_combout\);

-- Location: LC_X13_Y9_N8
\RF_R|registers[2][12]\ : maxv_lcell
-- Equation(s):
-- \M3_out[12]~25\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\PC_R|r\(12) & ((\FSM_R|fsm_state_symbol.S7B~regout\)))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[12]~24\))))
-- \RF_R|registers[2][12]~regout\ = DFFEAS(\M3_out[12]~25\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC_R|r\(12),
	datab => \FSM_R|fsm_state_symbol.S3~regout\,
	datac => \M3_out[12]~24\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[12]~25\,
	regout => \RF_R|registers[2][12]~regout\);

-- Location: LC_X13_Y5_N4
\RF_R|registers[1][12]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux3~0\ = (\M1_out[0]~1\ & (((H1_registers[1][12]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][12]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][12]~regout\ = DFFEAS(\RF_R|Mux3~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[12]~25\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[0][12]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[12]~25\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux3~0\,
	regout => \RF_R|registers[1][12]~regout\);

-- Location: LC_X8_Y5_N8
\RF_R|registers[0][12]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux19~2\ = (\IR_R|r\(1) & (((\IR_R|r\(6))))) # (!\IR_R|r\(1) & ((\IR_R|r\(6) & (\RF_R|registers[1][12]~regout\)) # (!\IR_R|r\(6) & ((H1_registers[0][12])))))
-- \RF_R|registers[0][12]~regout\ = DFFEAS(\RF_R|Mux19~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[12]~25\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[1][12]~regout\,
	datac => \M3_out[12]~25\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux19~2\,
	regout => \RF_R|registers[0][12]~regout\);

-- Location: LC_X12_Y5_N4
\RF_R|registers[3][12]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux3~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux3~0\ & ((H1_registers[3][12]))) # (!\RF_R|Mux3~0\ & (\RF_R|registers[2][12]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux3~0\))))
-- \RF_R|registers[3][12]~regout\ = DFFEAS(\RF_R|Mux3~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[12]~25\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[2][12]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[12]~25\,
	datad => \RF_R|Mux3~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux3~1\,
	regout => \RF_R|registers[3][12]~regout\);

-- Location: LC_X8_Y5_N7
\RF_R|Mux19~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux19~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux19~2\ & ((\RF_R|registers[3][12]~regout\))) # (!\RF_R|Mux19~2\ & (\RF_R|registers[2][12]~regout\)))) # (!\IR_R|r\(1) & (((\RF_R|Mux19~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[2][12]~regout\,
	datac => \RF_R|registers[3][12]~regout\,
	datad => \RF_R|Mux19~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux19~3_combout\);

-- Location: LC_X7_Y6_N6
\RF_R|registers[6][12]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux19~0\ = (\IR_R|r\(6) & (((\IR_R|r\(1))))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & ((H1_registers[6][12]))) # (!\IR_R|r\(1) & (\RF_R|registers[4][12]~regout\))))
-- \RF_R|registers[6][12]~regout\ = DFFEAS(\RF_R|Mux19~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[12]~25\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][12]~regout\,
	datab => \IR_R|r\(6),
	datac => \M3_out[12]~25\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux19~0\,
	regout => \RF_R|registers[6][12]~regout\);

-- Location: LC_X7_Y6_N5
\RF_R|registers[4][12]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux3~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & (\RF_R|registers[6][12]~regout\)) # (!\M1_out[1]~0_combout\ & ((H1_registers[4][12])))))
-- \RF_R|registers[4][12]~regout\ = DFFEAS(\RF_R|Mux3~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[12]~25\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][12]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[12]~25\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux3~2\,
	regout => \RF_R|registers[4][12]~regout\);

-- Location: LC_X8_Y5_N2
\RF_R|registers[5][12]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux19~1\ = (\IR_R|r\(6) & ((\RF_R|Mux19~0\ & (\RF_R|registers[7][12]~regout\)) # (!\RF_R|Mux19~0\ & ((H1_registers[5][12]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux19~0\))))
-- \RF_R|registers[5][12]~regout\ = DFFEAS(\RF_R|Mux19~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[12]~25\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[7][12]~regout\,
	datac => \M3_out[12]~25\,
	datad => \RF_R|Mux19~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux19~1\,
	regout => \RF_R|registers[5][12]~regout\);

-- Location: LC_X7_Y9_N1
\RF_R|registers[7][12]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux3~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux3~2\ & ((H1_registers[7][12]))) # (!\RF_R|Mux3~2\ & (\RF_R|registers[5][12]~regout\)))) # (!\M1_out[0]~1\ & (((\RF_R|Mux3~2\))))
-- \RF_R|registers[7][12]~regout\ = DFFEAS(\RF_R|Mux3~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[12]~25\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][12]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[12]~25\,
	datad => \RF_R|Mux3~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux3~3\,
	regout => \RF_R|registers[7][12]~regout\);

-- Location: LC_X8_Y5_N4
\RF_R|Mux19~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux19~4_combout\ = (\IR_R|r\(8) & (((\RF_R|Mux19~1\)))) # (!\IR_R|r\(8) & (((\RF_R|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datac => \RF_R|Mux19~3_combout\,
	datad => \RF_R|Mux19~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux19~4_combout\);

-- Location: LC_X11_Y9_N0
\ALU_b[12]~12\ : maxv_lcell
-- Equation(s):
-- \ALU_b[12]~12_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((\FSM_R|WideOr14~combout\ & \IR_R|r\(8))))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (\T2_R|r\(12) & (!\FSM_R|WideOr14~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T2_R|r\(12),
	datab => \FSM_R|fsm_state_symbol.S2A~regout\,
	datac => \FSM_R|WideOr14~combout\,
	datad => \IR_R|r\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[12]~12_combout\);

-- Location: LC_X12_Y8_N4
\PC_R|r[12]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~60\ = \ALU_a[12]~12_combout\ $ (\ALU_b[12]~12_combout\ $ ((!(!\ALU_en|Add0~37\ & \ALU_en|Add0~57\) # (\ALU_en|Add0~37\ & \ALU_en|Add0~57COUT1_95\))))
-- \PC_R|r\(12) = DFFEAS(\ALU_en|Add0~60\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~62\ = CARRY((\ALU_a[12]~12_combout\ & ((\ALU_b[12]~12_combout\) # (!\ALU_en|Add0~57COUT1_95\))) # (!\ALU_a[12]~12_combout\ & (\ALU_b[12]~12_combout\ & !\ALU_en|Add0~57COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[12]~12_combout\,
	datab => \ALU_b[12]~12_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~37\,
	cin0 => \ALU_en|Add0~57\,
	cin1 => \ALU_en|Add0~57COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~60\,
	regout => \PC_R|r\(12),
	cout => \ALU_en|Add0~62\);

-- Location: LC_X11_Y9_N4
\T1_R|r[12]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[12]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux3~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux3~1\))
-- \T1_R|r\(12) = DFFEAS(\T1_R|r[12]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~60\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux3~1\,
	datac => \ALU_en|Add0~60\,
	datad => \RF_R|Mux3~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[12]~COMBOUT\,
	regout => \T1_R|r\(12));

-- Location: LC_X10_Y9_N9
\T2_R|r[12]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(12) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux19~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[12]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~280_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux19~4_combout\,
	datab => \FSM_R|WideOr9~0_combout\,
	datac => \memory_R|RAM~280_combout\,
	datad => \T1_R|r[12]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(12));

-- Location: LC_X13_Y9_N4
\T3_R|r[12]\ : maxv_lcell
-- Equation(s):
-- \M3_out[12]~24\ = ((\FSM_R|fsm_state_symbol.S7B~regout\ & (\T2_R|r\(12))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & ((E5_r[12]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \T2_R|r\(12),
	datac => \ALU_en|Add0~60\,
	datad => \FSM_R|fsm_state_symbol.S7B~regout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[12]~24\,
	regout => \T3_R|r\(12));

-- Location: LC_X11_Y9_N6
\ALU_a[12]~12\ : maxv_lcell
-- Equation(s):
-- \ALU_a[12]~12_combout\ = (\FSM_R|fsm_state_symbol.S8B~regout\ & (((\T2_R|r\(12))))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T1_R|r\(12),
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T2_R|r\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[12]~12_combout\);

-- Location: LC_X7_Y7_N8
\RF_R|registers[6][13]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux18~0\ = (\IR_R|r\(6) & (((\IR_R|r\(1))))) # (!\IR_R|r\(6) & ((\IR_R|r\(1) & ((H1_registers[6][13]))) # (!\IR_R|r\(1) & (\RF_R|registers[4][13]~regout\))))
-- \RF_R|registers[6][13]~regout\ = DFFEAS(\RF_R|Mux18~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[13]~27\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[4][13]~regout\,
	datac => \M3_out[13]~27\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux18~0\,
	regout => \RF_R|registers[6][13]~regout\);

-- Location: LC_X7_Y7_N9
\RF_R|registers[5][13]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux18~1\ = (\IR_R|r\(6) & ((\RF_R|Mux18~0\ & (\RF_R|registers[7][13]~regout\)) # (!\RF_R|Mux18~0\ & ((H1_registers[5][13]))))) # (!\IR_R|r\(6) & (((\RF_R|Mux18~0\))))
-- \RF_R|registers[5][13]~regout\ = DFFEAS(\RF_R|Mux18~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[13]~27\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[7][13]~regout\,
	datac => \M3_out[13]~27\,
	datad => \RF_R|Mux18~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux18~1\,
	regout => \RF_R|registers[5][13]~regout\);

-- Location: LC_X13_Y9_N5
\RF_R|registers[2][13]\ : maxv_lcell
-- Equation(s):
-- \M3_out[13]~27\ = (\FSM_R|fsm_state_symbol.S7B~regout\ & ((\M3_out[13]~26\ & (\PC_R|r\(13))) # (!\M3_out[13]~26\ & ((\T2_R|r\(13)))))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (((\M3_out[13]~26\))))
-- \RF_R|registers[2][13]~regout\ = DFFEAS(\M3_out[13]~27\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC_R|r\(13),
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \M3_out[13]~26\,
	datad => \T2_R|r\(13),
	aclr => GND,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[13]~27\,
	regout => \RF_R|registers[2][13]~regout\);

-- Location: LC_X12_Y6_N1
\RF_R|registers[1][13]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux2~0\ = (\M1_out[0]~1\ & ((\M1_out[1]~0_combout\) # ((H1_registers[1][13])))) # (!\M1_out[0]~1\ & (!\M1_out[1]~0_combout\ & ((\RF_R|registers[0][13]~regout\))))
-- \RF_R|registers[1][13]~regout\ = DFFEAS(\RF_R|Mux2~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[13]~27\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[13]~27\,
	datad => \RF_R|registers[0][13]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux2~0\,
	regout => \RF_R|registers[1][13]~regout\);

-- Location: LC_X11_Y5_N0
\RF_R|registers[0][13]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux18~2\ = (\IR_R|r\(1) & (((\IR_R|r\(6))))) # (!\IR_R|r\(1) & ((\IR_R|r\(6) & (\RF_R|registers[1][13]~regout\)) # (!\IR_R|r\(6) & ((H1_registers[0][13])))))
-- \RF_R|registers[0][13]~regout\ = DFFEAS(\RF_R|Mux18~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[13]~27\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[1][13]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[13]~27\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux18~2\,
	regout => \RF_R|registers[0][13]~regout\);

-- Location: LC_X12_Y6_N2
\RF_R|registers[3][13]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux2~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux2~0\ & ((H1_registers[3][13]))) # (!\RF_R|Mux2~0\ & (\RF_R|registers[2][13]~regout\)))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux2~0\))))
-- \RF_R|registers[3][13]~regout\ = DFFEAS(\RF_R|Mux2~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, \M3_out[13]~27\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[2][13]~regout\,
	datac => \M3_out[13]~27\,
	datad => \RF_R|Mux2~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux2~1\,
	regout => \RF_R|registers[3][13]~regout\);

-- Location: LC_X11_Y5_N1
\RF_R|Mux18~3\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux18~3_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux18~2\ & (\RF_R|registers[3][13]~regout\)) # (!\RF_R|Mux18~2\ & ((\RF_R|registers[2][13]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux18~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[3][13]~regout\,
	datac => \RF_R|Mux18~2\,
	datad => \RF_R|registers[2][13]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux18~3_combout\);

-- Location: LC_X9_Y7_N5
\RF_R|Mux18~4\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux18~4_combout\ = ((\IR_R|r\(8) & (\RF_R|Mux18~1\)) # (!\IR_R|r\(8) & ((\RF_R|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR_R|r\(8),
	datac => \RF_R|Mux18~1\,
	datad => \RF_R|Mux18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux18~4_combout\);

-- Location: LC_X11_Y7_N4
\T1_R|r[13]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[13]~COMBOUT\ = (\M1_out[2]~2_combout\ & (\RF_R|Mux2~3\)) # (!\M1_out[2]~2_combout\ & (((\RF_R|Mux2~1\))))
-- \T1_R|r\(13) = DFFEAS(\T1_R|r[13]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~65\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux2~3\,
	datac => \ALU_en|Add0~65\,
	datad => \RF_R|Mux2~1\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[13]~COMBOUT\,
	regout => \T1_R|r\(13));

-- Location: LC_X10_Y7_N3
\T2_R|r[13]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(13) = DFFEAS((\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux18~4_combout\)) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[13]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, \memory_R|RAM~280_combout\, , , 
-- \FSM_R|fsm_state_symbol.S7A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux18~4_combout\,
	datab => \FSM_R|WideOr9~0_combout\,
	datac => \memory_R|RAM~280_combout\,
	datad => \T1_R|r[13]~COMBOUT\,
	aclr => GND,
	sload => \FSM_R|fsm_state_symbol.S7A~regout\,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(13));

-- Location: LC_X10_Y8_N3
\ALU_b[13]~13\ : maxv_lcell
-- Equation(s):
-- \ALU_b[13]~13_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (\IR_R|r\(8) & (\FSM_R|WideOr14~combout\))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (((!\FSM_R|WideOr14~combout\ & \T2_R|r\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S2A~regout\,
	datab => \IR_R|r\(8),
	datac => \FSM_R|WideOr14~combout\,
	datad => \T2_R|r\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[13]~13_combout\);

-- Location: LC_X12_Y8_N5
\PC_R|r[13]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~65\ = \ALU_a[13]~13_combout\ $ (\ALU_b[13]~13_combout\ $ ((\ALU_en|Add0~62\)))
-- \PC_R|r\(13) = DFFEAS(\ALU_en|Add0~65\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~67\ = CARRY((\ALU_a[13]~13_combout\ & (!\ALU_b[13]~13_combout\ & !\ALU_en|Add0~62\)) # (!\ALU_a[13]~13_combout\ & ((!\ALU_en|Add0~62\) # (!\ALU_b[13]~13_combout\))))
-- \ALU_en|Add0~67COUT1_96\ = CARRY((\ALU_a[13]~13_combout\ & (!\ALU_b[13]~13_combout\ & !\ALU_en|Add0~62\)) # (!\ALU_a[13]~13_combout\ & ((!\ALU_en|Add0~62\) # (!\ALU_b[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[13]~13_combout\,
	datab => \ALU_b[13]~13_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~65\,
	regout => \PC_R|r\(13),
	cout0 => \ALU_en|Add0~67\,
	cout1 => \ALU_en|Add0~67COUT1_96\);

-- Location: LC_X13_Y9_N9
\T3_R|r[13]\ : maxv_lcell
-- Equation(s):
-- \M3_out[13]~26\ = (\FSM_R|fsm_state_symbol.S7B~regout\ & (((\FSM_R|fsm_state_symbol.S3~regout\)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & ((\FSM_R|fsm_state_symbol.S3~regout\ & (\IR_R|r\(6))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & ((E5_r[13])))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7B~regout\,
	datab => \IR_R|r\(6),
	datac => \ALU_en|Add0~65\,
	datad => \FSM_R|fsm_state_symbol.S3~regout\,
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[13]~26\,
	regout => \T3_R|r\(13));

-- Location: LC_X9_Y7_N7
\RF_R|registers[4][13]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux2~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & (\RF_R|registers[6][13]~regout\)) # (!\M1_out[1]~0_combout\ & ((H1_registers[4][13])))))
-- \RF_R|registers[4][13]~regout\ = DFFEAS(\RF_R|Mux2~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[13]~27\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][13]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[13]~27\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux2~2\,
	regout => \RF_R|registers[4][13]~regout\);

-- Location: LC_X9_Y7_N3
\RF_R|registers[7][13]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux2~3\ = (\RF_R|Mux2~2\ & (((H1_registers[7][13]) # (!\M1_out[0]~1\)))) # (!\RF_R|Mux2~2\ & (\RF_R|registers[5][13]~regout\ & ((\M1_out[0]~1\))))
-- \RF_R|registers[7][13]~regout\ = DFFEAS(\RF_R|Mux2~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[13]~27\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][13]~regout\,
	datab => \RF_R|Mux2~2\,
	datac => \M3_out[13]~27\,
	datad => \M1_out[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux2~3\,
	regout => \RF_R|registers[7][13]~regout\);

-- Location: LC_X13_Y7_N4
\ALU_a[13]~13\ : maxv_lcell
-- Equation(s):
-- \ALU_a[13]~13_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(13)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T1_R|r\(13),
	datac => \T2_R|r\(13),
	datad => \FSM_R|fsm_state_symbol.S8B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[13]~13_combout\);

-- Location: LC_X9_Y9_N0
\RF_R|registers[3][14]\ : maxv_lcell
-- Equation(s):
-- \M3_out[14]~29\ = (\FSM_R|fsm_state_symbol.S3~regout\ & ((\M3_out[14]~28\ & (\PC_R|r\(14))) # (!\M3_out[14]~28\ & ((\IR_R|r\(1)))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (((\M3_out[14]~28\))))
-- \RF_R|registers[3][14]~regout\ = DFFEAS(\M3_out[14]~29\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \PC_R|r\(14),
	datac => \IR_R|r\(1),
	datad => \M3_out[14]~28\,
	aclr => GND,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[14]~29\,
	regout => \RF_R|registers[3][14]~regout\);

-- Location: LC_X9_Y6_N2
\RF_R|registers[1][14]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux1~0\ = (\M1_out[0]~1\ & ((\M1_out[1]~0_combout\) # ((H1_registers[1][14])))) # (!\M1_out[0]~1\ & (!\M1_out[1]~0_combout\ & ((\RF_R|registers[0][14]~regout\))))
-- \RF_R|registers[1][14]~regout\ = DFFEAS(\RF_R|Mux1~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[14]~29\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[14]~29\,
	datad => \RF_R|registers[0][14]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux1~0\,
	regout => \RF_R|registers[1][14]~regout\);

-- Location: LC_X9_Y5_N2
\RF_R|registers[0][14]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux17~0\ = (\IR_R|r\(1) & (((\IR_R|r\(6))))) # (!\IR_R|r\(1) & ((\IR_R|r\(6) & (\RF_R|registers[1][14]~regout\)) # (!\IR_R|r\(6) & ((H1_registers[0][14])))))
-- \RF_R|registers[0][14]~regout\ = DFFEAS(\RF_R|Mux17~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[14]~29\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[1][14]~regout\,
	datac => \M3_out[14]~29\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux17~0\,
	regout => \RF_R|registers[0][14]~regout\);

-- Location: LC_X9_Y6_N0
\RF_R|registers[2][14]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux1~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux1~0\ & (\RF_R|registers[3][14]~regout\)) # (!\RF_R|Mux1~0\ & ((H1_registers[2][14]))))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux1~0\))))
-- \RF_R|registers[2][14]~regout\ = DFFEAS(\RF_R|Mux1~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, \M3_out[14]~29\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[1]~0_combout\,
	datab => \RF_R|registers[3][14]~regout\,
	datac => \M3_out[14]~29\,
	datad => \RF_R|Mux1~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux1~1\,
	regout => \RF_R|registers[2][14]~regout\);

-- Location: LC_X9_Y4_N6
\RF_R|registers[6][14]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux1~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & ((H1_registers[6][14]))) # (!\M1_out[1]~0_combout\ & (\RF_R|registers[4][14]~regout\))))
-- \RF_R|registers[6][14]~regout\ = DFFEAS(\RF_R|Mux1~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[14]~29\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][14]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[14]~29\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux1~2\,
	regout => \RF_R|registers[6][14]~regout\);

-- Location: LC_X8_Y7_N4
\RF_R|registers[5][14]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux1~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux1~2\ & (\RF_R|registers[7][14]~regout\)) # (!\RF_R|Mux1~2\ & ((H1_registers[5][14]))))) # (!\M1_out[0]~1\ & (((\RF_R|Mux1~2\))))
-- \RF_R|registers[5][14]~regout\ = DFFEAS(\RF_R|Mux1~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[14]~29\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[7][14]~regout\,
	datac => \M3_out[14]~29\,
	datad => \RF_R|Mux1~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux1~3\,
	regout => \RF_R|registers[5][14]~regout\);

-- Location: LC_X8_Y7_N9
\RF_R|registers[7][14]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux17~3\ = (\IR_R|r\(6) & ((\RF_R|Mux17~2\ & (H1_registers[7][14])) # (!\RF_R|Mux17~2\ & ((\RF_R|registers[5][14]~regout\))))) # (!\IR_R|r\(6) & (\RF_R|Mux17~2\))
-- \RF_R|registers[7][14]~regout\ = DFFEAS(\RF_R|Mux17~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[14]~29\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|Mux17~2\,
	datac => \M3_out[14]~29\,
	datad => \RF_R|registers[5][14]~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux17~3\,
	regout => \RF_R|registers[7][14]~regout\);

-- Location: LC_X11_Y7_N7
\T1_R|r[14]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[14]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux1~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux1~1\))
-- \T1_R|r\(14) = DFFEAS(\T1_R|r[14]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~70\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[2]~2_combout\,
	datab => \RF_R|Mux1~1\,
	datac => \ALU_en|Add0~70\,
	datad => \RF_R|Mux1~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[14]~COMBOUT\,
	regout => \T1_R|r\(14));

-- Location: LC_X12_Y7_N5
\ALU_a[14]~14\ : maxv_lcell
-- Equation(s):
-- \ALU_a[14]~14_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(14)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \T1_R|r\(14),
	datac => \FSM_R|fsm_state_symbol.S8B~regout\,
	datad => \T2_R|r\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[14]~14_combout\);

-- Location: LC_X12_Y8_N6
\PC_R|r[14]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~70\ = \ALU_b[14]~14_combout\ $ (\ALU_a[14]~14_combout\ $ ((!(!\ALU_en|Add0~62\ & \ALU_en|Add0~67\) # (\ALU_en|Add0~62\ & \ALU_en|Add0~67COUT1_96\))))
-- \PC_R|r\(14) = DFFEAS(\ALU_en|Add0~70\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~72\ = CARRY((\ALU_b[14]~14_combout\ & ((\ALU_a[14]~14_combout\) # (!\ALU_en|Add0~67\))) # (!\ALU_b[14]~14_combout\ & (\ALU_a[14]~14_combout\ & !\ALU_en|Add0~67\)))
-- \ALU_en|Add0~72COUT1_97\ = CARRY((\ALU_b[14]~14_combout\ & ((\ALU_a[14]~14_combout\) # (!\ALU_en|Add0~67COUT1_96\))) # (!\ALU_b[14]~14_combout\ & (\ALU_a[14]~14_combout\ & !\ALU_en|Add0~67COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_b[14]~14_combout\,
	datab => \ALU_a[14]~14_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~62\,
	cin0 => \ALU_en|Add0~67\,
	cin1 => \ALU_en|Add0~67COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~70\,
	regout => \PC_R|r\(14),
	cout0 => \ALU_en|Add0~72\,
	cout1 => \ALU_en|Add0~72COUT1_97\);

-- Location: LC_X13_Y8_N2
\T3_R|r[14]\ : maxv_lcell
-- Equation(s):
-- \M3_out[14]~28\ = (\FSM_R|fsm_state_symbol.S3~regout\ & (\FSM_R|fsm_state_symbol.S7B~regout\)) # (!\FSM_R|fsm_state_symbol.S3~regout\ & ((\FSM_R|fsm_state_symbol.S7B~regout\ & ((\T2_R|r\(14)))) # (!\FSM_R|fsm_state_symbol.S7B~regout\ & (E5_r[14]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~70\,
	datad => \T2_R|r\(14),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[14]~28\,
	regout => \T3_R|r\(14));

-- Location: LC_X9_Y4_N9
\RF_R|registers[4][14]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux17~2\ = (\IR_R|r\(1) & ((\RF_R|registers[6][14]~regout\) # ((\IR_R|r\(6))))) # (!\IR_R|r\(1) & (((H1_registers[4][14] & !\IR_R|r\(6)))))
-- \RF_R|registers[4][14]~regout\ = DFFEAS(\RF_R|Mux17~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[14]~29\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][14]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[14]~29\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux17~2\,
	regout => \RF_R|registers[4][14]~regout\);

-- Location: LC_X9_Y8_N5
\RF_R|Mux17~1\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux17~1_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux17~0\ & ((\RF_R|registers[3][14]~regout\))) # (!\RF_R|Mux17~0\ & (\RF_R|registers[2][14]~regout\)))) # (!\IR_R|r\(1) & (((\RF_R|Mux17~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[2][14]~regout\,
	datac => \RF_R|registers[3][14]~regout\,
	datad => \RF_R|Mux17~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux17~1_combout\);

-- Location: LC_X12_Y7_N2
\M6_out[14]~7\ : maxv_lcell
-- Equation(s):
-- \M6_out[14]~7_combout\ = (\FSM_R|WideOr9~0_combout\ & (\RF_R|Mux17~1_combout\ & (!\IR_R|r\(8)))) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[14]~COMBOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RF_R|Mux17~1_combout\,
	datab => \IR_R|r\(8),
	datac => \FSM_R|WideOr9~0_combout\,
	datad => \T1_R|r[14]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6_out[14]~7_combout\);

-- Location: LC_X12_Y7_N3
\T2_R|r[14]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(14) = DFFEAS((!\FSM_R|fsm_state_symbol.S7A~regout\ & ((\M6_out[14]~7_combout\) # ((\RF_R|Mux17~3\ & \M6_out[5]~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7A~regout\,
	datab => \RF_R|Mux17~3\,
	datac => \M6_out[5]~1_combout\,
	datad => \M6_out[14]~7_combout\,
	aclr => GND,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(14));

-- Location: LC_X9_Y8_N4
\ALU_b[14]~14\ : maxv_lcell
-- Equation(s):
-- \ALU_b[14]~14_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (\IR_R|r\(8) & (\FSM_R|WideOr14~combout\))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (((!\FSM_R|WideOr14~combout\ & \T2_R|r\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8380",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datab => \FSM_R|fsm_state_symbol.S2A~regout\,
	datac => \FSM_R|WideOr14~combout\,
	datad => \T2_R|r\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[14]~14_combout\);

-- Location: LC_X13_Y7_N5
\ALU_b[15]~15\ : maxv_lcell
-- Equation(s):
-- \ALU_b[15]~15_combout\ = (\FSM_R|fsm_state_symbol.S2A~regout\ & (((\IR_R|r\(8) & \FSM_R|WideOr14~combout\)))) # (!\FSM_R|fsm_state_symbol.S2A~regout\ & (\T2_R|r\(15) & ((!\FSM_R|WideOr14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_R|fsm_state_symbol.S2A~regout\,
	datab => \T2_R|r\(15),
	datac => \IR_R|r\(8),
	datad => \FSM_R|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_b[15]~15_combout\);

-- Location: LC_X12_Y8_N7
\PC_R|r[15]\ : maxv_lcell
-- Equation(s):
-- \ALU_en|Add0~75\ = \ALU_a[15]~15_combout\ $ (\ALU_b[15]~15_combout\ $ (((!\ALU_en|Add0~62\ & \ALU_en|Add0~72\) # (\ALU_en|Add0~62\ & \ALU_en|Add0~72COUT1_97\))))
-- \PC_R|r\(15) = DFFEAS(\ALU_en|Add0~75\, GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.Sf~regout\, , , , )
-- \ALU_en|Add0~77\ = CARRY((\ALU_a[15]~15_combout\ & (!\ALU_b[15]~15_combout\ & !\ALU_en|Add0~72\)) # (!\ALU_a[15]~15_combout\ & ((!\ALU_en|Add0~72\) # (!\ALU_b[15]~15_combout\))))
-- \ALU_en|Add0~77COUT1_98\ = CARRY((\ALU_a[15]~15_combout\ & (!\ALU_b[15]~15_combout\ & !\ALU_en|Add0~72COUT1_97\)) # (!\ALU_a[15]~15_combout\ & ((!\ALU_en|Add0~72COUT1_97\) # (!\ALU_b[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_a[15]~15_combout\,
	datab => \ALU_b[15]~15_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.Sf~regout\,
	cin => \ALU_en|Add0~62\,
	cin0 => \ALU_en|Add0~72\,
	cin1 => \ALU_en|Add0~72COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|Add0~75\,
	regout => \PC_R|r\(15),
	cout0 => \ALU_en|Add0~77\,
	cout1 => \ALU_en|Add0~77COUT1_98\);

-- Location: LC_X13_Y8_N6
\T3_R|r[15]\ : maxv_lcell
-- Equation(s):
-- \M3_out[15]~30\ = (\FSM_R|fsm_state_symbol.S3~regout\ & ((\FSM_R|fsm_state_symbol.S7B~regout\) # ((\IR_R|r\(8))))) # (!\FSM_R|fsm_state_symbol.S3~regout\ & (!\FSM_R|fsm_state_symbol.S7B~regout\ & (E5_r[15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S3~regout\,
	datab => \FSM_R|fsm_state_symbol.S7B~regout\,
	datac => \ALU_en|Add0~75\,
	datad => \IR_R|r\(8),
	aclr => GND,
	sload => VCC,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[15]~30\,
	regout => \T3_R|r\(15));

-- Location: LC_X14_Y8_N9
\RF_R|registers[3][15]\ : maxv_lcell
-- Equation(s):
-- \M3_out[15]~31\ = (\M3_out[15]~30\ & (((\PC_R|r\(15)) # (!\FSM_R|fsm_state_symbol.S7B~regout\)))) # (!\M3_out[15]~30\ & (\T2_R|r\(15) & (\FSM_R|fsm_state_symbol.S7B~regout\)))
-- \RF_R|registers[3][15]~regout\ = DFFEAS(\M3_out[15]~31\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~3_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \T2_R|r\(15),
	datab => \M3_out[15]~30\,
	datac => \FSM_R|fsm_state_symbol.S7B~regout\,
	datad => \PC_R|r\(15),
	aclr => GND,
	ena => \RF_R|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M3_out[15]~31\,
	regout => \RF_R|registers[3][15]~regout\);

-- Location: LC_X11_Y4_N9
\RF_R|registers[4][15]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux16~2\ = (\IR_R|r\(1) & (((\IR_R|r\(6))))) # (!\IR_R|r\(1) & ((\IR_R|r\(6) & (\RF_R|registers[5][15]~regout\)) # (!\IR_R|r\(6) & ((H1_registers[4][15])))))
-- \RF_R|registers[4][15]~regout\ = DFFEAS(\RF_R|Mux16~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~4_combout\, \M3_out[15]~31\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[5][15]~regout\,
	datab => \IR_R|r\(1),
	datac => \M3_out[15]~31\,
	datad => \IR_R|r\(6),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux16~2\,
	regout => \RF_R|registers[4][15]~regout\);

-- Location: LC_X11_Y4_N0
\RF_R|registers[7][15]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux16~3\ = (\RF_R|Mux16~2\ & (((H1_registers[7][15]) # (!\IR_R|r\(1))))) # (!\RF_R|Mux16~2\ & (\RF_R|registers[6][15]~regout\ & ((\IR_R|r\(1)))))
-- \RF_R|registers[7][15]~regout\ = DFFEAS(\RF_R|Mux16~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~7_combout\, \M3_out[15]~31\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[6][15]~regout\,
	datab => \RF_R|Mux16~2\,
	datac => \M3_out[15]~31\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux16~3\,
	regout => \RF_R|registers[7][15]~regout\);

-- Location: LC_X12_Y4_N1
\RF_R|registers[6][15]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux0~2\ = (\M1_out[0]~1\ & (((\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & ((\M1_out[1]~0_combout\ & ((H1_registers[6][15]))) # (!\M1_out[1]~0_combout\ & (\RF_R|registers[4][15]~regout\))))
-- \RF_R|registers[6][15]~regout\ = DFFEAS(\RF_R|Mux0~2\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~6_combout\, \M3_out[15]~31\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[4][15]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[15]~31\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux0~2\,
	regout => \RF_R|registers[6][15]~regout\);

-- Location: LC_X12_Y4_N2
\RF_R|registers[5][15]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux0~3\ = (\M1_out[0]~1\ & ((\RF_R|Mux0~2\ & (\RF_R|registers[7][15]~regout\)) # (!\RF_R|Mux0~2\ & ((H1_registers[5][15]))))) # (!\M1_out[0]~1\ & (((\RF_R|Mux0~2\))))
-- \RF_R|registers[5][15]~regout\ = DFFEAS(\RF_R|Mux0~3\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~5_combout\, \M3_out[15]~31\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \M1_out[0]~1\,
	datab => \RF_R|registers[7][15]~regout\,
	datac => \M3_out[15]~31\,
	datad => \RF_R|Mux0~2\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux0~3\,
	regout => \RF_R|registers[5][15]~regout\);

-- Location: LC_X14_Y5_N7
\RF_R|registers[0][15]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux16~0\ = (\IR_R|r\(6) & ((\RF_R|registers[1][15]~regout\) # ((\IR_R|r\(1))))) # (!\IR_R|r\(6) & (((H1_registers[0][15] & !\IR_R|r\(1)))))
-- \RF_R|registers[0][15]~regout\ = DFFEAS(\RF_R|Mux16~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~0_combout\, \M3_out[15]~31\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR_R|r\(6),
	datab => \RF_R|registers[1][15]~regout\,
	datac => \M3_out[15]~31\,
	datad => \IR_R|r\(1),
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux16~0\,
	regout => \RF_R|registers[0][15]~regout\);

-- Location: LC_X13_Y6_N6
\RF_R|registers[1][15]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux0~0\ = (\M1_out[0]~1\ & (((H1_registers[1][15]) # (\M1_out[1]~0_combout\)))) # (!\M1_out[0]~1\ & (\RF_R|registers[0][15]~regout\ & ((!\M1_out[1]~0_combout\))))
-- \RF_R|registers[1][15]~regout\ = DFFEAS(\RF_R|Mux0~0\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~1_combout\, \M3_out[15]~31\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[0][15]~regout\,
	datab => \M1_out[0]~1\,
	datac => \M3_out[15]~31\,
	datad => \M1_out[1]~0_combout\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux0~0\,
	regout => \RF_R|registers[1][15]~regout\);

-- Location: LC_X13_Y6_N7
\RF_R|registers[2][15]\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux0~1\ = (\M1_out[1]~0_combout\ & ((\RF_R|Mux0~0\ & (\RF_R|registers[3][15]~regout\)) # (!\RF_R|Mux0~0\ & ((H1_registers[2][15]))))) # (!\M1_out[1]~0_combout\ & (((\RF_R|Mux0~0\))))
-- \RF_R|registers[2][15]~regout\ = DFFEAS(\RF_R|Mux0~1\, GLOBAL(\clk~combout\), VCC, , \RF_R|Decoder0~2_combout\, \M3_out[15]~31\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|registers[3][15]~regout\,
	datab => \M1_out[1]~0_combout\,
	datac => \M3_out[15]~31\,
	datad => \RF_R|Mux0~0\,
	aclr => GND,
	sload => VCC,
	ena => \RF_R|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux0~1\,
	regout => \RF_R|registers[2][15]~regout\);

-- Location: LC_X14_Y5_N8
\RF_R|Mux16~1\ : maxv_lcell
-- Equation(s):
-- \RF_R|Mux16~1_combout\ = (\IR_R|r\(1) & ((\RF_R|Mux16~0\ & (\RF_R|registers[3][15]~regout\)) # (!\RF_R|Mux16~0\ & ((\RF_R|registers[2][15]~regout\))))) # (!\IR_R|r\(1) & (((\RF_R|Mux16~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(1),
	datab => \RF_R|registers[3][15]~regout\,
	datac => \RF_R|Mux16~0\,
	datad => \RF_R|registers[2][15]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RF_R|Mux16~1_combout\);

-- Location: LC_X13_Y7_N0
\T1_R|r[15]\ : maxv_lcell
-- Equation(s):
-- \T1_R|r[15]~COMBOUT\ = (\M1_out[2]~2_combout\ & (((\RF_R|Mux0~3\)))) # (!\M1_out[2]~2_combout\ & (\RF_R|Mux0~1\))
-- \T1_R|r\(15) = DFFEAS(\T1_R|r[15]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr8~combout\, \ALU_en|Add0~75\, , , \FSM_R|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RF_R|Mux0~1\,
	datab => \M1_out[2]~2_combout\,
	datac => \ALU_en|Add0~75\,
	datad => \RF_R|Mux0~3\,
	aclr => GND,
	sload => \FSM_R|WideOr8~0_combout\,
	ena => \FSM_R|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T1_R|r[15]~COMBOUT\,
	regout => \T1_R|r\(15));

-- Location: LC_X13_Y7_N1
\M6_out[15]~9\ : maxv_lcell
-- Equation(s):
-- \M6_out[15]~9_combout\ = (\FSM_R|WideOr9~0_combout\ & (!\IR_R|r\(8) & (\RF_R|Mux16~1_combout\))) # (!\FSM_R|WideOr9~0_combout\ & (((\T1_R|r[15]~COMBOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR_R|r\(8),
	datab => \RF_R|Mux16~1_combout\,
	datac => \FSM_R|WideOr9~0_combout\,
	datad => \T1_R|r[15]~COMBOUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \M6_out[15]~9_combout\);

-- Location: LC_X12_Y7_N6
\T2_R|r[15]\ : maxv_lcell
-- Equation(s):
-- \T2_R|r\(15) = DFFEAS((!\FSM_R|fsm_state_symbol.S7A~regout\ & ((\M6_out[15]~9_combout\) # ((\RF_R|Mux16~3\ & \M6_out[5]~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|WideOr9~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5540",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \FSM_R|fsm_state_symbol.S7A~regout\,
	datab => \RF_R|Mux16~3\,
	datac => \M6_out[5]~1_combout\,
	datad => \M6_out[15]~9_combout\,
	aclr => GND,
	ena => \FSM_R|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \T2_R|r\(15));

-- Location: LC_X13_Y7_N9
\ALU_a[15]~15\ : maxv_lcell
-- Equation(s):
-- \ALU_a[15]~15_combout\ = ((\FSM_R|fsm_state_symbol.S8B~regout\ & ((\T2_R|r\(15)))) # (!\FSM_R|fsm_state_symbol.S8B~regout\ & (\T1_R|r\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM_R|fsm_state_symbol.S8B~regout\,
	datac => \T1_R|r\(15),
	datad => \T2_R|r\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_a[15]~15_combout\);

-- Location: LC_X12_Y8_N8
\C_R|r\ : maxv_lcell
-- Equation(s):
-- \C_R|r~regout\ = DFFEAS((((!(!\ALU_en|Add0~62\ & \ALU_en|Add0~77\) # (\ALU_en|Add0~62\ & \ALU_en|Add0~77COUT1_98\)))), GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.S2A~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	cin => \ALU_en|Add0~62\,
	cin0 => \ALU_en|Add0~77\,
	cin1 => \ALU_en|Add0~77COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C_R|r~regout\);

-- Location: LC_X13_Y8_N5
\ALU_en|zero~0\ : maxv_lcell
-- Equation(s):
-- \ALU_en|zero~0_combout\ = (\ALU_en|Add0~0\) # ((\ALU_en|Add0~5\) # ((\ALU_en|Add0~10\) # (\ALU_en|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_en|Add0~0\,
	datab => \ALU_en|Add0~5\,
	datac => \ALU_en|Add0~10\,
	datad => \ALU_en|Add0~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|zero~0_combout\);

-- Location: LC_X13_Y8_N0
\ALU_en|zero~2\ : maxv_lcell
-- Equation(s):
-- \ALU_en|zero~2_combout\ = (\ALU_en|Add0~40\) # ((\ALU_en|Add0~45\) # ((\ALU_en|Add0~55\) # (\ALU_en|Add0~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_en|Add0~40\,
	datab => \ALU_en|Add0~45\,
	datac => \ALU_en|Add0~55\,
	datad => \ALU_en|Add0~50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|zero~2_combout\);

-- Location: LC_X12_Y8_N9
\ALU_en|zero~1\ : maxv_lcell
-- Equation(s):
-- \ALU_en|zero~1_combout\ = (\ALU_en|Add0~30\) # ((\ALU_en|Add0~20\) # ((\ALU_en|Add0~35\) # (\ALU_en|Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_en|Add0~30\,
	datab => \ALU_en|Add0~20\,
	datac => \ALU_en|Add0~35\,
	datad => \ALU_en|Add0~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|zero~1_combout\);

-- Location: LC_X13_Y8_N3
\ALU_en|zero~3\ : maxv_lcell
-- Equation(s):
-- \ALU_en|zero~3_combout\ = (\ALU_en|Add0~60\) # ((\ALU_en|Add0~75\) # ((\ALU_en|Add0~70\) # (\ALU_en|Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_en|Add0~60\,
	datab => \ALU_en|Add0~75\,
	datac => \ALU_en|Add0~70\,
	datad => \ALU_en|Add0~65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU_en|zero~3_combout\);

-- Location: LC_X13_Y8_N4
\Z_R|r\ : maxv_lcell
-- Equation(s):
-- \Z_R|r~regout\ = DFFEAS((!\ALU_en|zero~0_combout\ & (!\ALU_en|zero~2_combout\ & (!\ALU_en|zero~1_combout\ & !\ALU_en|zero~3_combout\))), GLOBAL(\clk~combout\), VCC, , \FSM_R|fsm_state_symbol.S2A~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ALU_en|zero~0_combout\,
	datab => \ALU_en|zero~2_combout\,
	datac => \ALU_en|zero~1_combout\,
	datad => \ALU_en|zero~3_combout\,
	aclr => GND,
	ena => \FSM_R|fsm_state_symbol.S2A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Z_R|r~regout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(0),
	oe => VCC,
	padio => ww_PC(0));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(1),
	oe => VCC,
	padio => ww_PC(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(2),
	oe => VCC,
	padio => ww_PC(2));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(3),
	oe => VCC,
	padio => ww_PC(3));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(4),
	oe => VCC,
	padio => ww_PC(4));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(5),
	oe => VCC,
	padio => ww_PC(5));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(6),
	oe => VCC,
	padio => ww_PC(6));

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(7),
	oe => VCC,
	padio => ww_PC(7));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(8),
	oe => VCC,
	padio => ww_PC(8));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(9),
	oe => VCC,
	padio => ww_PC(9));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(10),
	oe => VCC,
	padio => ww_PC(10));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(11),
	oe => VCC,
	padio => ww_PC(11));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(12),
	oe => VCC,
	padio => ww_PC(12));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(13),
	oe => VCC,
	padio => ww_PC(13));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(14),
	oe => VCC,
	padio => ww_PC(14));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PC[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \PC_R|r\(15),
	oe => VCC,
	padio => ww_PC(15));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(0),
	oe => VCC,
	padio => ww_IR(0));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(1),
	oe => VCC,
	padio => ww_IR(1));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(0),
	oe => VCC,
	padio => ww_IR(2));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(3),
	oe => VCC,
	padio => ww_IR(3));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(4),
	oe => VCC,
	padio => ww_IR(4));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR(5));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(6),
	oe => VCC,
	padio => ww_IR(6));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(1),
	oe => VCC,
	padio => ww_IR(7));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(8),
	oe => VCC,
	padio => ww_IR(8));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(1),
	oe => VCC,
	padio => ww_IR(9));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR(10));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR(11));

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(0),
	oe => VCC,
	padio => ww_IR(12));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR_R|r\(0),
	oe => VCC,
	padio => ww_IR(13));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR(14));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR(15));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \FSM_R|fsm_state_symbol.Sf~regout\,
	oe => VCC,
	padio => ww_done);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \C_R|r~regout\,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z_R|r~regout\,
	oe => VCC,
	padio => ww_Z);

-- Location: PIN_K12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][0]~regout\,
	oe => VCC,
	padio => ww_reg0(0));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][1]~regout\,
	oe => VCC,
	padio => ww_reg0(1));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][2]~regout\,
	oe => VCC,
	padio => ww_reg0(2));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][3]~regout\,
	oe => VCC,
	padio => ww_reg0(3));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][4]~regout\,
	oe => VCC,
	padio => ww_reg0(4));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][5]~regout\,
	oe => VCC,
	padio => ww_reg0(5));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][6]~regout\,
	oe => VCC,
	padio => ww_reg0(6));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][7]~regout\,
	oe => VCC,
	padio => ww_reg0(7));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][8]~regout\,
	oe => VCC,
	padio => ww_reg0(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][9]~regout\,
	oe => VCC,
	padio => ww_reg0(9));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][10]~regout\,
	oe => VCC,
	padio => ww_reg0(10));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][11]~regout\,
	oe => VCC,
	padio => ww_reg0(11));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][12]~regout\,
	oe => VCC,
	padio => ww_reg0(12));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][13]~regout\,
	oe => VCC,
	padio => ww_reg0(13));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][14]~regout\,
	oe => VCC,
	padio => ww_reg0(14));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg0[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[0][15]~regout\,
	oe => VCC,
	padio => ww_reg0(15));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][0]~regout\,
	oe => VCC,
	padio => ww_reg1(0));

-- Location: PIN_K13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][1]~regout\,
	oe => VCC,
	padio => ww_reg1(1));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][2]~regout\,
	oe => VCC,
	padio => ww_reg1(2));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][3]~regout\,
	oe => VCC,
	padio => ww_reg1(3));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][4]~regout\,
	oe => VCC,
	padio => ww_reg1(4));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][5]~regout\,
	oe => VCC,
	padio => ww_reg1(5));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][6]~regout\,
	oe => VCC,
	padio => ww_reg1(6));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][7]~regout\,
	oe => VCC,
	padio => ww_reg1(7));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][8]~regout\,
	oe => VCC,
	padio => ww_reg1(8));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][9]~regout\,
	oe => VCC,
	padio => ww_reg1(9));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][10]~regout\,
	oe => VCC,
	padio => ww_reg1(10));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][11]~regout\,
	oe => VCC,
	padio => ww_reg1(11));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][12]~regout\,
	oe => VCC,
	padio => ww_reg1(12));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][13]~regout\,
	oe => VCC,
	padio => ww_reg1(13));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][14]~regout\,
	oe => VCC,
	padio => ww_reg1(14));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[1][15]~regout\,
	oe => VCC,
	padio => ww_reg1(15));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][0]~regout\,
	oe => VCC,
	padio => ww_reg2(0));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][1]~regout\,
	oe => VCC,
	padio => ww_reg2(1));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][2]~regout\,
	oe => VCC,
	padio => ww_reg2(2));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][3]~regout\,
	oe => VCC,
	padio => ww_reg2(3));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][4]~regout\,
	oe => VCC,
	padio => ww_reg2(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][5]~regout\,
	oe => VCC,
	padio => ww_reg2(5));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][6]~regout\,
	oe => VCC,
	padio => ww_reg2(6));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][7]~regout\,
	oe => VCC,
	padio => ww_reg2(7));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][8]~regout\,
	oe => VCC,
	padio => ww_reg2(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][9]~regout\,
	oe => VCC,
	padio => ww_reg2(9));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][10]~regout\,
	oe => VCC,
	padio => ww_reg2(10));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][11]~regout\,
	oe => VCC,
	padio => ww_reg2(11));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][12]~regout\,
	oe => VCC,
	padio => ww_reg2(12));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][13]~regout\,
	oe => VCC,
	padio => ww_reg2(13));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][14]~regout\,
	oe => VCC,
	padio => ww_reg2(14));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg2[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[2][15]~regout\,
	oe => VCC,
	padio => ww_reg2(15));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][0]~regout\,
	oe => VCC,
	padio => ww_reg3(0));

-- Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][1]~regout\,
	oe => VCC,
	padio => ww_reg3(1));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][2]~regout\,
	oe => VCC,
	padio => ww_reg3(2));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][3]~regout\,
	oe => VCC,
	padio => ww_reg3(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][4]~regout\,
	oe => VCC,
	padio => ww_reg3(4));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][5]~regout\,
	oe => VCC,
	padio => ww_reg3(5));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][6]~regout\,
	oe => VCC,
	padio => ww_reg3(6));

-- Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][7]~regout\,
	oe => VCC,
	padio => ww_reg3(7));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][8]~regout\,
	oe => VCC,
	padio => ww_reg3(8));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][9]~regout\,
	oe => VCC,
	padio => ww_reg3(9));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][10]~regout\,
	oe => VCC,
	padio => ww_reg3(10));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][11]~regout\,
	oe => VCC,
	padio => ww_reg3(11));

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][12]~regout\,
	oe => VCC,
	padio => ww_reg3(12));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][13]~regout\,
	oe => VCC,
	padio => ww_reg3(13));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][14]~regout\,
	oe => VCC,
	padio => ww_reg3(14));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg3[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[3][15]~regout\,
	oe => VCC,
	padio => ww_reg3(15));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][0]~regout\,
	oe => VCC,
	padio => ww_reg4(0));

-- Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][1]~regout\,
	oe => VCC,
	padio => ww_reg4(1));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][2]~regout\,
	oe => VCC,
	padio => ww_reg4(2));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][3]~regout\,
	oe => VCC,
	padio => ww_reg4(3));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][4]~regout\,
	oe => VCC,
	padio => ww_reg4(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][5]~regout\,
	oe => VCC,
	padio => ww_reg4(5));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][6]~regout\,
	oe => VCC,
	padio => ww_reg4(6));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][7]~regout\,
	oe => VCC,
	padio => ww_reg4(7));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][8]~regout\,
	oe => VCC,
	padio => ww_reg4(8));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][9]~regout\,
	oe => VCC,
	padio => ww_reg4(9));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][10]~regout\,
	oe => VCC,
	padio => ww_reg4(10));

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][11]~regout\,
	oe => VCC,
	padio => ww_reg4(11));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][12]~regout\,
	oe => VCC,
	padio => ww_reg4(12));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][13]~regout\,
	oe => VCC,
	padio => ww_reg4(13));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][14]~regout\,
	oe => VCC,
	padio => ww_reg4(14));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg4[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[4][15]~regout\,
	oe => VCC,
	padio => ww_reg4(15));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][0]~regout\,
	oe => VCC,
	padio => ww_reg5(0));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][1]~regout\,
	oe => VCC,
	padio => ww_reg5(1));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][2]~regout\,
	oe => VCC,
	padio => ww_reg5(2));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][3]~regout\,
	oe => VCC,
	padio => ww_reg5(3));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][4]~regout\,
	oe => VCC,
	padio => ww_reg5(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][5]~regout\,
	oe => VCC,
	padio => ww_reg5(5));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][6]~regout\,
	oe => VCC,
	padio => ww_reg5(6));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][7]~regout\,
	oe => VCC,
	padio => ww_reg5(7));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][8]~regout\,
	oe => VCC,
	padio => ww_reg5(8));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][9]~regout\,
	oe => VCC,
	padio => ww_reg5(9));

-- Location: PIN_M12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][10]~regout\,
	oe => VCC,
	padio => ww_reg5(10));

-- Location: PIN_L11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][11]~regout\,
	oe => VCC,
	padio => ww_reg5(11));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][12]~regout\,
	oe => VCC,
	padio => ww_reg5(12));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][13]~regout\,
	oe => VCC,
	padio => ww_reg5(13));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][14]~regout\,
	oe => VCC,
	padio => ww_reg5(14));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg5[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[5][15]~regout\,
	oe => VCC,
	padio => ww_reg5(15));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][0]~regout\,
	oe => VCC,
	padio => ww_reg6(0));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][1]~regout\,
	oe => VCC,
	padio => ww_reg6(1));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][2]~regout\,
	oe => VCC,
	padio => ww_reg6(2));

-- Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][3]~regout\,
	oe => VCC,
	padio => ww_reg6(3));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][4]~regout\,
	oe => VCC,
	padio => ww_reg6(4));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][5]~regout\,
	oe => VCC,
	padio => ww_reg6(5));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][6]~regout\,
	oe => VCC,
	padio => ww_reg6(6));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][7]~regout\,
	oe => VCC,
	padio => ww_reg6(7));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][8]~regout\,
	oe => VCC,
	padio => ww_reg6(8));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][9]~regout\,
	oe => VCC,
	padio => ww_reg6(9));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][10]~regout\,
	oe => VCC,
	padio => ww_reg6(10));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][11]~regout\,
	oe => VCC,
	padio => ww_reg6(11));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][12]~regout\,
	oe => VCC,
	padio => ww_reg6(12));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][13]~regout\,
	oe => VCC,
	padio => ww_reg6(13));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][14]~regout\,
	oe => VCC,
	padio => ww_reg6(14));

-- Location: PIN_L12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg6[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[6][15]~regout\,
	oe => VCC,
	padio => ww_reg6(15));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][0]~regout\,
	oe => VCC,
	padio => ww_reg7(0));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][1]~regout\,
	oe => VCC,
	padio => ww_reg7(1));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][2]~regout\,
	oe => VCC,
	padio => ww_reg7(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][3]~regout\,
	oe => VCC,
	padio => ww_reg7(3));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][4]~regout\,
	oe => VCC,
	padio => ww_reg7(4));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][5]~regout\,
	oe => VCC,
	padio => ww_reg7(5));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][6]~regout\,
	oe => VCC,
	padio => ww_reg7(6));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][7]~regout\,
	oe => VCC,
	padio => ww_reg7(7));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][8]~regout\,
	oe => VCC,
	padio => ww_reg7(8));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][9]~regout\,
	oe => VCC,
	padio => ww_reg7(9));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][10]~regout\,
	oe => VCC,
	padio => ww_reg7(10));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][11]~regout\,
	oe => VCC,
	padio => ww_reg7(11));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][12]~regout\,
	oe => VCC,
	padio => ww_reg7(12));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][13]~regout\,
	oe => VCC,
	padio => ww_reg7(13));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][14]~regout\,
	oe => VCC,
	padio => ww_reg7(14));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\reg7[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RF_R|registers[7][15]~regout\,
	oe => VCC,
	padio => ww_reg7(15));
END structure;


