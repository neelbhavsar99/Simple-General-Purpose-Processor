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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/21/2018 20:04:33"

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

ENTITY 	GPU IS
    PORT (
	OP : OUT std_logic_vector(15 DOWNTO 0);
	Enable_Decoder : IN std_logic;
	Clock : IN std_logic;
	data_in : IN std_logic;
	FSM_reset : IN std_logic;
	R1 : OUT std_logic_vector(3 DOWNTO 0);
	Reset_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Reset_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(3 DOWNTO 0);
	R_first_four : OUT std_logic_vector(0 TO 6);
	R_last_four : OUT std_logic_vector(0 TO 6);
	Sign : OUT std_logic_vector(0 TO 6);
	student_ID : OUT std_logic_vector(0 TO 6)
	);
END GPU;

-- Design Ports Information
-- OP[15]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[14]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[13]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[12]	=>  Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[11]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[10]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[9]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[8]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[7]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[6]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[5]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[4]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[2]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[1]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP[0]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[3]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[2]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[1]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[0]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[3]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[1]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[0]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Enable_Decoder	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OP : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Enable_Decoder : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R_first_four : std_logic_vector(0 TO 6);
SIGNAL ww_R_last_four : std_logic_vector(0 TO 6);
SIGNAL ww_Sign : std_logic_vector(0 TO 6);
SIGNAL ww_student_ID : std_logic_vector(0 TO 6);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FSM_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Selector5~3_combout\ : std_logic;
SIGNAL \inst|Selector6~3_combout\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|Selector8~2_combout\ : std_logic;
SIGNAL \inst|Selector8~9_combout\ : std_logic;
SIGNAL \inst|Selector1~3_combout\ : std_logic;
SIGNAL \inst|Selector1~4_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|Selector3~3_combout\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector3~8_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \FSM_reset~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \yth|yfsm.s4~regout\ : std_logic;
SIGNAL \yth|yfsm.s5~regout\ : std_logic;
SIGNAL \yth|yfsm.s6~regout\ : std_logic;
SIGNAL \yth|yfsm.s7~regout\ : std_logic;
SIGNAL \yth|yfsm.s8~regout\ : std_logic;
SIGNAL \yth|yfsm.s0~0_combout\ : std_logic;
SIGNAL \yth|yfsm.s0~regout\ : std_logic;
SIGNAL \yth|yfsm.s1~0_combout\ : std_logic;
SIGNAL \yth|yfsm.s1~regout\ : std_logic;
SIGNAL \yth|yfsm.s2~regout\ : std_logic;
SIGNAL \yth|yfsm.s3~regout\ : std_logic;
SIGNAL \Enable_Decoder~combout\ : std_logic;
SIGNAL \inst54|Mux0~6_combout\ : std_logic;
SIGNAL \yth|student_id[3]~0_combout\ : std_logic;
SIGNAL \yth|WideOr12~0_combout\ : std_logic;
SIGNAL \inst54|Mux0~4_combout\ : std_logic;
SIGNAL \inst54|Mux0~5_combout\ : std_logic;
SIGNAL \yth|WideOr13~0_combout\ : std_logic;
SIGNAL \yth|WideOr14~1_combout\ : std_logic;
SIGNAL \inst54|Mux1~0_combout\ : std_logic;
SIGNAL \inst54|Mux2~0_combout\ : std_logic;
SIGNAL \yth|WideOr14~0_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst54|Mux3~0_combout\ : std_logic;
SIGNAL \inst54|Mux3~1_combout\ : std_logic;
SIGNAL \inst54|Mux4~0_combout\ : std_logic;
SIGNAL \inst54|Mux5~0_combout\ : std_logic;
SIGNAL \inst54|Mux6~0_combout\ : std_logic;
SIGNAL \inst54|Mux7~0_combout\ : std_logic;
SIGNAL \inst54|Mux8~0_combout\ : std_logic;
SIGNAL \Clock~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \inst|Result[3]~1_combout\ : std_logic;
SIGNAL \inst|Result[3]~0_combout\ : std_logic;
SIGNAL \yth|WideOr13~combout\ : std_logic;
SIGNAL \inst|Selector5~9_combout\ : std_logic;
SIGNAL \Reset_B~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Selector5~4_combout\ : std_logic;
SIGNAL \inst|Result[3]~2_combout\ : std_logic;
SIGNAL \inst|Selector5~7_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Selector5~5_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Selector5~11_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|Result[3]~3_combout\ : std_logic;
SIGNAL \inst|Selector5~6_combout\ : std_logic;
SIGNAL \inst|Selector5~8_combout\ : std_logic;
SIGNAL \inst|Selector5~10_combout\ : std_logic;
SIGNAL \inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Selector6~4_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Selector6~8_combout\ : std_logic;
SIGNAL \inst|Selector6~5_combout\ : std_logic;
SIGNAL \inst|Selector6~6_combout\ : std_logic;
SIGNAL \inst|Selector6~7_combout\ : std_logic;
SIGNAL \inst|Selector7~3_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Selector7~4_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Selector7~8_combout\ : std_logic;
SIGNAL \inst|Selector7~5_combout\ : std_logic;
SIGNAL \inst|Selector7~6_combout\ : std_logic;
SIGNAL \inst|Selector7~7_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|Selector8~3_combout\ : std_logic;
SIGNAL \inst|Selector8~5_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Selector8~4_combout\ : std_logic;
SIGNAL \inst|Selector8~6_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Result~4_combout\ : std_logic;
SIGNAL \inst|Selector8~7_combout\ : std_logic;
SIGNAL \inst|Selector8~8_combout\ : std_logic;
SIGNAL \inst|Selector8~10_combout\ : std_logic;
SIGNAL \inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Selector1~8_combout\ : std_logic;
SIGNAL \inst|Selector1~5_combout\ : std_logic;
SIGNAL \inst|Selector1~6_combout\ : std_logic;
SIGNAL \inst|Selector1~7_combout\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Selector2~4_combout\ : std_logic;
SIGNAL \inst|Selector2~5_combout\ : std_logic;
SIGNAL \inst|Selector2~6_combout\ : std_logic;
SIGNAL \inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Selector3~4_combout\ : std_logic;
SIGNAL \inst|Selector3~5_combout\ : std_logic;
SIGNAL \inst|Selector3~6_combout\ : std_logic;
SIGNAL \inst|Selector3~7_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Selector4~4_combout\ : std_logic;
SIGNAL \inst|Selector4~5_combout\ : std_logic;
SIGNAL \inst|Selector4~6_combout\ : std_logic;
SIGNAL \inst16|Mux0~0_combout\ : std_logic;
SIGNAL \inst16|Mux1~0_combout\ : std_logic;
SIGNAL \inst16|Mux2~0_combout\ : std_logic;
SIGNAL \inst16|Mux3~0_combout\ : std_logic;
SIGNAL \inst16|Mux4~0_combout\ : std_logic;
SIGNAL \inst16|Mux5~0_combout\ : std_logic;
SIGNAL \inst16|Mux6~0_combout\ : std_logic;
SIGNAL \inst15|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|Mux1~0_combout\ : std_logic;
SIGNAL \inst15|Mux2~0_combout\ : std_logic;
SIGNAL \inst15|Mux3~0_combout\ : std_logic;
SIGNAL \inst15|Mux4~0_combout\ : std_logic;
SIGNAL \inst15|Mux5~0_combout\ : std_logic;
SIGNAL \inst15|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|NEG~regout\ : std_logic;
SIGNAL \yth|WideOr11~combout\ : std_logic;
SIGNAL \yth|WideOr9~combout\ : std_logic;
SIGNAL \inst17|Mux0~2_combout\ : std_logic;
SIGNAL \yth|WideOr10~combout\ : std_logic;
SIGNAL \inst17|Mux1~0_combout\ : std_logic;
SIGNAL \inst17|Mux2~2_combout\ : std_logic;
SIGNAL \inst17|Mux3~0_combout\ : std_logic;
SIGNAL \inst17|Mux5~0_combout\ : std_logic;
SIGNAL \inst17|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \yth|ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \inst|ALT_INV_NEG~regout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst16|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~combout\ : std_logic;

BEGIN

OP <= ww_OP;
ww_Enable_Decoder <= Enable_Decoder;
ww_Clock <= Clock;
ww_data_in <= data_in;
ww_FSM_reset <= FSM_reset;
R1 <= ww_R1;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_B <= B;
R2 <= ww_R2;
R_first_four <= ww_R_first_four;
R_last_four <= ww_R_last_four;
Sign <= ww_Sign;
student_ID <= ww_student_ID;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~clk_delay_ctrl_clkout\);

\FSM_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_reset~clk_delay_ctrl_clkout\);

\Reset_B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_B~clk_delay_ctrl_clkout\);
\inst17|ALT_INV_Mux6~0_combout\ <= NOT \inst17|Mux6~0_combout\;
\inst17|ALT_INV_Mux5~0_combout\ <= NOT \inst17|Mux5~0_combout\;
\inst17|ALT_INV_Mux3~0_combout\ <= NOT \inst17|Mux3~0_combout\;
\yth|ALT_INV_WideOr11~combout\ <= NOT \yth|WideOr11~combout\;
\inst|ALT_INV_NEG~regout\ <= NOT \inst|NEG~regout\;
\inst15|ALT_INV_Mux6~0_combout\ <= NOT \inst15|Mux6~0_combout\;
\inst16|ALT_INV_Mux6~0_combout\ <= NOT \inst16|Mux6~0_combout\;
\ALT_INV_Reset_B~clkctrl_outclk\ <= NOT \Reset_B~clkctrl_outclk\;
\ALT_INV_FSM_reset~clkctrl_outclk\ <= NOT \FSM_reset~clkctrl_outclk\;
\ALT_INV_Reset_A~combout\ <= NOT \Reset_A~combout\;

-- Location: LCCOMB_X60_Y8_N26
\inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst3|Q\(5) & ((\inst2|Q\(5) & (!\inst|Add2~9\)) # (!\inst2|Q\(5) & (\inst|Add2~9\ & VCC)))) # (!\inst3|Q\(5) & ((\inst2|Q\(5) & ((\inst|Add2~9\) # (GND))) # (!\inst2|Q\(5) & (!\inst|Add2~9\))))
-- \inst|Add2~11\ = CARRY((\inst3|Q\(5) & (\inst2|Q\(5) & !\inst|Add2~9\)) # (!\inst3|Q\(5) & ((\inst2|Q\(5)) # (!\inst|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(5),
	datab => \inst2|Q\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X60_Y8_N28
\inst|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = ((\inst3|Q\(6) $ (\inst2|Q\(6) $ (\inst|Add2~11\)))) # (GND)
-- \inst|Add2~13\ = CARRY((\inst3|Q\(6) & ((!\inst|Add2~11\) # (!\inst2|Q\(6)))) # (!\inst3|Q\(6) & (!\inst2|Q\(6) & !\inst|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X63_Y8_N26
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst2|Q\(5) & ((\inst3|Q\(5) & (\inst|Add0~9\ & VCC)) # (!\inst3|Q\(5) & (!\inst|Add0~9\)))) # (!\inst2|Q\(5) & ((\inst3|Q\(5) & (!\inst|Add0~9\)) # (!\inst3|Q\(5) & ((\inst|Add0~9\) # (GND)))))
-- \inst|Add0~11\ = CARRY((\inst2|Q\(5) & (!\inst3|Q\(5) & !\inst|Add0~9\)) # (!\inst2|Q\(5) & ((!\inst|Add0~9\) # (!\inst3|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst3|Q\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X61_Y8_N10
\inst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst2|Q\(5) & ((\inst3|Q\(5) & (!\inst|Add1~9\)) # (!\inst3|Q\(5) & (\inst|Add1~9\ & VCC)))) # (!\inst2|Q\(5) & ((\inst3|Q\(5) & ((\inst|Add1~9\) # (GND))) # (!\inst3|Q\(5) & (!\inst|Add1~9\))))
-- \inst|Add1~11\ = CARRY((\inst2|Q\(5) & (\inst3|Q\(5) & !\inst|Add1~9\)) # (!\inst2|Q\(5) & ((\inst3|Q\(5)) # (!\inst|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst3|Q\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X61_Y8_N12
\inst|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = ((\inst2|Q\(6) $ (\inst3|Q\(6) $ (\inst|Add1~11\)))) # (GND)
-- \inst|Add1~13\ = CARRY((\inst2|Q\(6) & ((!\inst|Add1~11\) # (!\inst3|Q\(6)))) # (!\inst2|Q\(6) & (!\inst3|Q\(6) & !\inst|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst3|Q\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X61_Y8_N14
\inst|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = \inst2|Q\(7) $ (\inst|Add1~13\ $ (!\inst3|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Q\(7),
	datad => \inst3|Q\(7),
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\);

-- Location: LCCOMB_X59_Y8_N24
\inst|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~3_combout\ = (\inst|Selector5~2_combout\ & (((!\inst3|Q\(3) & \inst|Result[3]~0_combout\)) # (!\inst2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst2|Q\(3),
	datac => \inst|Result[3]~0_combout\,
	datad => \inst|Selector5~2_combout\,
	combout => \inst|Selector5~3_combout\);

-- Location: LCCOMB_X63_Y8_N4
\inst|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~3_combout\ = (\inst|Result[3]~2_combout\ & (\inst2|Q\(2) $ (\inst3|Q\(2) $ (\inst|Result[3]~1_combout\)))) # (!\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ & ((\inst2|Q\(2)) # (\inst3|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datac => \inst|Result[3]~2_combout\,
	datad => \inst|Result[3]~1_combout\,
	combout => \inst|Selector6~3_combout\);

-- Location: LCCOMB_X59_Y8_N16
\inst|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (\inst|Selector5~2_combout\ & (((!\inst3|Q\(1) & \inst|Result[3]~0_combout\)) # (!\inst2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(1),
	datab => \inst2|Q\(1),
	datac => \inst|Result[3]~0_combout\,
	datad => \inst|Selector5~2_combout\,
	combout => \inst|Selector7~2_combout\);

-- Location: LCCOMB_X63_Y7_N10
\inst|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~2_combout\ = (\yth|yfsm.s7~regout\ & (!\yth|yfsm.s4~regout\ & ((\inst3|Q\(0)) # (\inst2|Q\(0))))) # (!\yth|yfsm.s7~regout\ & (!\inst3|Q\(0) & (!\inst2|Q\(0) & \yth|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(0),
	datab => \yth|yfsm.s7~regout\,
	datac => \inst2|Q\(0),
	datad => \yth|yfsm.s4~regout\,
	combout => \inst|Selector8~2_combout\);

-- Location: LCCOMB_X63_Y7_N14
\inst|Selector8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~9_combout\ = (!\yth|yfsm.s8~regout\ & (!\yth|yfsm.s7~regout\ & (!\yth|yfsm.s5~regout\ & !\yth|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s8~regout\,
	datab => \yth|yfsm.s7~regout\,
	datac => \yth|yfsm.s5~regout\,
	datad => \yth|yfsm.s4~regout\,
	combout => \inst|Selector8~9_combout\);

-- Location: LCCOMB_X62_Y8_N6
\inst|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~3_combout\ = (\inst|Result[3]~2_combout\ & (\inst3|Q\(7) $ (\inst|Result[3]~1_combout\ $ (\inst2|Q\(7))))) # (!\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ & ((\inst3|Q\(7)) # (\inst2|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(7),
	datab => \inst|Result[3]~1_combout\,
	datac => \inst2|Q\(7),
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector1~3_combout\);

-- Location: LCCOMB_X62_Y8_N16
\inst|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~4_combout\ = (\inst|Selector8~0_combout\ & (!\inst3|Q\(7) & (!\inst2|Q\(7)))) # (!\inst|Selector8~0_combout\ & (((\inst|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(7),
	datab => \inst2|Q\(7),
	datac => \inst|Selector8~0_combout\,
	datad => \inst|Add1~14_combout\,
	combout => \inst|Selector1~4_combout\);

-- Location: LCCOMB_X60_Y7_N0
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|Result[3]~2_combout\ & (\inst2|Q\(6) $ (\inst3|Q\(6) $ (\inst|Result[3]~1_combout\)))) # (!\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ & ((\inst2|Q\(6)) # (\inst3|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Result[3]~2_combout\,
	datac => \inst3|Q\(6),
	datad => \inst|Result[3]~1_combout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X60_Y7_N30
\inst|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((\inst2|Q\(6) & (\inst|Selector5~9_combout\ & \inst3|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Selector5~9_combout\,
	datac => \inst3|Q\(6),
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X63_Y8_N2
\inst|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~3_combout\ = (\inst|Result[3]~2_combout\ & (\inst2|Q\(5) $ (\inst3|Q\(5) $ (\inst|Result[3]~1_combout\)))) # (!\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ & ((\inst2|Q\(5)) # (\inst3|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst|Result[3]~2_combout\,
	datac => \inst3|Q\(5),
	datad => \inst|Result[3]~1_combout\,
	combout => \inst|Selector3~3_combout\);

-- Location: LCCOMB_X61_Y7_N16
\inst|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|Selector5~2_combout\ & (((\inst|Result[3]~0_combout\ & !\inst3|Q\(4))) # (!\inst2|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst|Selector5~2_combout\,
	datac => \inst|Result[3]~0_combout\,
	datad => \inst3|Q\(4),
	combout => \inst|Selector4~2_combout\);

-- Location: LCCOMB_X61_Y7_N6
\inst|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~3_combout\ = (\inst2|Q\(4) & ((\inst3|Q\(4)) # ((!\inst|Selector5~2_combout\) # (!\inst|Result[3]~0_combout\)))) # (!\inst2|Q\(4) & (\inst3|Q\(4) & ((!\inst|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(4),
	datab => \inst3|Q\(4),
	datac => \inst|Result[3]~0_combout\,
	datad => \inst|Selector5~2_combout\,
	combout => \inst|Selector4~3_combout\);

-- Location: LCCOMB_X64_Y7_N8
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\yth|WideOr14~1_combout\ & (!\yth|yfsm.s8~regout\ & \inst54|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yth|WideOr14~1_combout\,
	datac => \yth|yfsm.s8~regout\,
	datad => \inst54|Mux0~4_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X63_Y8_N6
\inst|Selector3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~8_combout\ = (\yth|yfsm.s3~regout\ & (((\inst|Add2~10_combout\)))) # (!\yth|yfsm.s3~regout\ & ((\yth|yfsm.s1~regout\ & ((\inst|Add2~10_combout\))) # (!\yth|yfsm.s1~regout\ & (\inst|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s3~regout\,
	datab => \inst|Add0~10_combout\,
	datac => \yth|yfsm.s1~regout\,
	datad => \inst|Add2~10_combout\,
	combout => \inst|Selector3~8_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
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
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_reset~I\ : cycloneii_io
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
	padio => ww_FSM_reset,
	combout => \FSM_reset~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_B~I\ : cycloneii_io
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
	padio => ww_Reset_B,
	combout => \Reset_B~combout\);

-- Location: CLKDELAYCTRL_G5
\FSM_reset~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \FSM_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \FSM_reset~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G5
\FSM_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_reset~clkctrl_outclk\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCFF_X62_Y8_N9
\yth|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \yth|yfsm.s3~regout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s4~regout\);

-- Location: LCFF_X62_Y7_N31
\yth|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \yth|yfsm.s4~regout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s5~regout\);

-- Location: LCFF_X62_Y7_N15
\yth|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \yth|yfsm.s5~regout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s6~regout\);

-- Location: LCFF_X62_Y7_N19
\yth|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \yth|yfsm.s6~regout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s7~regout\);

-- Location: LCFF_X62_Y7_N17
\yth|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \yth|yfsm.s7~regout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s8~regout\);

-- Location: LCCOMB_X62_Y7_N8
\yth|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|yfsm.s0~0_combout\ = !\yth|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yth|yfsm.s8~regout\,
	combout => \yth|yfsm.s0~0_combout\);

-- Location: LCFF_X62_Y7_N9
\yth|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \yth|yfsm.s0~0_combout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s0~regout\);

-- Location: LCCOMB_X62_Y7_N0
\yth|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|yfsm.s1~0_combout\ = !\yth|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yth|yfsm.s0~regout\,
	combout => \yth|yfsm.s1~0_combout\);

-- Location: LCFF_X62_Y7_N1
\yth|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \yth|yfsm.s1~0_combout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s1~regout\);

-- Location: LCFF_X62_Y7_N11
\yth|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \yth|yfsm.s1~regout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s2~regout\);

-- Location: LCFF_X62_Y7_N23
\yth|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \yth|yfsm.s2~regout\,
	aclr => \ALT_INV_FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \yth|yfsm.s3~regout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable_Decoder~I\ : cycloneii_io
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
	padio => ww_Enable_Decoder,
	combout => \Enable_Decoder~combout\);

-- Location: LCCOMB_X63_Y7_N30
\inst54|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux0~6_combout\ = (!\yth|WideOr14~0_combout\ & (!\yth|yfsm.s3~regout\ & (!\yth|yfsm.s1~regout\ & \Enable_Decoder~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|WideOr14~0_combout\,
	datab => \yth|yfsm.s3~regout\,
	datac => \yth|yfsm.s1~regout\,
	datad => \Enable_Decoder~combout\,
	combout => \inst54|Mux0~6_combout\);

-- Location: LCCOMB_X63_Y7_N0
\yth|student_id[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|student_id[3]~0_combout\ = (!\yth|yfsm.s3~regout\ & !\yth|yfsm.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yth|yfsm.s3~regout\,
	datad => \yth|yfsm.s6~regout\,
	combout => \yth|student_id[3]~0_combout\);

-- Location: LCCOMB_X63_Y7_N26
\yth|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr12~0_combout\ = (\yth|yfsm.s6~regout\) # ((\yth|yfsm.s7~regout\) # ((\yth|yfsm.s5~regout\) # (\yth|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s6~regout\,
	datab => \yth|yfsm.s7~regout\,
	datac => \yth|yfsm.s5~regout\,
	datad => \yth|yfsm.s4~regout\,
	combout => \yth|WideOr12~0_combout\);

-- Location: LCCOMB_X63_Y7_N16
\inst54|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux0~4_combout\ = (!\yth|yfsm.s7~regout\ & (\yth|student_id[3]~0_combout\ & (!\yth|yfsm.s2~regout\ & !\yth|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s7~regout\,
	datab => \yth|student_id[3]~0_combout\,
	datac => \yth|yfsm.s2~regout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux0~4_combout\);

-- Location: LCCOMB_X64_Y7_N12
\inst54|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux0~5_combout\ = (\inst54|Mux0~6_combout\ & (!\yth|yfsm.s8~regout\ & \inst54|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|Mux0~6_combout\,
	datac => \yth|yfsm.s8~regout\,
	datad => \inst54|Mux0~4_combout\,
	combout => \inst54|Mux0~5_combout\);

-- Location: LCCOMB_X63_Y7_N18
\yth|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr13~0_combout\ = (\yth|yfsm.s6~regout\) # ((\yth|yfsm.s3~regout\) # ((\yth|yfsm.s2~regout\) # (\yth|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s6~regout\,
	datab => \yth|yfsm.s3~regout\,
	datac => \yth|yfsm.s2~regout\,
	datad => \yth|yfsm.s7~regout\,
	combout => \yth|WideOr13~0_combout\);

-- Location: LCCOMB_X63_Y7_N4
\yth|WideOr14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr14~1_combout\ = (\yth|yfsm.s1~regout\) # ((\yth|yfsm.s3~regout\) # ((\yth|yfsm.s5~regout\) # (\yth|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s1~regout\,
	datab => \yth|yfsm.s3~regout\,
	datac => \yth|yfsm.s5~regout\,
	datad => \yth|yfsm.s7~regout\,
	combout => \yth|WideOr14~1_combout\);

-- Location: LCCOMB_X64_Y7_N22
\inst54|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux1~0_combout\ = (\Enable_Decoder~combout\ & (!\yth|WideOr13~0_combout\ & (\yth|WideOr14~1_combout\ & !\yth|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_Decoder~combout\,
	datab => \yth|WideOr13~0_combout\,
	datac => \yth|WideOr14~1_combout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y7_N28
\inst54|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux2~0_combout\ = (\Enable_Decoder~combout\ & (\yth|WideOr13~0_combout\ & (!\yth|WideOr14~1_combout\ & !\yth|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_Decoder~combout\,
	datab => \yth|WideOr13~0_combout\,
	datac => \yth|WideOr14~1_combout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y7_N6
\yth|WideOr14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr14~0_combout\ = (\yth|yfsm.s5~regout\) # (\yth|yfsm.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yth|yfsm.s5~regout\,
	datad => \yth|yfsm.s7~regout\,
	combout => \yth|WideOr14~0_combout\);

-- Location: LCCOMB_X63_Y8_N12
\inst|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\yth|yfsm.s1~regout\ & !\yth|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \yth|yfsm.s1~regout\,
	datad => \yth|yfsm.s3~regout\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X64_Y7_N10
\inst54|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux3~0_combout\ = (!\yth|yfsm.s8~regout\ & (\Enable_Decoder~combout\ & ((\yth|WideOr14~0_combout\) # (!\inst|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s8~regout\,
	datab => \yth|WideOr14~0_combout\,
	datac => \Enable_Decoder~combout\,
	datad => \inst|Selector8~0_combout\,
	combout => \inst54|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y7_N4
\inst54|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux3~1_combout\ = (\inst54|Mux3~0_combout\ & (\yth|WideOr13~0_combout\ & !\yth|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|Mux3~0_combout\,
	datab => \yth|WideOr13~0_combout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux3~1_combout\);

-- Location: LCCOMB_X64_Y7_N30
\inst54|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux4~0_combout\ = (\Enable_Decoder~combout\ & (!\yth|WideOr13~0_combout\ & (!\yth|WideOr14~1_combout\ & \yth|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable_Decoder~combout\,
	datab => \yth|WideOr13~0_combout\,
	datac => \yth|WideOr14~1_combout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\inst54|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux5~0_combout\ = (\inst54|Mux3~0_combout\ & (!\yth|WideOr13~0_combout\ & \yth|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|Mux3~0_combout\,
	datab => \yth|WideOr13~0_combout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y7_N2
\inst54|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux6~0_combout\ = (\inst54|Mux0~6_combout\ & (\yth|WideOr13~0_combout\ & (!\yth|yfsm.s8~regout\ & \yth|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|Mux0~6_combout\,
	datab => \yth|WideOr13~0_combout\,
	datac => \yth|yfsm.s8~regout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y7_N24
\inst54|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux7~0_combout\ = (\inst54|Mux3~0_combout\ & (\yth|WideOr13~0_combout\ & \yth|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst54|Mux3~0_combout\,
	datab => \yth|WideOr13~0_combout\,
	datad => \yth|WideOr12~0_combout\,
	combout => \inst54|Mux7~0_combout\);

-- Location: LCCOMB_X64_Y7_N14
\inst54|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst54|Mux8~0_combout\ = (\yth|yfsm.s8~regout\ & \Enable_Decoder~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s8~regout\,
	datac => \Enable_Decoder~combout\,
	combout => \inst54|Mux8~0_combout\);

-- Location: CLKDELAYCTRL_G7
\Clock~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \Clock~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_A~I\ : cycloneii_io
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
	padio => ww_Reset_A,
	combout => \Reset_A~combout\);

-- Location: LCFF_X61_Y8_N7
\inst2|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(3));

-- Location: LCCOMB_X62_Y7_N6
\inst|Result[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~1_combout\ = (\yth|yfsm.s8~regout\) # (\yth|yfsm.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yth|yfsm.s8~regout\,
	datad => \yth|yfsm.s7~regout\,
	combout => \inst|Result[3]~1_combout\);

-- Location: LCCOMB_X62_Y7_N12
\inst|Result[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~0_combout\ = (\yth|yfsm.s3~regout\) # ((\yth|yfsm.s2~regout\ & (\yth|yfsm.s1~regout\)) # (!\yth|yfsm.s2~regout\ & ((\yth|yfsm.s5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s2~regout\,
	datab => \yth|yfsm.s3~regout\,
	datac => \yth|yfsm.s1~regout\,
	datad => \yth|yfsm.s5~regout\,
	combout => \inst|Result[3]~0_combout\);

-- Location: LCCOMB_X62_Y7_N4
\yth|WideOr13\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr13~combout\ = (\yth|yfsm.s2~regout\) # (\yth|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s2~regout\,
	datad => \yth|yfsm.s3~regout\,
	combout => \yth|WideOr13~combout\);

-- Location: LCCOMB_X61_Y7_N8
\inst|Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~9_combout\ = (!\inst|Result[3]~2_combout\ & (!\inst|Result[3]~1_combout\ & (\inst|Result[3]~0_combout\ & !\yth|WideOr13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~2_combout\,
	datab => \inst|Result[3]~1_combout\,
	datac => \inst|Result[3]~0_combout\,
	datad => \yth|WideOr13~combout\,
	combout => \inst|Selector5~9_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: CLKDELAYCTRL_G4
\Reset_B~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \Reset_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \Reset_B~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G4
\Reset_B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~clkctrl_outclk\);

-- Location: LCFF_X61_Y8_N23
\inst3|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(3));

-- Location: LCCOMB_X59_Y8_N2
\inst|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~4_combout\ = (\inst|Result[3]~2_combout\ & (\inst3|Q\(3) $ (\inst2|Q\(3) $ (\inst|Result[3]~1_combout\)))) # (!\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ & ((\inst3|Q\(3)) # (\inst2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~2_combout\,
	datab => \inst3|Q\(3),
	datac => \inst2|Q\(3),
	datad => \inst|Result[3]~1_combout\,
	combout => \inst|Selector5~4_combout\);

-- Location: LCCOMB_X62_Y7_N26
\inst|Result[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~2_combout\ = (\yth|yfsm.s8~regout\) # ((\yth|yfsm.s6~regout\ & !\yth|yfsm.s7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s8~regout\,
	datac => \yth|yfsm.s6~regout\,
	datad => \yth|yfsm.s7~regout\,
	combout => \inst|Result[3]~2_combout\);

-- Location: LCCOMB_X62_Y7_N2
\inst|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~7_combout\ = (!\inst|Result[3]~0_combout\ & (!\inst|Result[3]~1_combout\ & (!\yth|WideOr13~combout\ & !\inst|Result[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~0_combout\,
	datab => \inst|Result[3]~1_combout\,
	datac => \yth|WideOr13~combout\,
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector5~7_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCFF_X61_Y8_N5
\inst3|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCFF_X61_Y8_N19
\inst3|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(1));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X61_Y8_N1
\inst3|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(0));

-- Location: LCCOMB_X61_Y8_N0
\inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst2|Q\(0) & ((GND) # (!\inst3|Q\(0)))) # (!\inst2|Q\(0) & (\inst3|Q\(0) $ (GND)))
-- \inst|Add1~1\ = CARRY((\inst2|Q\(0)) # (!\inst3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X61_Y8_N2
\inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (!\inst|Add1~1\)) # (!\inst3|Q\(1) & (\inst|Add1~1\ & VCC)))) # (!\inst2|Q\(1) & ((\inst3|Q\(1) & ((\inst|Add1~1\) # (GND))) # (!\inst3|Q\(1) & (!\inst|Add1~1\))))
-- \inst|Add1~3\ = CARRY((\inst2|Q\(1) & (\inst3|Q\(1) & !\inst|Add1~1\)) # (!\inst2|Q\(1) & ((\inst3|Q\(1)) # (!\inst|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X61_Y8_N4
\inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = ((\inst2|Q\(2) $ (\inst3|Q\(2) $ (\inst|Add1~3\)))) # (GND)
-- \inst|Add1~5\ = CARRY((\inst2|Q\(2) & ((!\inst|Add1~3\) # (!\inst3|Q\(2)))) # (!\inst2|Q\(2) & (!\inst3|Q\(2) & !\inst|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X61_Y8_N6
\inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst2|Q\(3) & ((\inst3|Q\(3) & (!\inst|Add1~5\)) # (!\inst3|Q\(3) & (\inst|Add1~5\ & VCC)))) # (!\inst2|Q\(3) & ((\inst3|Q\(3) & ((\inst|Add1~5\) # (GND))) # (!\inst3|Q\(3) & (!\inst|Add1~5\))))
-- \inst|Add1~7\ = CARRY((\inst2|Q\(3) & (\inst3|Q\(3) & !\inst|Add1~5\)) # (!\inst2|Q\(3) & ((\inst3|Q\(3)) # (!\inst|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Q\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X60_Y8_N8
\inst|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~5_combout\ = (\inst|Selector8~0_combout\ & (!\inst2|Q\(3) & (!\inst3|Q\(3)))) # (!\inst|Selector8~0_combout\ & (((\inst|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Q\(3),
	datac => \inst|Add1~6_combout\,
	datad => \inst|Selector8~0_combout\,
	combout => \inst|Selector5~5_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X61_Y8_N21
\inst2|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(2));

-- Location: LCCOMB_X60_Y8_N16
\inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst2|Q\(0) & (\inst3|Q\(0) $ (VCC))) # (!\inst2|Q\(0) & ((\inst3|Q\(0)) # (GND)))
-- \inst|Add2~1\ = CARRY((\inst3|Q\(0)) # (!\inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X60_Y8_N18
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (!\inst|Add2~1\)) # (!\inst3|Q\(1) & ((\inst|Add2~1\) # (GND))))) # (!\inst2|Q\(1) & ((\inst3|Q\(1) & (\inst|Add2~1\ & VCC)) # (!\inst3|Q\(1) & (!\inst|Add2~1\))))
-- \inst|Add2~3\ = CARRY((\inst2|Q\(1) & ((!\inst|Add2~1\) # (!\inst3|Q\(1)))) # (!\inst2|Q\(1) & (!\inst3|Q\(1) & !\inst|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X60_Y8_N20
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst3|Q\(2) $ (\inst2|Q\(2) $ (\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst3|Q\(2) & ((!\inst|Add2~3\) # (!\inst2|Q\(2)))) # (!\inst3|Q\(2) & (!\inst2|Q\(2) & !\inst|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(2),
	datab => \inst2|Q\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X60_Y8_N22
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst2|Q\(3) & ((\inst3|Q\(3) & (!\inst|Add2~5\)) # (!\inst3|Q\(3) & ((\inst|Add2~5\) # (GND))))) # (!\inst2|Q\(3) & ((\inst3|Q\(3) & (\inst|Add2~5\ & VCC)) # (!\inst3|Q\(3) & (!\inst|Add2~5\))))
-- \inst|Add2~7\ = CARRY((\inst2|Q\(3) & ((!\inst|Add2~5\) # (!\inst3|Q\(3)))) # (!\inst2|Q\(3) & (!\inst3|Q\(3) & !\inst|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Q\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X61_Y8_N17
\inst2|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(0));

-- Location: LCCOMB_X63_Y8_N16
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst3|Q\(0) & (\inst2|Q\(0) $ (VCC))) # (!\inst3|Q\(0) & (\inst2|Q\(0) & VCC))
-- \inst|Add0~1\ = CARRY((\inst3|Q\(0) & \inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(0),
	datab => \inst2|Q\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X63_Y8_N18
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst2|Q\(1) & ((\inst3|Q\(1) & (\inst|Add0~1\ & VCC)) # (!\inst3|Q\(1) & (!\inst|Add0~1\)))) # (!\inst2|Q\(1) & ((\inst3|Q\(1) & (!\inst|Add0~1\)) # (!\inst3|Q\(1) & ((\inst|Add0~1\) # (GND)))))
-- \inst|Add0~3\ = CARRY((\inst2|Q\(1) & (!\inst3|Q\(1) & !\inst|Add0~1\)) # (!\inst2|Q\(1) & ((!\inst|Add0~1\) # (!\inst3|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X63_Y8_N20
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\inst2|Q\(2) $ (\inst3|Q\(2) $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\inst2|Q\(2) & ((\inst3|Q\(2)) # (!\inst|Add0~3\))) # (!\inst2|Q\(2) & (\inst3|Q\(2) & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X63_Y8_N22
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst2|Q\(3) & ((\inst3|Q\(3) & (\inst|Add0~5\ & VCC)) # (!\inst3|Q\(3) & (!\inst|Add0~5\)))) # (!\inst2|Q\(3) & ((\inst3|Q\(3) & (!\inst|Add0~5\)) # (!\inst3|Q\(3) & ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst2|Q\(3) & (!\inst3|Q\(3) & !\inst|Add0~5\)) # (!\inst2|Q\(3) & ((!\inst|Add0~5\) # (!\inst3|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Q\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X59_Y8_N20
\inst|Selector5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~11_combout\ = (\yth|yfsm.s3~regout\ & (((\inst|Add2~6_combout\)))) # (!\yth|yfsm.s3~regout\ & ((\yth|yfsm.s1~regout\ & (\inst|Add2~6_combout\)) # (!\yth|yfsm.s1~regout\ & ((\inst|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s3~regout\,
	datab => \yth|yfsm.s1~regout\,
	datac => \inst|Add2~6_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Selector5~11_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X61_Y8_N15
\inst2|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(7));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X61_Y8_N31
\inst3|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(7));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X61_Y8_N29
\inst3|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(6));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X61_Y8_N27
\inst3|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(5));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X61_Y8_N9
\inst2|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(4));

-- Location: LCCOMB_X61_Y8_N16
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst2|Q\(0) & !\inst3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X61_Y8_N18
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst2|Q\(1) & (\inst3|Q\(1) & !\inst|LessThan0~1_cout\)) # (!\inst2|Q\(1) & ((\inst3|Q\(1)) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X61_Y8_N20
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst2|Q\(2) & ((!\inst|LessThan0~3_cout\) # (!\inst3|Q\(2)))) # (!\inst2|Q\(2) & (!\inst3|Q\(2) & !\inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst3|Q\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X61_Y8_N22
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst2|Q\(3) & (\inst3|Q\(3) & !\inst|LessThan0~5_cout\)) # (!\inst2|Q\(3) & ((\inst3|Q\(3)) # (!\inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(3),
	datab => \inst3|Q\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X61_Y8_N24
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst3|Q\(4) & (\inst2|Q\(4) & !\inst|LessThan0~7_cout\)) # (!\inst3|Q\(4) & ((\inst2|Q\(4)) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst2|Q\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X61_Y8_N26
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst2|Q\(5) & (\inst3|Q\(5) & !\inst|LessThan0~9_cout\)) # (!\inst2|Q\(5) & ((\inst3|Q\(5)) # (!\inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst3|Q\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X61_Y8_N28
\inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst2|Q\(6) & ((!\inst|LessThan0~11_cout\) # (!\inst3|Q\(6)))) # (!\inst2|Q\(6) & (!\inst3|Q\(6) & !\inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst3|Q\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X61_Y8_N30
\inst|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\inst2|Q\(7) & ((\inst|LessThan0~13_cout\) # (!\inst3|Q\(7)))) # (!\inst2|Q\(7) & (\inst|LessThan0~13_cout\ & !\inst3|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Q\(7),
	datad => \inst3|Q\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

-- Location: LCCOMB_X62_Y8_N8
\inst|Result[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result[3]~3_combout\ = (\yth|yfsm.s3~regout\ & (((\inst|LessThan0~14_combout\)))) # (!\yth|yfsm.s3~regout\ & ((\yth|yfsm.s1~regout\ & ((\inst|LessThan0~14_combout\))) # (!\yth|yfsm.s1~regout\ & (\yth|yfsm.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s3~regout\,
	datab => \yth|yfsm.s1~regout\,
	datac => \yth|yfsm.s4~regout\,
	datad => \inst|LessThan0~14_combout\,
	combout => \inst|Result[3]~3_combout\);

-- Location: LCCOMB_X59_Y8_N0
\inst|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~6_combout\ = (\inst|Result[3]~3_combout\ & (\inst|Selector5~5_combout\)) # (!\inst|Result[3]~3_combout\ & ((\inst|Selector5~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector5~5_combout\,
	datac => \inst|Selector5~11_combout\,
	datad => \inst|Result[3]~3_combout\,
	combout => \inst|Selector5~6_combout\);

-- Location: LCCOMB_X59_Y8_N22
\inst|Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~8_combout\ = (\inst|Selector5~3_combout\) # ((\inst|Selector5~4_combout\) # ((\inst|Selector5~7_combout\ & \inst|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~3_combout\,
	datab => \inst|Selector5~4_combout\,
	datac => \inst|Selector5~7_combout\,
	datad => \inst|Selector5~6_combout\,
	combout => \inst|Selector5~8_combout\);

-- Location: LCCOMB_X59_Y8_N28
\inst|Selector5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~10_combout\ = (\inst|Selector5~8_combout\) # ((\inst3|Q\(3) & (\inst2|Q\(3) & \inst|Selector5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(3),
	datab => \inst2|Q\(3),
	datac => \inst|Selector5~9_combout\,
	datad => \inst|Selector5~8_combout\,
	combout => \inst|Selector5~10_combout\);

-- Location: LCFF_X59_Y8_N29
\inst|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector5~10_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(3));

-- Location: LCCOMB_X62_Y7_N24
\inst|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~2_combout\ = (!\yth|yfsm.s8~regout\ & (!\yth|yfsm.s6~regout\ & (\yth|WideOr13~combout\ & !\yth|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s8~regout\,
	datab => \yth|yfsm.s6~regout\,
	datac => \yth|WideOr13~combout\,
	datad => \yth|yfsm.s7~regout\,
	combout => \inst|Selector5~2_combout\);

-- Location: LCCOMB_X62_Y8_N14
\inst|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~2_combout\ = (\inst|Selector5~2_combout\ & (((\inst|Result[3]~0_combout\ & !\inst3|Q\(2))) # (!\inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst|Result[3]~0_combout\,
	datac => \inst|Selector5~2_combout\,
	datad => \inst3|Q\(2),
	combout => \inst|Selector6~2_combout\);

-- Location: LCCOMB_X62_Y8_N4
\inst|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~4_combout\ = (\inst|Selector8~0_combout\ & (!\inst2|Q\(2) & ((!\inst3|Q\(2))))) # (!\inst|Selector8~0_combout\ & (((\inst|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(2),
	datab => \inst|Selector8~0_combout\,
	datac => \inst|Add1~4_combout\,
	datad => \inst3|Q\(2),
	combout => \inst|Selector6~4_combout\);

-- Location: LCCOMB_X62_Y8_N12
\inst|Selector6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~8_combout\ = (\yth|yfsm.s3~regout\ & (((\inst|Add2~4_combout\)))) # (!\yth|yfsm.s3~regout\ & ((\yth|yfsm.s1~regout\ & (\inst|Add2~4_combout\)) # (!\yth|yfsm.s1~regout\ & ((\inst|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s3~regout\,
	datab => \yth|yfsm.s1~regout\,
	datac => \inst|Add2~4_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|Selector6~8_combout\);

-- Location: LCCOMB_X62_Y8_N10
\inst|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~5_combout\ = (\inst|Result[3]~3_combout\ & (\inst|Selector6~4_combout\)) # (!\inst|Result[3]~3_combout\ & ((\inst|Selector6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector6~4_combout\,
	datac => \inst|Result[3]~3_combout\,
	datad => \inst|Selector6~8_combout\,
	combout => \inst|Selector6~5_combout\);

-- Location: LCCOMB_X62_Y8_N28
\inst|Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~6_combout\ = (\inst|Selector6~3_combout\) # ((\inst|Selector6~2_combout\) # ((\inst|Selector5~7_combout\ & \inst|Selector6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector6~3_combout\,
	datab => \inst|Selector5~7_combout\,
	datac => \inst|Selector6~2_combout\,
	datad => \inst|Selector6~5_combout\,
	combout => \inst|Selector6~6_combout\);

-- Location: LCCOMB_X62_Y8_N22
\inst|Selector6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~7_combout\ = (\inst|Selector6~6_combout\) # ((\inst3|Q\(2) & (\inst|Selector5~9_combout\ & \inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(2),
	datab => \inst|Selector5~9_combout\,
	datac => \inst2|Q\(2),
	datad => \inst|Selector6~6_combout\,
	combout => \inst|Selector6~7_combout\);

-- Location: LCFF_X62_Y8_N23
\inst|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector6~7_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X61_Y8_N3
\inst2|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(1));

-- Location: LCCOMB_X59_Y8_N6
\inst|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~3_combout\ = (\inst|Result[3]~2_combout\ & (\inst3|Q\(1) $ (\inst|Result[3]~1_combout\ $ (\inst2|Q\(1))))) # (!\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ & ((\inst3|Q\(1)) # (\inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(1),
	datab => \inst|Result[3]~1_combout\,
	datac => \inst2|Q\(1),
	datad => \inst|Result[3]~2_combout\,
	combout => \inst|Selector7~3_combout\);

-- Location: LCCOMB_X60_Y8_N14
\inst|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~4_combout\ = (\inst|Selector8~0_combout\ & (!\inst2|Q\(1) & (!\inst3|Q\(1)))) # (!\inst|Selector8~0_combout\ & (((\inst|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(1),
	datab => \inst3|Q\(1),
	datac => \inst|Add1~2_combout\,
	datad => \inst|Selector8~0_combout\,
	combout => \inst|Selector7~4_combout\);

-- Location: LCCOMB_X59_Y8_N14
\inst|Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~8_combout\ = (\yth|yfsm.s3~regout\ & (((\inst|Add2~2_combout\)))) # (!\yth|yfsm.s3~regout\ & ((\yth|yfsm.s1~regout\ & ((\inst|Add2~2_combout\))) # (!\yth|yfsm.s1~regout\ & (\inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s3~regout\,
	datab => \yth|yfsm.s1~regout\,
	datac => \inst|Add0~2_combout\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|Selector7~8_combout\);

-- Location: LCCOMB_X59_Y8_N12
\inst|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~5_combout\ = (\inst|Result[3]~3_combout\ & (\inst|Selector7~4_combout\)) # (!\inst|Result[3]~3_combout\ & ((\inst|Selector7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector7~4_combout\,
	datac => \inst|Selector7~8_combout\,
	datad => \inst|Result[3]~3_combout\,
	combout => \inst|Selector7~5_combout\);

-- Location: LCCOMB_X59_Y8_N18
\inst|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~6_combout\ = (\inst|Selector7~2_combout\) # ((\inst|Selector7~3_combout\) # ((\inst|Selector5~7_combout\ & \inst|Selector7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~2_combout\,
	datab => \inst|Selector7~3_combout\,
	datac => \inst|Selector5~7_combout\,
	datad => \inst|Selector7~5_combout\,
	combout => \inst|Selector7~6_combout\);

-- Location: LCCOMB_X59_Y8_N26
\inst|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector7~7_combout\ = (\inst|Selector7~6_combout\) # ((\inst3|Q\(1) & (\inst|Selector5~9_combout\ & \inst2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(1),
	datab => \inst|Selector5~9_combout\,
	datac => \inst2|Q\(1),
	datad => \inst|Selector7~6_combout\,
	combout => \inst|Selector7~7_combout\);

-- Location: LCFF_X59_Y8_N27
\inst|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector7~7_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(1));

-- Location: LCCOMB_X63_Y7_N8
\inst|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (!\yth|yfsm.s5~regout\ & !\yth|yfsm.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \yth|yfsm.s5~regout\,
	datad => \yth|yfsm.s8~regout\,
	combout => \inst|Selector8~1_combout\);

-- Location: LCCOMB_X63_Y7_N12
\inst|Selector8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~3_combout\ = (\inst|Selector8~2_combout\ & (\inst|Selector8~1_combout\ & (!\yth|yfsm.s2~regout\ & \inst|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~2_combout\,
	datab => \inst|Selector8~1_combout\,
	datac => \yth|yfsm.s2~regout\,
	datad => \inst|Selector8~0_combout\,
	combout => \inst|Selector8~3_combout\);

-- Location: LCCOMB_X62_Y7_N28
\inst|Selector8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~5_combout\ = (\inst2|Q\(0) & (\inst3|Q\(0) & (!\yth|yfsm.s4~regout\ & !\yth|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(0),
	datab => \inst3|Q\(0),
	datac => \yth|yfsm.s4~regout\,
	datad => \yth|yfsm.s7~regout\,
	combout => \inst|Selector8~5_combout\);

-- Location: LCCOMB_X63_Y7_N22
\inst|Selector8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~4_combout\ = (!\yth|yfsm.s2~regout\ & (!\yth|yfsm.s3~regout\ & (\yth|yfsm.s5~regout\ & !\yth|yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s2~regout\,
	datab => \yth|yfsm.s3~regout\,
	datac => \yth|yfsm.s5~regout\,
	datad => \yth|yfsm.s1~regout\,
	combout => \inst|Selector8~4_combout\);

-- Location: LCCOMB_X63_Y7_N20
\inst|Selector8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~6_combout\ = (\yth|yfsm.s8~regout\ & (((!\inst|Add0~0_combout\)))) # (!\yth|yfsm.s8~regout\ & (\inst|Selector8~5_combout\ & ((\inst|Selector8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s8~regout\,
	datab => \inst|Selector8~5_combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|Selector8~4_combout\,
	combout => \inst|Selector8~6_combout\);

-- Location: LCCOMB_X62_Y8_N26
\inst|Result~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Result~4_combout\ = (\inst|LessThan0~14_combout\ & ((\inst|Add1~0_combout\))) # (!\inst|LessThan0~14_combout\ & (\inst|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~0_combout\,
	datac => \inst|LessThan0~14_combout\,
	datad => \inst|Add1~0_combout\,
	combout => \inst|Result~4_combout\);

-- Location: LCCOMB_X63_Y8_N10
\inst|Selector8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~7_combout\ = (\inst|Selector8~0_combout\ & (!\yth|WideOr13~combout\ & (\inst|Add0~0_combout\))) # (!\inst|Selector8~0_combout\ & ((\yth|WideOr13~combout\) # ((\inst|Result~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~0_combout\,
	datab => \yth|WideOr13~combout\,
	datac => \inst|Add0~0_combout\,
	datad => \inst|Result~4_combout\,
	combout => \inst|Selector8~7_combout\);

-- Location: LCCOMB_X63_Y8_N0
\inst|Selector8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~8_combout\ = (\yth|WideOr13~combout\ & (((!\inst3|Q\(0) & \inst|Selector8~7_combout\)) # (!\inst2|Q\(0)))) # (!\yth|WideOr13~combout\ & (((\inst|Selector8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(0),
	datab => \yth|WideOr13~combout\,
	datac => \inst2|Q\(0),
	datad => \inst|Selector8~7_combout\,
	combout => \inst|Selector8~8_combout\);

-- Location: LCCOMB_X63_Y8_N14
\inst|Selector8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector8~10_combout\ = (\inst|Selector8~3_combout\) # ((\inst|Selector8~6_combout\) # ((\inst|Selector8~9_combout\ & \inst|Selector8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~9_combout\,
	datab => \inst|Selector8~3_combout\,
	datac => \inst|Selector8~6_combout\,
	datad => \inst|Selector8~8_combout\,
	combout => \inst|Selector8~10_combout\);

-- Location: LCFF_X63_Y8_N15
\inst|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector8~10_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(0));

-- Location: LCCOMB_X62_Y8_N24
\inst|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~2_combout\ = (\inst|Selector5~2_combout\ & (((!\inst3|Q\(7) & \inst|Result[3]~0_combout\)) # (!\inst2|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(7),
	datab => \inst2|Q\(7),
	datac => \inst|Selector5~2_combout\,
	datad => \inst|Result[3]~0_combout\,
	combout => \inst|Selector1~2_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X61_Y8_N13
\inst2|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(6));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X61_Y8_N11
\inst2|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset_A~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|Q\(5));

-- Location: LCCOMB_X60_Y8_N24
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\inst3|Q\(4) $ (\inst2|Q\(4) $ (\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\inst3|Q\(4) & ((!\inst|Add2~7\) # (!\inst2|Q\(4)))) # (!\inst3|Q\(4) & (!\inst2|Q\(4) & !\inst|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst2|Q\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X60_Y8_N30
\inst|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = \inst2|Q\(7) $ (\inst|Add2~13\ $ (!\inst3|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Q\(7),
	datad => \inst3|Q\(7),
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\);

-- Location: LCCOMB_X63_Y8_N24
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst3|Q\(4) $ (\inst2|Q\(4) $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst3|Q\(4) & ((\inst2|Q\(4)) # (!\inst|Add0~7\))) # (!\inst3|Q\(4) & (\inst2|Q\(4) & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst2|Q\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X63_Y8_N28
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = ((\inst3|Q\(6) $ (\inst2|Q\(6) $ (!\inst|Add0~11\)))) # (GND)
-- \inst|Add0~13\ = CARRY((\inst3|Q\(6) & ((\inst2|Q\(6)) # (!\inst|Add0~11\))) # (!\inst3|Q\(6) & (\inst2|Q\(6) & !\inst|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst2|Q\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X63_Y8_N30
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \inst2|Q\(7) $ (\inst3|Q\(7) $ (\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(7),
	datab => \inst3|Q\(7),
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X62_Y8_N2
\inst|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~8_combout\ = (\yth|yfsm.s3~regout\ & (((\inst|Add2~14_combout\)))) # (!\yth|yfsm.s3~regout\ & ((\yth|yfsm.s1~regout\ & (\inst|Add2~14_combout\)) # (!\yth|yfsm.s1~regout\ & ((\inst|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s3~regout\,
	datab => \yth|yfsm.s1~regout\,
	datac => \inst|Add2~14_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|Selector1~8_combout\);

-- Location: LCCOMB_X62_Y8_N18
\inst|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~5_combout\ = (\inst|Result[3]~3_combout\ & (\inst|Selector1~4_combout\)) # (!\inst|Result[3]~3_combout\ & ((\inst|Selector1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector1~4_combout\,
	datac => \inst|Result[3]~3_combout\,
	datad => \inst|Selector1~8_combout\,
	combout => \inst|Selector1~5_combout\);

-- Location: LCCOMB_X62_Y8_N0
\inst|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~6_combout\ = (\inst|Selector1~3_combout\) # ((\inst|Selector1~2_combout\) # ((\inst|Selector5~7_combout\ & \inst|Selector1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector1~3_combout\,
	datab => \inst|Selector5~7_combout\,
	datac => \inst|Selector1~2_combout\,
	datad => \inst|Selector1~5_combout\,
	combout => \inst|Selector1~6_combout\);

-- Location: LCCOMB_X62_Y8_N20
\inst|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~7_combout\ = (\inst|Selector1~6_combout\) # ((\inst3|Q\(7) & (\inst2|Q\(7) & \inst|Selector5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(7),
	datab => \inst2|Q\(7),
	datac => \inst|Selector5~9_combout\,
	datad => \inst|Selector1~6_combout\,
	combout => \inst|Selector1~7_combout\);

-- Location: LCFF_X62_Y8_N21
\inst|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector1~7_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(7));

-- Location: LCCOMB_X61_Y7_N14
\inst|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst|Selector5~2_combout\ & (((!\inst3|Q\(6) & \inst|Result[3]~0_combout\)) # (!\inst2|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(6),
	datab => \inst|Selector5~2_combout\,
	datac => \inst|Result[3]~0_combout\,
	datad => \inst2|Q\(6),
	combout => \inst|Selector2~2_combout\);

-- Location: LCCOMB_X61_Y7_N0
\inst|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~3_combout\ = (\inst2|Q\(6) & (((\inst3|Q\(6)) # (!\inst|Selector5~2_combout\)) # (!\inst|Result[3]~0_combout\))) # (!\inst2|Q\(6) & (((\inst3|Q\(6) & !\inst|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(6),
	datab => \inst|Result[3]~0_combout\,
	datac => \inst3|Q\(6),
	datad => \inst|Selector5~2_combout\,
	combout => \inst|Selector2~3_combout\);

-- Location: LCCOMB_X61_Y7_N30
\inst|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~4_combout\ = (\inst|Selector8~0_combout\ & (((\inst|Add0~12_combout\) # (\inst|Result[3]~3_combout\)))) # (!\inst|Selector8~0_combout\ & (\inst|Add2~12_combout\ & ((!\inst|Result[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~12_combout\,
	datab => \inst|Selector8~0_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Result[3]~3_combout\,
	combout => \inst|Selector2~4_combout\);

-- Location: LCCOMB_X61_Y7_N12
\inst|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~5_combout\ = (\inst|Result[3]~3_combout\ & ((\inst|Selector2~4_combout\ & ((!\inst|Selector2~3_combout\))) # (!\inst|Selector2~4_combout\ & (\inst|Add1~12_combout\)))) # (!\inst|Result[3]~3_combout\ & (((\inst|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|Selector2~3_combout\,
	datac => \inst|Result[3]~3_combout\,
	datad => \inst|Selector2~4_combout\,
	combout => \inst|Selector2~5_combout\);

-- Location: LCCOMB_X61_Y7_N20
\inst|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~6_combout\ = (\inst|Selector2~1_combout\) # ((\inst|Selector2~2_combout\) # ((\inst|Selector5~7_combout\ & \inst|Selector2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector2~1_combout\,
	datab => \inst|Selector2~2_combout\,
	datac => \inst|Selector5~7_combout\,
	datad => \inst|Selector2~5_combout\,
	combout => \inst|Selector2~6_combout\);

-- Location: LCFF_X61_Y7_N21
\inst|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector2~6_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(6));

-- Location: LCCOMB_X63_Y7_N28
\inst|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~2_combout\ = (\inst|Selector5~2_combout\ & (((\inst|Result[3]~0_combout\ & !\inst3|Q\(5))) # (!\inst2|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~0_combout\,
	datab => \inst3|Q\(5),
	datac => \inst2|Q\(5),
	datad => \inst|Selector5~2_combout\,
	combout => \inst|Selector3~2_combout\);

-- Location: LCCOMB_X61_Y8_N8
\inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = ((\inst3|Q\(4) $ (\inst2|Q\(4) $ (\inst|Add1~7\)))) # (GND)
-- \inst|Add1~9\ = CARRY((\inst3|Q\(4) & (\inst2|Q\(4) & !\inst|Add1~7\)) # (!\inst3|Q\(4) & ((\inst2|Q\(4)) # (!\inst|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst2|Q\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X62_Y8_N30
\inst|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~4_combout\ = (\inst|Selector8~0_combout\ & (!\inst2|Q\(5) & (!\inst3|Q\(5)))) # (!\inst|Selector8~0_combout\ & (((\inst|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst|Selector8~0_combout\,
	datac => \inst3|Q\(5),
	datad => \inst|Add1~10_combout\,
	combout => \inst|Selector3~4_combout\);

-- Location: LCCOMB_X63_Y8_N8
\inst|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~5_combout\ = (\inst|Result[3]~3_combout\ & ((\inst|Selector3~4_combout\))) # (!\inst|Result[3]~3_combout\ & (\inst|Selector3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~8_combout\,
	datac => \inst|Selector3~4_combout\,
	datad => \inst|Result[3]~3_combout\,
	combout => \inst|Selector3~5_combout\);

-- Location: LCCOMB_X64_Y8_N28
\inst|Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~6_combout\ = (\inst|Selector3~3_combout\) # ((\inst|Selector3~2_combout\) # ((\inst|Selector5~7_combout\ & \inst|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~3_combout\,
	datab => \inst|Selector5~7_combout\,
	datac => \inst|Selector3~2_combout\,
	datad => \inst|Selector3~5_combout\,
	combout => \inst|Selector3~6_combout\);

-- Location: LCCOMB_X64_Y8_N12
\inst|Selector3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~7_combout\ = (\inst|Selector3~6_combout\) # ((\inst2|Q\(5) & (\inst|Selector5~9_combout\ & \inst3|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Q\(5),
	datab => \inst|Selector5~9_combout\,
	datac => \inst3|Q\(5),
	datad => \inst|Selector3~6_combout\,
	combout => \inst|Selector3~7_combout\);

-- Location: LCFF_X64_Y8_N13
\inst|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector3~7_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(5));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X61_Y8_N25
\inst3|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Q\(4));

-- Location: LCCOMB_X61_Y7_N22
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ $ (\inst2|Q\(4) $ (\inst3|Q\(4))))) # (!\inst|Result[3]~2_combout\ & (\inst|Result[3]~1_combout\ & ((\inst2|Q\(4)) # (\inst3|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result[3]~2_combout\,
	datab => \inst|Result[3]~1_combout\,
	datac => \inst2|Q\(4),
	datad => \inst3|Q\(4),
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X60_Y7_N16
\inst|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|Selector4~0_combout\) # ((\inst3|Q\(4) & (\inst2|Q\(4) & \inst|Selector5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Q\(4),
	datab => \inst2|Q\(4),
	datac => \inst|Selector5~9_combout\,
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X61_Y7_N28
\inst|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~4_combout\ = (\inst|Selector8~0_combout\ & (((\inst|Add0~8_combout\) # (\inst|Result[3]~3_combout\)))) # (!\inst|Selector8~0_combout\ & (\inst|Add2~8_combout\ & ((!\inst|Result[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~0_combout\,
	datab => \inst|Add2~8_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Result[3]~3_combout\,
	combout => \inst|Selector4~4_combout\);

-- Location: LCCOMB_X61_Y7_N26
\inst|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~5_combout\ = (\inst|Result[3]~3_combout\ & ((\inst|Selector4~4_combout\ & (!\inst|Selector4~3_combout\)) # (!\inst|Selector4~4_combout\ & ((\inst|Add1~8_combout\))))) # (!\inst|Result[3]~3_combout\ & (((\inst|Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector4~3_combout\,
	datab => \inst|Add1~8_combout\,
	datac => \inst|Result[3]~3_combout\,
	datad => \inst|Selector4~4_combout\,
	combout => \inst|Selector4~5_combout\);

-- Location: LCCOMB_X61_Y7_N2
\inst|Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~6_combout\ = (\inst|Selector4~2_combout\) # ((\inst|Selector4~1_combout\) # ((\inst|Selector5~7_combout\ & \inst|Selector4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector4~2_combout\,
	datab => \inst|Selector4~1_combout\,
	datac => \inst|Selector5~7_combout\,
	datad => \inst|Selector4~5_combout\,
	combout => \inst|Selector4~6_combout\);

-- Location: LCFF_X61_Y7_N3
\inst|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector4~6_combout\,
	ena => \Enable_Decoder~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Result\(4));

-- Location: LCCOMB_X62_Y6_N16
\inst16|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Mux0~0_combout\ = (\inst|Result\(2) & (!\inst|Result\(1) & (\inst|Result\(3) $ (!\inst|Result\(0))))) # (!\inst|Result\(2) & (\inst|Result\(0) & (\inst|Result\(1) $ (!\inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(2),
	datac => \inst|Result\(3),
	datad => \inst|Result\(0),
	combout => \inst16|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y6_N2
\inst16|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Mux1~0_combout\ = (\inst|Result\(1) & ((\inst|Result\(0) & ((\inst|Result\(3)))) # (!\inst|Result\(0) & (\inst|Result\(2))))) # (!\inst|Result\(1) & (\inst|Result\(2) & (\inst|Result\(3) $ (\inst|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(2),
	datac => \inst|Result\(3),
	datad => \inst|Result\(0),
	combout => \inst16|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y6_N12
\inst16|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Mux2~0_combout\ = (\inst|Result\(2) & (\inst|Result\(3) & ((\inst|Result\(1)) # (!\inst|Result\(0))))) # (!\inst|Result\(2) & (\inst|Result\(1) & (!\inst|Result\(3) & !\inst|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(2),
	datac => \inst|Result\(3),
	datad => \inst|Result\(0),
	combout => \inst16|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y6_N18
\inst16|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Mux3~0_combout\ = (\inst|Result\(0) & (\inst|Result\(1) $ ((!\inst|Result\(2))))) # (!\inst|Result\(0) & ((\inst|Result\(1) & (!\inst|Result\(2) & \inst|Result\(3))) # (!\inst|Result\(1) & (\inst|Result\(2) & !\inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(1),
	datab => \inst|Result\(2),
	datac => \inst|Result\(3),
	datad => \inst|Result\(0),
	combout => \inst16|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y7_N4
\inst16|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Mux4~0_combout\ = (\inst|Result\(1) & (((!\inst|Result\(3) & \inst|Result\(0))))) # (!\inst|Result\(1) & ((\inst|Result\(2) & (!\inst|Result\(3))) # (!\inst|Result\(2) & ((\inst|Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(2),
	datab => \inst|Result\(3),
	datac => \inst|Result\(0),
	datad => \inst|Result\(1),
	combout => \inst16|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y7_N18
\inst16|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Mux5~0_combout\ = (\inst|Result\(2) & (\inst|Result\(0) & (\inst|Result\(3) $ (\inst|Result\(1))))) # (!\inst|Result\(2) & (!\inst|Result\(3) & ((\inst|Result\(0)) # (\inst|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(2),
	datab => \inst|Result\(3),
	datac => \inst|Result\(0),
	datad => \inst|Result\(1),
	combout => \inst16|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y7_N24
\inst16|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Mux6~0_combout\ = (\inst|Result\(0) & ((\inst|Result\(3)) # (\inst|Result\(2) $ (\inst|Result\(1))))) # (!\inst|Result\(0) & ((\inst|Result\(1)) # (\inst|Result\(2) $ (\inst|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(2),
	datab => \inst|Result\(3),
	datac => \inst|Result\(0),
	datad => \inst|Result\(1),
	combout => \inst16|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y8_N22
\inst15|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux0~0_combout\ = (\inst|Result\(6) & (!\inst|Result\(5) & (\inst|Result\(4) $ (!\inst|Result\(7))))) # (!\inst|Result\(6) & (\inst|Result\(4) & (\inst|Result\(5) $ (!\inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(5),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(7),
	combout => \inst15|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\inst15|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux1~0_combout\ = (\inst|Result\(5) & ((\inst|Result\(4) & ((\inst|Result\(7)))) # (!\inst|Result\(4) & (\inst|Result\(6))))) # (!\inst|Result\(5) & (\inst|Result\(6) & (\inst|Result\(4) $ (\inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(5),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(7),
	combout => \inst15|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\inst15|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux2~0_combout\ = (\inst|Result\(6) & (\inst|Result\(7) & ((\inst|Result\(5)) # (!\inst|Result\(4))))) # (!\inst|Result\(6) & (\inst|Result\(5) & (!\inst|Result\(4) & !\inst|Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(5),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(7),
	combout => \inst15|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y8_N24
\inst15|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux3~0_combout\ = (\inst|Result\(4) & (\inst|Result\(5) $ ((!\inst|Result\(6))))) # (!\inst|Result\(4) & ((\inst|Result\(5) & (!\inst|Result\(6) & \inst|Result\(7))) # (!\inst|Result\(5) & (\inst|Result\(6) & !\inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(5),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(7),
	combout => \inst15|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\inst15|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux4~0_combout\ = (\inst|Result\(5) & (\inst|Result\(4) & ((!\inst|Result\(7))))) # (!\inst|Result\(5) & ((\inst|Result\(6) & ((!\inst|Result\(7)))) # (!\inst|Result\(6) & (\inst|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(5),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(7),
	combout => \inst15|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\inst15|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux5~0_combout\ = (\inst|Result\(5) & (!\inst|Result\(7) & ((\inst|Result\(4)) # (!\inst|Result\(6))))) # (!\inst|Result\(5) & (\inst|Result\(4) & (\inst|Result\(6) $ (!\inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(5),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(7),
	combout => \inst15|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y8_N26
\inst15|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux6~0_combout\ = (\inst|Result\(4) & ((\inst|Result\(7)) # (\inst|Result\(5) $ (\inst|Result\(6))))) # (!\inst|Result\(4) & ((\inst|Result\(5)) # (\inst|Result\(6) $ (\inst|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Result\(5),
	datab => \inst|Result\(4),
	datac => \inst|Result\(6),
	datad => \inst|Result\(7),
	combout => \inst15|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y7_N10
\inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\Enable_Decoder~combout\ & (\inst|Selector0~0_combout\ & ((\inst|NEG~regout\) # (!\inst|LessThan0~14_combout\)))) # (!\Enable_Decoder~combout\ & (((\inst|NEG~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0_combout\,
	datab => \Enable_Decoder~combout\,
	datac => \inst|NEG~regout\,
	datad => \inst|LessThan0~14_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCFF_X61_Y7_N11
\inst|NEG\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|NEG~regout\);

-- Location: LCCOMB_X62_Y7_N10
\yth|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr11~combout\ = (\yth|yfsm.s4~regout\) # ((\yth|yfsm.s3~regout\) # ((\yth|yfsm.s2~regout\) # (\yth|yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s4~regout\,
	datab => \yth|yfsm.s3~regout\,
	datac => \yth|yfsm.s2~regout\,
	datad => \yth|yfsm.s1~regout\,
	combout => \yth|WideOr11~combout\);

-- Location: LCCOMB_X62_Y7_N18
\yth|WideOr9\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr9~combout\ = (\yth|yfsm.s8~regout\) # ((\yth|yfsm.s5~regout\) # (!\yth|yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s8~regout\,
	datab => \yth|yfsm.s0~regout\,
	datad => \yth|yfsm.s5~regout\,
	combout => \yth|WideOr9~combout\);

-- Location: LCCOMB_X62_Y7_N22
\inst17|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux0~2_combout\ = (!\yth|WideOr11~combout\ & (!\yth|yfsm.s6~regout\ & (!\yth|yfsm.s3~regout\ & !\yth|WideOr9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|WideOr11~combout\,
	datab => \yth|yfsm.s6~regout\,
	datac => \yth|yfsm.s3~regout\,
	datad => \yth|WideOr9~combout\,
	combout => \inst17|Mux0~2_combout\);

-- Location: LCCOMB_X62_Y7_N16
\yth|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \yth|WideOr10~combout\ = (\yth|yfsm.s4~regout\) # ((\yth|yfsm.s8~regout\) # (\yth|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s4~regout\,
	datac => \yth|yfsm.s8~regout\,
	datad => \yth|yfsm.s5~regout\,
	combout => \yth|WideOr10~combout\);

-- Location: LCCOMB_X62_Y7_N30
\inst17|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux1~0_combout\ = (\yth|WideOr9~combout\ & (\yth|WideOr10~combout\ $ (!\yth|WideOr11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|WideOr10~combout\,
	datab => \yth|WideOr11~combout\,
	datad => \yth|WideOr9~combout\,
	combout => \inst17|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y7_N20
\inst17|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux2~2_combout\ = (\yth|WideOr10~combout\ & (\yth|WideOr9~combout\ $ (((!\yth|yfsm.s3~regout\ & !\yth|yfsm.s6~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|yfsm.s3~regout\,
	datab => \yth|yfsm.s6~regout\,
	datac => \yth|WideOr10~combout\,
	datad => \yth|WideOr9~combout\,
	combout => \inst17|Mux2~2_combout\);

-- Location: LCCOMB_X62_Y7_N14
\inst17|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux3~0_combout\ = (\yth|WideOr11~combout\) # (\yth|WideOr10~combout\ $ (\yth|WideOr9~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|WideOr10~combout\,
	datab => \yth|WideOr11~combout\,
	datad => \yth|WideOr9~combout\,
	combout => \inst17|Mux3~0_combout\);

-- Location: LCCOMB_X63_Y7_N24
\inst17|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux5~0_combout\ = ((\yth|WideOr9~combout\ & ((\yth|WideOr11~combout\) # (!\yth|WideOr10~combout\))) # (!\yth|WideOr9~combout\ & (\yth|WideOr11~combout\ $ (\yth|WideOr10~combout\)))) # (!\yth|student_id[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|WideOr9~combout\,
	datab => \yth|student_id[3]~0_combout\,
	datac => \yth|WideOr11~combout\,
	datad => \yth|WideOr10~combout\,
	combout => \inst17|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y7_N2
\inst17|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux6~0_combout\ = ((\yth|WideOr9~combout\ & ((\yth|WideOr11~combout\) # (!\yth|WideOr10~combout\))) # (!\yth|WideOr9~combout\ & ((\yth|WideOr10~combout\)))) # (!\yth|student_id[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yth|WideOr9~combout\,
	datab => \yth|student_id[3]~0_combout\,
	datac => \yth|WideOr11~combout\,
	datad => \yth|WideOr10~combout\,
	combout => \inst17|Mux6~0_combout\);

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[15]~I\ : cycloneii_io
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
	datain => \inst54|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(15));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[14]~I\ : cycloneii_io
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
	datain => \inst54|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(14));

-- Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[13]~I\ : cycloneii_io
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
	datain => \inst54|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(13));

-- Location: PIN_V26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[12]~I\ : cycloneii_io
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
	datain => \inst54|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(12));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[11]~I\ : cycloneii_io
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
	datain => \inst54|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(11));

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[10]~I\ : cycloneii_io
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
	datain => \inst54|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(10));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[9]~I\ : cycloneii_io
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
	datain => \inst54|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(9));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[8]~I\ : cycloneii_io
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
	datain => \inst54|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(8));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[7]~I\ : cycloneii_io
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
	datain => \inst54|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(7));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(6));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(5));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(4));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(3));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(2));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(1));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP(0));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[3]~I\ : cycloneii_io
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
	datain => \inst|Result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[2]~I\ : cycloneii_io
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
	datain => \inst|Result\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[1]~I\ : cycloneii_io
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
	datain => \inst|Result\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(1));

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[0]~I\ : cycloneii_io
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
	datain => \inst|Result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[3]~I\ : cycloneii_io
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
	datain => \inst|Result\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(3));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[2]~I\ : cycloneii_io
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
	datain => \inst|Result\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(2));

-- Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[1]~I\ : cycloneii_io
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
	datain => \inst|Result\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(1));

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[0]~I\ : cycloneii_io
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
	datain => \inst|Result\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(0));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[0]~I\ : cycloneii_io
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
	datain => \inst16|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[1]~I\ : cycloneii_io
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
	datain => \inst16|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[2]~I\ : cycloneii_io
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
	datain => \inst16|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[3]~I\ : cycloneii_io
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
	datain => \inst16|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[4]~I\ : cycloneii_io
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
	datain => \inst16|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[5]~I\ : cycloneii_io
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
	datain => \inst16|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[6]~I\ : cycloneii_io
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
	datain => \inst16|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[0]~I\ : cycloneii_io
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
	datain => \inst15|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[1]~I\ : cycloneii_io
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
	datain => \inst15|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[2]~I\ : cycloneii_io
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
	datain => \inst15|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[3]~I\ : cycloneii_io
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
	datain => \inst15|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[4]~I\ : cycloneii_io
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
	datain => \inst15|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[5]~I\ : cycloneii_io
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
	datain => \inst15|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[6]~I\ : cycloneii_io
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
	datain => \inst15|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(6));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[0]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[6]~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_NEG~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[0]~I\ : cycloneii_io
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
	datain => \inst17|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[1]~I\ : cycloneii_io
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
	datain => \inst17|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[2]~I\ : cycloneii_io
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
	datain => \inst17|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[3]~I\ : cycloneii_io
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
	datain => \inst17|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[4]~I\ : cycloneii_io
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
	datain => \yth|ALT_INV_WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[5]~I\ : cycloneii_io
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
	datain => \inst17|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[6]~I\ : cycloneii_io
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
	datain => \inst17|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(6));
END structure;


