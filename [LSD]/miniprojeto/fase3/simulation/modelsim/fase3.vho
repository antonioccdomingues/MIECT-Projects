-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/01/2018 14:21:53"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fase3 IS
    PORT (
	lcd_on : OUT std_logic;
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(8 DOWNTO 0);
	lcd_blon : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END fase3;

-- Design Ports Information
-- lcd_on	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_blon	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fase3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_lcd_blon : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_on~output_o\ : std_logic;
SIGNAL \lcd_blon~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[0]~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~1_cout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~3\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~5\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~6_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~7\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~8_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~9\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~10_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~11\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~12_combout\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[6]~5_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~13\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~14_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~15\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~16_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~17\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~18_combout\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[9]~7_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~19\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~20_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~21\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~22_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~23\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~24_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~25\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~26_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~27\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~28_combout\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[14]~8_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~29\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~30_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal0~5_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~31\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~32_combout\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[16]~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~33\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~34_combout\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[17]~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~35\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~36_combout\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[18]~3_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~37\ : std_logic;
SIGNAL \inst|DISPLAY|Add0~38_combout\ : std_logic;
SIGNAL \inst|DISPLAY|reset_counter[19]~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal0~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal0~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal0~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal0~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal0~3_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal0~6_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_1~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~14_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~15_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~16_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~17_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~18_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~20_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_1~q\ : std_logic;
SIGNAL \inst|DISPLAY|state~23_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_2~q\ : std_logic;
SIGNAL \inst|DISPLAY|state~27_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_3~q\ : std_logic;
SIGNAL \inst|DISPLAY|state~24_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_4~q\ : std_logic;
SIGNAL \inst|DISPLAY|state~25_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_5~q\ : std_logic;
SIGNAL \inst|DISPLAY|state~26_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_6~q\ : std_logic;
SIGNAL \inst|DISPLAY|state~21_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_7~q\ : std_logic;
SIGNAL \inst|DISPLAY|state~22_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_8~q\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_en~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~1\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~5_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~3\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~6_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~7_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~5\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~6_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~8_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_1~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~18_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~15_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_3~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.POWER_ON_PHASE_1~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~7\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~8_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~9_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~9\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~10_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~10_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~11\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~12_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~11_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~13\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~14_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~12_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~15\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~16_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~13_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~17\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~18_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~14_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~19\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~20_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~16_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~21\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~22_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~17_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~23\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~24_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~19_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~25\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~26_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~20_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~27\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~28_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~21_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~29\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~30_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~22_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~31\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~32_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~33\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~34_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~35\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~36_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~37\ : std_logic;
SIGNAL \inst|DISPLAY|Add2~38_combout\ : std_logic;
SIGNAL \inst|DISPLAY|delay_counter~3_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~3_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~6_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~7_combout\ : std_logic;
SIGNAL \inst|DISPLAY|write_enable_counter[3]~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|write_enable_counter[1]~2_combout\ : std_logic;
SIGNAL \inst|DISPLAY|write_enable_counter[2]~3_combout\ : std_logic;
SIGNAL \inst|DISPLAY|write_enable_counter[3]~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|write_enable_counter[3]~5_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal1~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|write_enable_counter[0]~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Equal2~5_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~13_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state~19_combout\ : std_logic;
SIGNAL \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ : std_logic;
SIGNAL \inst|index[0]~6_combout\ : std_logic;
SIGNAL \inst|index[3]~13\ : std_logic;
SIGNAL \inst|index[4]~14_combout\ : std_logic;
SIGNAL \inst|DISPLAY|txd_accepted~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|txd_accepted~feeder_combout\ : std_logic;
SIGNAL \inst|DISPLAY|txd_accepted~q\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|index[4]~15\ : std_logic;
SIGNAL \inst|index[5]~16_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|index[0]~7\ : std_logic;
SIGNAL \inst|index[1]~8_combout\ : std_logic;
SIGNAL \inst|index[1]~9\ : std_logic;
SIGNAL \inst|index[2]~10_combout\ : std_logic;
SIGNAL \inst|index[2]~11\ : std_logic;
SIGNAL \inst|index[3]~12_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[7]~8_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_rs~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[7]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[7]~11_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[7]~en_q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|top_line~49_combout\ : std_logic;
SIGNAL \inst|bottom_line[60]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|top_line~28_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|top_line~32_combout\ : std_logic;
SIGNAL \inst|top_line~27_combout\ : std_logic;
SIGNAL \inst|top_line~33_combout\ : std_logic;
SIGNAL \inst|top_line~29_combout\ : std_logic;
SIGNAL \inst|top_line~30_combout\ : std_logic;
SIGNAL \inst|top_line[100]~0_combout\ : std_logic;
SIGNAL \inst|top_line~31_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mux2~4_combout\ : std_logic;
SIGNAL \inst|Mux2~5_combout\ : std_logic;
SIGNAL \inst|txd_rs_and_data[6]~0_combout\ : std_logic;
SIGNAL \inst|Mux2~10_combout\ : std_logic;
SIGNAL \inst|Mux2~6_combout\ : std_logic;
SIGNAL \inst|Mux2~7_combout\ : std_logic;
SIGNAL \inst|Mux2~8_combout\ : std_logic;
SIGNAL \inst|Mux2~9_combout\ : std_logic;
SIGNAL \inst|Mux2~11_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[6]~9_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[6]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[6]~12_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[6]~en_q\ : std_logic;
SIGNAL \inst|DISPLAY|Selector23~0_combout\ : std_logic;
SIGNAL \inst|top_line[45]~53_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~6_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Mux3~7_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Selector22~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[5]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[5]~13_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[5]~en_q\ : std_logic;
SIGNAL \inst|top_line~34_combout\ : std_logic;
SIGNAL \inst|top_line~35_combout\ : std_logic;
SIGNAL \inst|top_line[28]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux2~12_combout\ : std_logic;
SIGNAL \inst|top_line[20]~54_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux2~13_combout\ : std_logic;
SIGNAL \inst|Mux2~14_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|Mux2~15_combout\ : std_logic;
SIGNAL \inst|top_line~36_combout\ : std_logic;
SIGNAL \inst|top_line~37_combout\ : std_logic;
SIGNAL \inst|top_line~38_combout\ : std_logic;
SIGNAL \inst|top_line[10]~1_combout\ : std_logic;
SIGNAL \inst|top_line~39_combout\ : std_logic;
SIGNAL \inst|Mux2~17_combout\ : std_logic;
SIGNAL \inst|Mux2~16_combout\ : std_logic;
SIGNAL \inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst|Mux2~18_combout\ : std_logic;
SIGNAL \inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst|Mux4~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Selector23~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[4]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[4]~14_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[4]~en_q\ : std_logic;
SIGNAL \inst|Mux2~23_combout\ : std_logic;
SIGNAL \inst|top_line~50_combout\ : std_logic;
SIGNAL \inst|top_line~40_combout\ : std_logic;
SIGNAL \inst|Mux2~24_combout\ : std_logic;
SIGNAL \inst|Mux2~25_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux2~45_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Mux2~22_combout\ : std_logic;
SIGNAL \inst|Mux2~19_combout\ : std_logic;
SIGNAL \inst|Mux2~20_combout\ : std_logic;
SIGNAL \inst|Mux2~21_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Selector24~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[3]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[3]~15_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[3]~en_q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|bottom_line~0_combout\ : std_logic;
SIGNAL \inst|Mux2~26_combout\ : std_logic;
SIGNAL \inst|Mux2~27_combout\ : std_logic;
SIGNAL \inst|Mux2~28_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux2~29_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|Mux2~32_combout\ : std_logic;
SIGNAL \inst|top_line~51_combout\ : std_logic;
SIGNAL \inst|top_line~41_combout\ : std_logic;
SIGNAL \inst|Mux2~30_combout\ : std_logic;
SIGNAL \inst|Mux2~31_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Selector25~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[2]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[2]~16_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[2]~en_q\ : std_logic;
SIGNAL \inst|top_line~45_combout\ : std_logic;
SIGNAL \inst|Mux2~37_combout\ : std_logic;
SIGNAL \inst|bottom_line~2_combout\ : std_logic;
SIGNAL \inst|Mux2~33_combout\ : std_logic;
SIGNAL \inst|Mux2~34_combout\ : std_logic;
SIGNAL \inst|top_line~44_combout\ : std_logic;
SIGNAL \inst|top_line~42_combout\ : std_logic;
SIGNAL \inst|top_line[1]~2_combout\ : std_logic;
SIGNAL \inst|top_line~43_combout\ : std_logic;
SIGNAL \inst|Mux2~35_combout\ : std_logic;
SIGNAL \inst|Mux2~36_combout\ : std_logic;
SIGNAL \inst|Mux7~6_combout\ : std_logic;
SIGNAL \inst|Mux7~7_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|bottom_line~1_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux7~5_combout\ : std_logic;
SIGNAL \inst|Mux7~8_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Selector26~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[1]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[1]~17_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[1]~en_q\ : std_logic;
SIGNAL \inst|Mux2~44_combout\ : std_logic;
SIGNAL \inst|bottom_line~4_combout\ : std_logic;
SIGNAL \inst|Mux2~41_combout\ : std_logic;
SIGNAL \inst|top_line~48_combout\ : std_logic;
SIGNAL \inst|top_line~47_combout\ : std_logic;
SIGNAL \inst|Mux2~42_combout\ : std_logic;
SIGNAL \inst|Mux2~43_combout\ : std_logic;
SIGNAL \inst|Mux8~2_combout\ : std_logic;
SIGNAL \inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst|top_line~46_combout\ : std_logic;
SIGNAL \inst|Mux2~38_combout\ : std_logic;
SIGNAL \inst|bottom_line~3_combout\ : std_logic;
SIGNAL \inst|Mux2~39_combout\ : std_logic;
SIGNAL \inst|Mux2~40_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst|Mux8~4_combout\ : std_logic;
SIGNAL \inst|DISPLAY|Selector27~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[0]~reg0_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[0]~18_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_data[0]~en_q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_on~0_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_on~q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_rw~q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_en~q\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_rs~1_combout\ : std_logic;
SIGNAL \inst|DISPLAY|lcd_rs~q\ : std_logic;
SIGNAL \inst|DISPLAY|write_enable_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|index\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|txd_rs_and_data\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|top_line\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \inst|bottom_line\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \inst|DISPLAY|reset_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|DISPLAY|delay_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|DISPLAY|ALT_INV_lcd_en~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_index\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

lcd_on <= ww_lcd_on;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
lcd_blon <= ww_lcd_blon;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst|DISPLAY|ALT_INV_lcd_en~0_combout\ <= NOT \inst|DISPLAY|lcd_en~0_combout\;
\inst|ALT_INV_index\(2) <= NOT \inst|index\(2);
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y47_N2
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[7]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[7]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[6]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[6]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[5]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[5]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[4]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[4]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[3]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[3]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[2]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[2]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[1]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[1]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_data[0]~reg0_q\,
	oe => \inst|DISPLAY|lcd_data[0]~en_q\,
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\lcd_on~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_on~q\,
	devoe => ww_devoe,
	o => \lcd_on~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\lcd_blon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_blon~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_rw~q\,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_en~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DISPLAY|lcd_rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y46_N0
\inst|DISPLAY|reset_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[0]~0_combout\ = (!\inst|DISPLAY|reset_counter\(0) & \inst|DISPLAY|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|DISPLAY|reset_counter\(0),
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|reset_counter[0]~0_combout\);

-- Location: FF_X5_Y46_N1
\inst|DISPLAY|reset_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(0));

-- Location: LCCOMB_X5_Y46_N12
\inst|DISPLAY|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~1_cout\ = CARRY(\inst|DISPLAY|reset_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(0),
	datad => VCC,
	cout => \inst|DISPLAY|Add0~1_cout\);

-- Location: LCCOMB_X5_Y46_N14
\inst|DISPLAY|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~2_combout\ = (\inst|DISPLAY|reset_counter\(1) & (\inst|DISPLAY|Add0~1_cout\ & VCC)) # (!\inst|DISPLAY|reset_counter\(1) & (!\inst|DISPLAY|Add0~1_cout\))
-- \inst|DISPLAY|Add0~3\ = CARRY((!\inst|DISPLAY|reset_counter\(1) & !\inst|DISPLAY|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(1),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~1_cout\,
	combout => \inst|DISPLAY|Add0~2_combout\,
	cout => \inst|DISPLAY|Add0~3\);

-- Location: FF_X5_Y46_N15
\inst|DISPLAY|reset_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~2_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(1));

-- Location: LCCOMB_X5_Y46_N16
\inst|DISPLAY|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~4_combout\ = (\inst|DISPLAY|reset_counter\(2) & ((GND) # (!\inst|DISPLAY|Add0~3\))) # (!\inst|DISPLAY|reset_counter\(2) & (\inst|DISPLAY|Add0~3\ $ (GND)))
-- \inst|DISPLAY|Add0~5\ = CARRY((\inst|DISPLAY|reset_counter\(2)) # (!\inst|DISPLAY|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(2),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~3\,
	combout => \inst|DISPLAY|Add0~4_combout\,
	cout => \inst|DISPLAY|Add0~5\);

-- Location: FF_X5_Y46_N17
\inst|DISPLAY|reset_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~4_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(2));

-- Location: LCCOMB_X5_Y46_N18
\inst|DISPLAY|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~6_combout\ = (\inst|DISPLAY|reset_counter\(3) & (\inst|DISPLAY|Add0~5\ & VCC)) # (!\inst|DISPLAY|reset_counter\(3) & (!\inst|DISPLAY|Add0~5\))
-- \inst|DISPLAY|Add0~7\ = CARRY((!\inst|DISPLAY|reset_counter\(3) & !\inst|DISPLAY|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(3),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~5\,
	combout => \inst|DISPLAY|Add0~6_combout\,
	cout => \inst|DISPLAY|Add0~7\);

-- Location: FF_X5_Y46_N19
\inst|DISPLAY|reset_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~6_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(3));

-- Location: LCCOMB_X5_Y46_N20
\inst|DISPLAY|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~8_combout\ = (\inst|DISPLAY|reset_counter\(4) & ((GND) # (!\inst|DISPLAY|Add0~7\))) # (!\inst|DISPLAY|reset_counter\(4) & (\inst|DISPLAY|Add0~7\ $ (GND)))
-- \inst|DISPLAY|Add0~9\ = CARRY((\inst|DISPLAY|reset_counter\(4)) # (!\inst|DISPLAY|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(4),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~7\,
	combout => \inst|DISPLAY|Add0~8_combout\,
	cout => \inst|DISPLAY|Add0~9\);

-- Location: FF_X5_Y46_N21
\inst|DISPLAY|reset_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~8_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(4));

-- Location: LCCOMB_X5_Y46_N22
\inst|DISPLAY|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~10_combout\ = (\inst|DISPLAY|reset_counter\(5) & (\inst|DISPLAY|Add0~9\ & VCC)) # (!\inst|DISPLAY|reset_counter\(5) & (!\inst|DISPLAY|Add0~9\))
-- \inst|DISPLAY|Add0~11\ = CARRY((!\inst|DISPLAY|reset_counter\(5) & !\inst|DISPLAY|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(5),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~9\,
	combout => \inst|DISPLAY|Add0~10_combout\,
	cout => \inst|DISPLAY|Add0~11\);

-- Location: FF_X5_Y46_N23
\inst|DISPLAY|reset_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~10_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(5));

-- Location: LCCOMB_X5_Y46_N24
\inst|DISPLAY|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~12_combout\ = (\inst|DISPLAY|reset_counter\(6) & (\inst|DISPLAY|Add0~11\ $ (GND))) # (!\inst|DISPLAY|reset_counter\(6) & ((GND) # (!\inst|DISPLAY|Add0~11\)))
-- \inst|DISPLAY|Add0~13\ = CARRY((!\inst|DISPLAY|Add0~11\) # (!\inst|DISPLAY|reset_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(6),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~11\,
	combout => \inst|DISPLAY|Add0~12_combout\,
	cout => \inst|DISPLAY|Add0~13\);

-- Location: LCCOMB_X5_Y46_N8
\inst|DISPLAY|reset_counter[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[6]~5_combout\ = !\inst|DISPLAY|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|DISPLAY|Add0~12_combout\,
	combout => \inst|DISPLAY|reset_counter[6]~5_combout\);

-- Location: FF_X5_Y46_N9
\inst|DISPLAY|reset_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[6]~5_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(6));

-- Location: LCCOMB_X5_Y46_N26
\inst|DISPLAY|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~14_combout\ = (\inst|DISPLAY|reset_counter\(7) & (\inst|DISPLAY|Add0~13\ & VCC)) # (!\inst|DISPLAY|reset_counter\(7) & (!\inst|DISPLAY|Add0~13\))
-- \inst|DISPLAY|Add0~15\ = CARRY((!\inst|DISPLAY|reset_counter\(7) & !\inst|DISPLAY|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(7),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~13\,
	combout => \inst|DISPLAY|Add0~14_combout\,
	cout => \inst|DISPLAY|Add0~15\);

-- Location: FF_X5_Y46_N27
\inst|DISPLAY|reset_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~14_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(7));

-- Location: LCCOMB_X5_Y46_N28
\inst|DISPLAY|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~16_combout\ = (\inst|DISPLAY|reset_counter\(8) & ((GND) # (!\inst|DISPLAY|Add0~15\))) # (!\inst|DISPLAY|reset_counter\(8) & (\inst|DISPLAY|Add0~15\ $ (GND)))
-- \inst|DISPLAY|Add0~17\ = CARRY((\inst|DISPLAY|reset_counter\(8)) # (!\inst|DISPLAY|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(8),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~15\,
	combout => \inst|DISPLAY|Add0~16_combout\,
	cout => \inst|DISPLAY|Add0~17\);

-- Location: FF_X5_Y46_N29
\inst|DISPLAY|reset_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~16_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(8));

-- Location: LCCOMB_X5_Y46_N30
\inst|DISPLAY|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~18_combout\ = (\inst|DISPLAY|reset_counter\(9) & (!\inst|DISPLAY|Add0~17\)) # (!\inst|DISPLAY|reset_counter\(9) & (\inst|DISPLAY|Add0~17\ & VCC))
-- \inst|DISPLAY|Add0~19\ = CARRY((\inst|DISPLAY|reset_counter\(9) & !\inst|DISPLAY|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(9),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~17\,
	combout => \inst|DISPLAY|Add0~18_combout\,
	cout => \inst|DISPLAY|Add0~19\);

-- Location: LCCOMB_X5_Y46_N2
\inst|DISPLAY|reset_counter[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[9]~7_combout\ = !\inst|DISPLAY|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|DISPLAY|Add0~18_combout\,
	combout => \inst|DISPLAY|reset_counter[9]~7_combout\);

-- Location: FF_X5_Y46_N3
\inst|DISPLAY|reset_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[9]~7_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(9));

-- Location: LCCOMB_X5_Y45_N0
\inst|DISPLAY|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~20_combout\ = (\inst|DISPLAY|reset_counter\(10) & ((GND) # (!\inst|DISPLAY|Add0~19\))) # (!\inst|DISPLAY|reset_counter\(10) & (\inst|DISPLAY|Add0~19\ $ (GND)))
-- \inst|DISPLAY|Add0~21\ = CARRY((\inst|DISPLAY|reset_counter\(10)) # (!\inst|DISPLAY|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(10),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~19\,
	combout => \inst|DISPLAY|Add0~20_combout\,
	cout => \inst|DISPLAY|Add0~21\);

-- Location: FF_X5_Y45_N1
\inst|DISPLAY|reset_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~20_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(10));

-- Location: LCCOMB_X5_Y45_N2
\inst|DISPLAY|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~22_combout\ = (\inst|DISPLAY|reset_counter\(11) & (\inst|DISPLAY|Add0~21\ & VCC)) # (!\inst|DISPLAY|reset_counter\(11) & (!\inst|DISPLAY|Add0~21\))
-- \inst|DISPLAY|Add0~23\ = CARRY((!\inst|DISPLAY|reset_counter\(11) & !\inst|DISPLAY|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(11),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~21\,
	combout => \inst|DISPLAY|Add0~22_combout\,
	cout => \inst|DISPLAY|Add0~23\);

-- Location: FF_X5_Y45_N3
\inst|DISPLAY|reset_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~22_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(11));

-- Location: LCCOMB_X5_Y45_N4
\inst|DISPLAY|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~24_combout\ = (\inst|DISPLAY|reset_counter\(12) & ((GND) # (!\inst|DISPLAY|Add0~23\))) # (!\inst|DISPLAY|reset_counter\(12) & (\inst|DISPLAY|Add0~23\ $ (GND)))
-- \inst|DISPLAY|Add0~25\ = CARRY((\inst|DISPLAY|reset_counter\(12)) # (!\inst|DISPLAY|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(12),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~23\,
	combout => \inst|DISPLAY|Add0~24_combout\,
	cout => \inst|DISPLAY|Add0~25\);

-- Location: FF_X5_Y45_N5
\inst|DISPLAY|reset_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~24_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(12));

-- Location: LCCOMB_X5_Y45_N6
\inst|DISPLAY|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~26_combout\ = (\inst|DISPLAY|reset_counter\(13) & (\inst|DISPLAY|Add0~25\ & VCC)) # (!\inst|DISPLAY|reset_counter\(13) & (!\inst|DISPLAY|Add0~25\))
-- \inst|DISPLAY|Add0~27\ = CARRY((!\inst|DISPLAY|reset_counter\(13) & !\inst|DISPLAY|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(13),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~25\,
	combout => \inst|DISPLAY|Add0~26_combout\,
	cout => \inst|DISPLAY|Add0~27\);

-- Location: FF_X5_Y45_N7
\inst|DISPLAY|reset_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~26_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(13));

-- Location: LCCOMB_X5_Y45_N8
\inst|DISPLAY|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~28_combout\ = (\inst|DISPLAY|reset_counter\(14) & (\inst|DISPLAY|Add0~27\ $ (GND))) # (!\inst|DISPLAY|reset_counter\(14) & ((GND) # (!\inst|DISPLAY|Add0~27\)))
-- \inst|DISPLAY|Add0~29\ = CARRY((!\inst|DISPLAY|Add0~27\) # (!\inst|DISPLAY|reset_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(14),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~27\,
	combout => \inst|DISPLAY|Add0~28_combout\,
	cout => \inst|DISPLAY|Add0~29\);

-- Location: LCCOMB_X5_Y45_N24
\inst|DISPLAY|reset_counter[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[14]~8_combout\ = !\inst|DISPLAY|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Add0~28_combout\,
	combout => \inst|DISPLAY|reset_counter[14]~8_combout\);

-- Location: FF_X5_Y45_N25
\inst|DISPLAY|reset_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[14]~8_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(14));

-- Location: LCCOMB_X5_Y45_N10
\inst|DISPLAY|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~30_combout\ = (\inst|DISPLAY|reset_counter\(15) & (\inst|DISPLAY|Add0~29\ & VCC)) # (!\inst|DISPLAY|reset_counter\(15) & (!\inst|DISPLAY|Add0~29\))
-- \inst|DISPLAY|Add0~31\ = CARRY((!\inst|DISPLAY|reset_counter\(15) & !\inst|DISPLAY|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(15),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~29\,
	combout => \inst|DISPLAY|Add0~30_combout\,
	cout => \inst|DISPLAY|Add0~31\);

-- Location: FF_X5_Y45_N11
\inst|DISPLAY|reset_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Add0~30_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(15));

-- Location: LCCOMB_X5_Y45_N26
\inst|DISPLAY|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal0~5_combout\ = ((\inst|DISPLAY|reset_counter\(15)) # ((\inst|DISPLAY|reset_counter\(12)) # (\inst|DISPLAY|reset_counter\(13)))) # (!\inst|DISPLAY|reset_counter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(14),
	datab => \inst|DISPLAY|reset_counter\(15),
	datac => \inst|DISPLAY|reset_counter\(12),
	datad => \inst|DISPLAY|reset_counter\(13),
	combout => \inst|DISPLAY|Equal0~5_combout\);

-- Location: LCCOMB_X5_Y45_N12
\inst|DISPLAY|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~32_combout\ = (\inst|DISPLAY|reset_counter\(16) & (\inst|DISPLAY|Add0~31\ $ (GND))) # (!\inst|DISPLAY|reset_counter\(16) & ((GND) # (!\inst|DISPLAY|Add0~31\)))
-- \inst|DISPLAY|Add0~33\ = CARRY((!\inst|DISPLAY|Add0~31\) # (!\inst|DISPLAY|reset_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|reset_counter\(16),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~31\,
	combout => \inst|DISPLAY|Add0~32_combout\,
	cout => \inst|DISPLAY|Add0~33\);

-- Location: LCCOMB_X7_Y45_N24
\inst|DISPLAY|reset_counter[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[16]~1_combout\ = !\inst|DISPLAY|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Add0~32_combout\,
	combout => \inst|DISPLAY|reset_counter[16]~1_combout\);

-- Location: FF_X7_Y45_N25
\inst|DISPLAY|reset_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[16]~1_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(16));

-- Location: LCCOMB_X5_Y45_N14
\inst|DISPLAY|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~34_combout\ = (\inst|DISPLAY|reset_counter\(17) & (!\inst|DISPLAY|Add0~33\)) # (!\inst|DISPLAY|reset_counter\(17) & (\inst|DISPLAY|Add0~33\ & VCC))
-- \inst|DISPLAY|Add0~35\ = CARRY((\inst|DISPLAY|reset_counter\(17) & !\inst|DISPLAY|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(17),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~33\,
	combout => \inst|DISPLAY|Add0~34_combout\,
	cout => \inst|DISPLAY|Add0~35\);

-- Location: LCCOMB_X7_Y45_N26
\inst|DISPLAY|reset_counter[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[17]~2_combout\ = !\inst|DISPLAY|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Add0~34_combout\,
	combout => \inst|DISPLAY|reset_counter[17]~2_combout\);

-- Location: FF_X7_Y45_N27
\inst|DISPLAY|reset_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[17]~2_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(17));

-- Location: LCCOMB_X5_Y45_N16
\inst|DISPLAY|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~36_combout\ = (\inst|DISPLAY|reset_counter\(18) & (\inst|DISPLAY|Add0~35\ $ (GND))) # (!\inst|DISPLAY|reset_counter\(18) & ((GND) # (!\inst|DISPLAY|Add0~35\)))
-- \inst|DISPLAY|Add0~37\ = CARRY((!\inst|DISPLAY|Add0~35\) # (!\inst|DISPLAY|reset_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(18),
	datad => VCC,
	cin => \inst|DISPLAY|Add0~35\,
	combout => \inst|DISPLAY|Add0~36_combout\,
	cout => \inst|DISPLAY|Add0~37\);

-- Location: LCCOMB_X7_Y45_N16
\inst|DISPLAY|reset_counter[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[18]~3_combout\ = !\inst|DISPLAY|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Add0~36_combout\,
	combout => \inst|DISPLAY|reset_counter[18]~3_combout\);

-- Location: FF_X7_Y45_N17
\inst|DISPLAY|reset_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[18]~3_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(18));

-- Location: LCCOMB_X5_Y45_N18
\inst|DISPLAY|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add0~38_combout\ = \inst|DISPLAY|reset_counter\(19) $ (\inst|DISPLAY|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(19),
	cin => \inst|DISPLAY|Add0~37\,
	combout => \inst|DISPLAY|Add0~38_combout\);

-- Location: LCCOMB_X5_Y45_N22
\inst|DISPLAY|reset_counter[19]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|reset_counter[19]~4_combout\ = !\inst|DISPLAY|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Add0~38_combout\,
	combout => \inst|DISPLAY|reset_counter[19]~4_combout\);

-- Location: FF_X5_Y45_N23
\inst|DISPLAY|reset_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|reset_counter[19]~4_combout\,
	ena => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|reset_counter\(19));

-- Location: LCCOMB_X5_Y45_N20
\inst|DISPLAY|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal0~0_combout\ = (((!\inst|DISPLAY|reset_counter\(18)) # (!\inst|DISPLAY|reset_counter\(17))) # (!\inst|DISPLAY|reset_counter\(16))) # (!\inst|DISPLAY|reset_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(19),
	datab => \inst|DISPLAY|reset_counter\(16),
	datac => \inst|DISPLAY|reset_counter\(17),
	datad => \inst|DISPLAY|reset_counter\(18),
	combout => \inst|DISPLAY|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y45_N30
\inst|DISPLAY|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal0~4_combout\ = (\inst|DISPLAY|reset_counter\(8)) # ((\inst|DISPLAY|reset_counter\(10)) # ((\inst|DISPLAY|reset_counter\(11)) # (!\inst|DISPLAY|reset_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(8),
	datab => \inst|DISPLAY|reset_counter\(10),
	datac => \inst|DISPLAY|reset_counter\(9),
	datad => \inst|DISPLAY|reset_counter\(11),
	combout => \inst|DISPLAY|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y46_N10
\inst|DISPLAY|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal0~1_combout\ = (\inst|DISPLAY|reset_counter\(5)) # (((\inst|DISPLAY|reset_counter\(7)) # (\inst|DISPLAY|reset_counter\(4))) # (!\inst|DISPLAY|reset_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|reset_counter\(5),
	datab => \inst|DISPLAY|reset_counter\(6),
	datac => \inst|DISPLAY|reset_counter\(7),
	datad => \inst|DISPLAY|reset_counter\(4),
	combout => \inst|DISPLAY|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y46_N6
\inst|DISPLAY|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal0~2_combout\ = (\inst|DISPLAY|reset_counter\(1)) # (\inst|DISPLAY|reset_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|DISPLAY|reset_counter\(1),
	datad => \inst|DISPLAY|reset_counter\(0),
	combout => \inst|DISPLAY|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y46_N4
\inst|DISPLAY|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal0~3_combout\ = (\inst|DISPLAY|Equal0~1_combout\) # ((\inst|DISPLAY|reset_counter\(3)) # ((\inst|DISPLAY|reset_counter\(2)) # (\inst|DISPLAY|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal0~1_combout\,
	datab => \inst|DISPLAY|reset_counter\(3),
	datac => \inst|DISPLAY|reset_counter\(2),
	datad => \inst|DISPLAY|Equal0~2_combout\,
	combout => \inst|DISPLAY|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y45_N28
\inst|DISPLAY|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal0~6_combout\ = (\inst|DISPLAY|Equal0~5_combout\) # ((\inst|DISPLAY|Equal0~0_combout\) # ((\inst|DISPLAY|Equal0~4_combout\) # (\inst|DISPLAY|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal0~5_combout\,
	datab => \inst|DISPLAY|Equal0~0_combout\,
	datac => \inst|DISPLAY|Equal0~4_combout\,
	datad => \inst|DISPLAY|Equal0~3_combout\,
	combout => \inst|DISPLAY|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y45_N16
\inst|DISPLAY|state.POWER_ON_PHASE_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state.POWER_ON_PHASE_1~0_combout\ = (\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_7~q\ & (\inst|DISPLAY|state.POWER_ON_PHASE_1~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_8~q\))) # 
-- (!\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_7~q\ & (\inst|DISPLAY|state.POWER_ON_PHASE_1~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_8~q\)) # (!\inst|DISPLAY|state.POWER_ON_PHASE_7~q\ & 
-- (\inst|DISPLAY|state.POWER_ON_PHASE_1~q\ $ (!\inst|DISPLAY|state.POWER_ON_PHASE_8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	combout => \inst|DISPLAY|state.POWER_ON_PHASE_1~0_combout\);

-- Location: LCCOMB_X2_Y45_N2
\inst|DISPLAY|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~14_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_4~q\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_5~q\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_6~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_3~q\))) # (!\inst|DISPLAY|state.POWER_ON_PHASE_4~q\ & 
-- ((\inst|DISPLAY|state.POWER_ON_PHASE_5~q\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_6~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_3~q\)) # (!\inst|DISPLAY|state.POWER_ON_PHASE_5~q\ & (\inst|DISPLAY|state.POWER_ON_PHASE_6~q\ $ 
-- (\inst|DISPLAY|state.POWER_ON_PHASE_3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_4~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_5~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_6~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_3~q\,
	combout => \inst|DISPLAY|state~14_combout\);

-- Location: LCCOMB_X2_Y45_N0
\inst|DISPLAY|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~15_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_4~q\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_5~q\) # ((\inst|DISPLAY|state.POWER_ON_PHASE_6~q\) # (\inst|DISPLAY|state.POWER_ON_PHASE_3~q\)))) # (!\inst|DISPLAY|state.POWER_ON_PHASE_4~q\ 
-- & ((\inst|DISPLAY|state.POWER_ON_PHASE_5~q\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_6~q\) # (\inst|DISPLAY|state.POWER_ON_PHASE_3~q\))) # (!\inst|DISPLAY|state.POWER_ON_PHASE_5~q\ & (\inst|DISPLAY|state.POWER_ON_PHASE_6~q\ & 
-- \inst|DISPLAY|state.POWER_ON_PHASE_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_4~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_5~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_6~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_3~q\,
	combout => \inst|DISPLAY|state~15_combout\);

-- Location: LCCOMB_X1_Y45_N28
\inst|DISPLAY|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~16_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\ & ((\inst|DISPLAY|state~14_combout\ & (!\inst|DISPLAY|state~15_combout\ & \inst|DISPLAY|state.POWER_ON_PHASE_2~q\)) # (!\inst|DISPLAY|state~14_combout\ & 
-- (\inst|DISPLAY|state~15_combout\)))) # (!\inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_2~q\) # (\inst|DISPLAY|state~14_combout\ $ (\inst|DISPLAY|state~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~14_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\,
	datac => \inst|DISPLAY|state~15_combout\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	combout => \inst|DISPLAY|state~16_combout\);

-- Location: LCCOMB_X1_Y45_N2
\inst|DISPLAY|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~17_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\ & ((\inst|DISPLAY|state~14_combout\ & (\inst|DISPLAY|state~15_combout\ $ (!\inst|DISPLAY|state.POWER_ON_PHASE_2~q\))) # (!\inst|DISPLAY|state~14_combout\ & 
-- (!\inst|DISPLAY|state~15_combout\ & \inst|DISPLAY|state.POWER_ON_PHASE_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~14_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\,
	datac => \inst|DISPLAY|state~15_combout\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	combout => \inst|DISPLAY|state~17_combout\);

-- Location: LCCOMB_X2_Y45_N10
\inst|DISPLAY|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~18_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_1~0_combout\ & ((\inst|DISPLAY|state~17_combout\) # (!\inst|DISPLAY|state~16_combout\))) # (!\inst|DISPLAY|state.POWER_ON_PHASE_1~0_combout\ & 
-- (!\inst|DISPLAY|state~16_combout\ & \inst|DISPLAY|state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_1~0_combout\,
	datab => \inst|DISPLAY|state~16_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|state~17_combout\,
	combout => \inst|DISPLAY|state~18_combout\);

-- Location: LCCOMB_X2_Y45_N30
\inst|DISPLAY|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~20_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_1~q\) # (!\inst|DISPLAY|state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~13_combout\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~20_combout\);

-- Location: FF_X2_Y45_N31
\inst|DISPLAY|state.POWER_ON_PHASE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\);

-- Location: LCCOMB_X2_Y45_N24
\inst|DISPLAY|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~23_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state~13_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_2~q\))) # (!\inst|DISPLAY|state~13_combout\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datab => \inst|DISPLAY|state~13_combout\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~23_combout\);

-- Location: FF_X2_Y45_N25
\inst|DISPLAY|state.POWER_ON_PHASE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\);

-- Location: LCCOMB_X2_Y45_N16
\inst|DISPLAY|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~27_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state~13_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_3~q\))) # (!\inst|DISPLAY|state~13_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~13_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_3~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~27_combout\);

-- Location: FF_X2_Y45_N17
\inst|DISPLAY|state.POWER_ON_PHASE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_3~q\);

-- Location: LCCOMB_X2_Y45_N6
\inst|DISPLAY|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~24_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state~13_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_4~q\))) # (!\inst|DISPLAY|state~13_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~13_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_3~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_4~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~24_combout\);

-- Location: FF_X2_Y45_N7
\inst|DISPLAY|state.POWER_ON_PHASE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_4~q\);

-- Location: LCCOMB_X2_Y45_N8
\inst|DISPLAY|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~25_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state~13_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_5~q\))) # (!\inst|DISPLAY|state~13_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~13_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_4~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_5~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~25_combout\);

-- Location: FF_X2_Y45_N9
\inst|DISPLAY|state.POWER_ON_PHASE_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_5~q\);

-- Location: LCCOMB_X2_Y45_N26
\inst|DISPLAY|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~26_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state~13_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_6~q\))) # (!\inst|DISPLAY|state~13_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~13_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_5~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_6~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~26_combout\);

-- Location: FF_X2_Y45_N27
\inst|DISPLAY|state.POWER_ON_PHASE_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_6~q\);

-- Location: LCCOMB_X2_Y45_N28
\inst|DISPLAY|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~21_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state~13_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_7~q\))) # (!\inst|DISPLAY|state~13_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_6~q\,
	datab => \inst|DISPLAY|state~13_combout\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~21_combout\);

-- Location: FF_X2_Y45_N29
\inst|DISPLAY|state.POWER_ON_PHASE_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\);

-- Location: LCCOMB_X2_Y45_N18
\inst|DISPLAY|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~22_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state~13_combout\ & ((\inst|DISPLAY|state.POWER_ON_PHASE_8~q\))) # (!\inst|DISPLAY|state~13_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~13_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~22_combout\);

-- Location: FF_X2_Y45_N19
\inst|DISPLAY|state.POWER_ON_PHASE_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\);

-- Location: LCCOMB_X1_Y45_N14
\inst|DISPLAY|state.POWER_ON_PHASE_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\ = (!\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_8~q\ & (\inst|DISPLAY|state.POWER_ON_PHASE_1~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	combout => \inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\);

-- Location: LCCOMB_X3_Y45_N12
\inst|DISPLAY|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~0_combout\ = \inst|DISPLAY|delay_counter\(0) $ (VCC)
-- \inst|DISPLAY|Add2~1\ = CARRY(\inst|DISPLAY|delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(0),
	datad => VCC,
	combout => \inst|DISPLAY|Add2~0_combout\,
	cout => \inst|DISPLAY|Add2~1\);

-- Location: LCCOMB_X4_Y45_N4
\inst|DISPLAY|delay_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~4_combout\ = (\inst|DISPLAY|Add2~0_combout\ & (!\inst|DISPLAY|Equal0~6_combout\ & \inst|DISPLAY|Equal2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Add2~0_combout\,
	datab => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~4_combout\);

-- Location: LCCOMB_X4_Y45_N30
\inst|DISPLAY|lcd_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_en~0_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|write_enable_counter\(0)) # (!\inst|DISPLAY|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|write_enable_counter\(0),
	datac => \inst|DISPLAY|Equal1~0_combout\,
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_en~0_combout\);

-- Location: FF_X4_Y45_N5
\inst|DISPLAY|delay_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~4_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(0));

-- Location: LCCOMB_X3_Y45_N14
\inst|DISPLAY|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~2_combout\ = (\inst|DISPLAY|delay_counter\(1) & (\inst|DISPLAY|Add2~1\ & VCC)) # (!\inst|DISPLAY|delay_counter\(1) & (!\inst|DISPLAY|Add2~1\))
-- \inst|DISPLAY|Add2~3\ = CARRY((!\inst|DISPLAY|delay_counter\(1) & !\inst|DISPLAY|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(1),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~1\,
	combout => \inst|DISPLAY|Add2~2_combout\,
	cout => \inst|DISPLAY|Add2~3\);

-- Location: LCCOMB_X4_Y45_N18
\inst|DISPLAY|delay_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~5_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & (\inst|DISPLAY|Add2~2_combout\ & \inst|DISPLAY|Equal2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|Equal0~6_combout\,
	datac => \inst|DISPLAY|Add2~2_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~5_combout\);

-- Location: FF_X4_Y45_N19
\inst|DISPLAY|delay_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~5_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(1));

-- Location: LCCOMB_X3_Y45_N16
\inst|DISPLAY|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~4_combout\ = (\inst|DISPLAY|delay_counter\(2) & ((GND) # (!\inst|DISPLAY|Add2~3\))) # (!\inst|DISPLAY|delay_counter\(2) & (\inst|DISPLAY|Add2~3\ $ (GND)))
-- \inst|DISPLAY|Add2~5\ = CARRY((\inst|DISPLAY|delay_counter\(2)) # (!\inst|DISPLAY|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(2),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~3\,
	combout => \inst|DISPLAY|Add2~4_combout\,
	cout => \inst|DISPLAY|Add2~5\);

-- Location: LCCOMB_X3_Y45_N0
\inst|DISPLAY|delay_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~6_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~4_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\,
	datab => \inst|DISPLAY|Add2~4_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~6_combout\);

-- Location: FF_X3_Y45_N1
\inst|DISPLAY|delay_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~6_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(2));

-- Location: LCCOMB_X1_Y45_N22
\inst|DISPLAY|delay_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~7_combout\ = (\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\) # (\inst|DISPLAY|state.POWER_ON_PHASE_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	combout => \inst|DISPLAY|delay_counter~7_combout\);

-- Location: LCCOMB_X3_Y45_N18
\inst|DISPLAY|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~6_combout\ = (\inst|DISPLAY|delay_counter\(3) & (\inst|DISPLAY|Add2~5\ & VCC)) # (!\inst|DISPLAY|delay_counter\(3) & (!\inst|DISPLAY|Add2~5\))
-- \inst|DISPLAY|Add2~7\ = CARRY((!\inst|DISPLAY|delay_counter\(3) & !\inst|DISPLAY|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(3),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~5\,
	combout => \inst|DISPLAY|Add2~6_combout\,
	cout => \inst|DISPLAY|Add2~7\);

-- Location: LCCOMB_X3_Y45_N6
\inst|DISPLAY|delay_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~8_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~6_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|delay_counter~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter~7_combout\,
	datab => \inst|DISPLAY|Add2~6_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~8_combout\);

-- Location: FF_X3_Y45_N7
\inst|DISPLAY|delay_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~8_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(3));

-- Location: LCCOMB_X4_Y45_N24
\inst|DISPLAY|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~1_combout\ = (\inst|DISPLAY|delay_counter\(2)) # ((\inst|DISPLAY|delay_counter\(3)) # ((\inst|DISPLAY|delay_counter\(0)) # (\inst|DISPLAY|delay_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(2),
	datab => \inst|DISPLAY|delay_counter\(3),
	datac => \inst|DISPLAY|delay_counter\(0),
	datad => \inst|DISPLAY|delay_counter\(1),
	combout => \inst|DISPLAY|Equal2~1_combout\);

-- Location: LCCOMB_X1_Y45_N12
\inst|DISPLAY|state.POWER_ON_PHASE_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state.POWER_ON_PHASE_1~1_combout\ = (!\inst|DISPLAY|state.POWER_ON_PHASE_7~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	combout => \inst|DISPLAY|state.POWER_ON_PHASE_1~1_combout\);

-- Location: LCCOMB_X1_Y45_N0
\inst|DISPLAY|delay_counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~18_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_7~q\) # ((\inst|DISPLAY|state.POWER_ON_PHASE_8~q\) # ((\inst|DISPLAY|state.POWER_ON_PHASE_2~q\) # (!\inst|DISPLAY|state.POWER_ON_PHASE_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	combout => \inst|DISPLAY|delay_counter~18_combout\);

-- Location: LCCOMB_X2_Y45_N12
\inst|DISPLAY|delay_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~15_combout\ = (!\inst|DISPLAY|state.POWER_ON_PHASE_7~q\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_8~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	combout => \inst|DISPLAY|delay_counter~15_combout\);

-- Location: LCCOMB_X2_Y45_N20
\inst|DISPLAY|state.POWER_ON_PHASE_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state.POWER_ON_PHASE_3~1_combout\ = (!\inst|DISPLAY|state.POWER_ON_PHASE_7~q\ & (!\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datac => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	combout => \inst|DISPLAY|state.POWER_ON_PHASE_3~1_combout\);

-- Location: LCCOMB_X2_Y45_N22
\inst|DISPLAY|state.POWER_ON_PHASE_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state.POWER_ON_PHASE_1~2_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_1~q\ & !\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datac => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	combout => \inst|DISPLAY|state.POWER_ON_PHASE_1~2_combout\);

-- Location: LCCOMB_X3_Y45_N20
\inst|DISPLAY|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~8_combout\ = (\inst|DISPLAY|delay_counter\(4) & ((GND) # (!\inst|DISPLAY|Add2~7\))) # (!\inst|DISPLAY|delay_counter\(4) & (\inst|DISPLAY|Add2~7\ $ (GND)))
-- \inst|DISPLAY|Add2~9\ = CARRY((\inst|DISPLAY|delay_counter\(4)) # (!\inst|DISPLAY|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(4),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~7\,
	combout => \inst|DISPLAY|Add2~8_combout\,
	cout => \inst|DISPLAY|Add2~9\);

-- Location: LCCOMB_X6_Y45_N2
\inst|DISPLAY|delay_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~9_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~8_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal2~7_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_3~1_combout\,
	datac => \inst|DISPLAY|Add2~8_combout\,
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|delay_counter~9_combout\);

-- Location: FF_X3_Y45_N13
\inst|DISPLAY|delay_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|DISPLAY|delay_counter~9_combout\,
	sload => VCC,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(4));

-- Location: LCCOMB_X3_Y45_N22
\inst|DISPLAY|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~10_combout\ = (\inst|DISPLAY|delay_counter\(5) & (\inst|DISPLAY|Add2~9\ & VCC)) # (!\inst|DISPLAY|delay_counter\(5) & (!\inst|DISPLAY|Add2~9\))
-- \inst|DISPLAY|Add2~11\ = CARRY((!\inst|DISPLAY|delay_counter\(5) & !\inst|DISPLAY|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(5),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~9\,
	combout => \inst|DISPLAY|Add2~10_combout\,
	cout => \inst|DISPLAY|Add2~11\);

-- Location: LCCOMB_X3_Y45_N8
\inst|DISPLAY|delay_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~10_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~10_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal2~7_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_1~2_combout\,
	datac => \inst|DISPLAY|Add2~10_combout\,
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|delay_counter~10_combout\);

-- Location: FF_X3_Y45_N9
\inst|DISPLAY|delay_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~10_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(5));

-- Location: LCCOMB_X3_Y45_N24
\inst|DISPLAY|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~12_combout\ = (\inst|DISPLAY|delay_counter\(6) & ((GND) # (!\inst|DISPLAY|Add2~11\))) # (!\inst|DISPLAY|delay_counter\(6) & (\inst|DISPLAY|Add2~11\ $ (GND)))
-- \inst|DISPLAY|Add2~13\ = CARRY((\inst|DISPLAY|delay_counter\(6)) # (!\inst|DISPLAY|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(6),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~11\,
	combout => \inst|DISPLAY|Add2~12_combout\,
	cout => \inst|DISPLAY|Add2~13\);

-- Location: LCCOMB_X6_Y45_N14
\inst|DISPLAY|delay_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~11_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~12_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_3~1_combout\,
	datab => \inst|DISPLAY|Equal0~6_combout\,
	datac => \inst|DISPLAY|Equal2~7_combout\,
	datad => \inst|DISPLAY|Add2~12_combout\,
	combout => \inst|DISPLAY|delay_counter~11_combout\);

-- Location: FF_X6_Y45_N15
\inst|DISPLAY|delay_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~11_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(6));

-- Location: LCCOMB_X3_Y45_N26
\inst|DISPLAY|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~14_combout\ = (\inst|DISPLAY|delay_counter\(7) & (\inst|DISPLAY|Add2~13\ & VCC)) # (!\inst|DISPLAY|delay_counter\(7) & (!\inst|DISPLAY|Add2~13\))
-- \inst|DISPLAY|Add2~15\ = CARRY((!\inst|DISPLAY|delay_counter\(7) & !\inst|DISPLAY|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(7),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~13\,
	combout => \inst|DISPLAY|Add2~14_combout\,
	cout => \inst|DISPLAY|Add2~15\);

-- Location: LCCOMB_X3_Y45_N2
\inst|DISPLAY|delay_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~12_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|Add2~14_combout\)) # (!\inst|DISPLAY|Equal2~7_combout\ & ((!\inst|DISPLAY|state.POWER_ON_PHASE_2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Add2~14_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~12_combout\);

-- Location: FF_X3_Y45_N3
\inst|DISPLAY|delay_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~12_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(7));

-- Location: LCCOMB_X3_Y45_N28
\inst|DISPLAY|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~16_combout\ = (\inst|DISPLAY|delay_counter\(8) & ((GND) # (!\inst|DISPLAY|Add2~15\))) # (!\inst|DISPLAY|delay_counter\(8) & (\inst|DISPLAY|Add2~15\ $ (GND)))
-- \inst|DISPLAY|Add2~17\ = CARRY((\inst|DISPLAY|delay_counter\(8)) # (!\inst|DISPLAY|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(8),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~15\,
	combout => \inst|DISPLAY|Add2~16_combout\,
	cout => \inst|DISPLAY|Add2~17\);

-- Location: LCCOMB_X3_Y45_N4
\inst|DISPLAY|delay_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~13_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Add2~16_combout\) # (!\inst|DISPLAY|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal2~7_combout\,
	datab => \inst|DISPLAY|Add2~16_combout\,
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|delay_counter~13_combout\);

-- Location: FF_X3_Y45_N5
\inst|DISPLAY|delay_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~13_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(8));

-- Location: LCCOMB_X3_Y45_N30
\inst|DISPLAY|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~18_combout\ = (\inst|DISPLAY|delay_counter\(9) & (\inst|DISPLAY|Add2~17\ & VCC)) # (!\inst|DISPLAY|delay_counter\(9) & (!\inst|DISPLAY|Add2~17\))
-- \inst|DISPLAY|Add2~19\ = CARRY((!\inst|DISPLAY|delay_counter\(9) & !\inst|DISPLAY|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(9),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~17\,
	combout => \inst|DISPLAY|Add2~18_combout\,
	cout => \inst|DISPLAY|Add2~19\);

-- Location: LCCOMB_X3_Y45_N10
\inst|DISPLAY|delay_counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~14_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|Add2~18_combout\)) # (!\inst|DISPLAY|Equal2~7_combout\ & ((!\inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Add2~18_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_3~0_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~14_combout\);

-- Location: FF_X3_Y45_N11
\inst|DISPLAY|delay_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~14_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(9));

-- Location: LCCOMB_X3_Y44_N0
\inst|DISPLAY|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~20_combout\ = (\inst|DISPLAY|delay_counter\(10) & ((GND) # (!\inst|DISPLAY|Add2~19\))) # (!\inst|DISPLAY|delay_counter\(10) & (\inst|DISPLAY|Add2~19\ $ (GND)))
-- \inst|DISPLAY|Add2~21\ = CARRY((\inst|DISPLAY|delay_counter\(10)) # (!\inst|DISPLAY|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(10),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~19\,
	combout => \inst|DISPLAY|Add2~20_combout\,
	cout => \inst|DISPLAY|Add2~21\);

-- Location: LCCOMB_X3_Y44_N22
\inst|DISPLAY|delay_counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~16_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~20_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (!\inst|DISPLAY|delay_counter~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter~15_combout\,
	datab => \inst|DISPLAY|Add2~20_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~16_combout\);

-- Location: FF_X3_Y44_N23
\inst|DISPLAY|delay_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~16_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(10));

-- Location: LCCOMB_X3_Y44_N2
\inst|DISPLAY|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~22_combout\ = (\inst|DISPLAY|delay_counter\(11) & (\inst|DISPLAY|Add2~21\ & VCC)) # (!\inst|DISPLAY|delay_counter\(11) & (!\inst|DISPLAY|Add2~21\))
-- \inst|DISPLAY|Add2~23\ = CARRY((!\inst|DISPLAY|delay_counter\(11) & !\inst|DISPLAY|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(11),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~21\,
	combout => \inst|DISPLAY|Add2~22_combout\,
	cout => \inst|DISPLAY|Add2~23\);

-- Location: LCCOMB_X3_Y44_N20
\inst|DISPLAY|delay_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~17_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~22_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|state.POWER_ON_PHASE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datab => \inst|DISPLAY|Add2~22_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~17_combout\);

-- Location: FF_X3_Y44_N21
\inst|DISPLAY|delay_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~17_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(11));

-- Location: LCCOMB_X3_Y44_N4
\inst|DISPLAY|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~24_combout\ = (\inst|DISPLAY|delay_counter\(12) & ((GND) # (!\inst|DISPLAY|Add2~23\))) # (!\inst|DISPLAY|delay_counter\(12) & (\inst|DISPLAY|Add2~23\ $ (GND)))
-- \inst|DISPLAY|Add2~25\ = CARRY((\inst|DISPLAY|delay_counter\(12)) # (!\inst|DISPLAY|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(12),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~23\,
	combout => \inst|DISPLAY|Add2~24_combout\,
	cout => \inst|DISPLAY|Add2~25\);

-- Location: LCCOMB_X4_Y45_N26
\inst|DISPLAY|delay_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~19_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~24_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|delay_counter~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter~18_combout\,
	datab => \inst|DISPLAY|Equal0~6_combout\,
	datac => \inst|DISPLAY|Add2~24_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~19_combout\);

-- Location: FF_X4_Y45_N27
\inst|DISPLAY|delay_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~19_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(12));

-- Location: LCCOMB_X3_Y44_N6
\inst|DISPLAY|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~26_combout\ = (\inst|DISPLAY|delay_counter\(13) & (\inst|DISPLAY|Add2~25\ & VCC)) # (!\inst|DISPLAY|delay_counter\(13) & (!\inst|DISPLAY|Add2~25\))
-- \inst|DISPLAY|Add2~27\ = CARRY((!\inst|DISPLAY|delay_counter\(13) & !\inst|DISPLAY|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(13),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~25\,
	combout => \inst|DISPLAY|Add2~26_combout\,
	cout => \inst|DISPLAY|Add2~27\);

-- Location: LCCOMB_X4_Y45_N20
\inst|DISPLAY|delay_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~20_combout\ = (\inst|DISPLAY|Equal2~7_combout\ & (!\inst|DISPLAY|Equal0~6_combout\ & \inst|DISPLAY|Add2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|Equal2~7_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Add2~26_combout\,
	combout => \inst|DISPLAY|delay_counter~20_combout\);

-- Location: FF_X4_Y45_N21
\inst|DISPLAY|delay_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~20_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(13));

-- Location: LCCOMB_X3_Y44_N8
\inst|DISPLAY|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~28_combout\ = (\inst|DISPLAY|delay_counter\(14) & ((GND) # (!\inst|DISPLAY|Add2~27\))) # (!\inst|DISPLAY|delay_counter\(14) & (\inst|DISPLAY|Add2~27\ $ (GND)))
-- \inst|DISPLAY|Add2~29\ = CARRY((\inst|DISPLAY|delay_counter\(14)) # (!\inst|DISPLAY|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(14),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~27\,
	combout => \inst|DISPLAY|Add2~28_combout\,
	cout => \inst|DISPLAY|Add2~29\);

-- Location: LCCOMB_X3_Y44_N26
\inst|DISPLAY|delay_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~21_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~28_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_1~1_combout\,
	datab => \inst|DISPLAY|Add2~28_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~21_combout\);

-- Location: FF_X3_Y44_N27
\inst|DISPLAY|delay_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~21_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(14));

-- Location: LCCOMB_X3_Y44_N10
\inst|DISPLAY|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~30_combout\ = (\inst|DISPLAY|delay_counter\(15) & (\inst|DISPLAY|Add2~29\ & VCC)) # (!\inst|DISPLAY|delay_counter\(15) & (!\inst|DISPLAY|Add2~29\))
-- \inst|DISPLAY|Add2~31\ = CARRY((!\inst|DISPLAY|delay_counter\(15) & !\inst|DISPLAY|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(15),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~29\,
	combout => \inst|DISPLAY|Add2~30_combout\,
	cout => \inst|DISPLAY|Add2~31\);

-- Location: LCCOMB_X4_Y45_N22
\inst|DISPLAY|delay_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~22_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~30_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datab => \inst|DISPLAY|Equal2~7_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Add2~30_combout\,
	combout => \inst|DISPLAY|delay_counter~22_combout\);

-- Location: FF_X4_Y45_N23
\inst|DISPLAY|delay_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~22_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(15));

-- Location: LCCOMB_X3_Y44_N12
\inst|DISPLAY|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~32_combout\ = (\inst|DISPLAY|delay_counter\(16) & ((GND) # (!\inst|DISPLAY|Add2~31\))) # (!\inst|DISPLAY|delay_counter\(16) & (\inst|DISPLAY|Add2~31\ $ (GND)))
-- \inst|DISPLAY|Add2~33\ = CARRY((\inst|DISPLAY|delay_counter\(16)) # (!\inst|DISPLAY|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(16),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~31\,
	combout => \inst|DISPLAY|Add2~32_combout\,
	cout => \inst|DISPLAY|Add2~33\);

-- Location: LCCOMB_X3_Y44_N28
\inst|DISPLAY|delay_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~0_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((\inst|DISPLAY|Equal2~7_combout\ & (\inst|DISPLAY|Add2~32_combout\)) # (!\inst|DISPLAY|Equal2~7_combout\ & ((!\inst|DISPLAY|state.POWER_ON_PHASE_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Add2~32_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_1~1_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~0_combout\);

-- Location: FF_X3_Y44_N29
\inst|DISPLAY|delay_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~0_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(16));

-- Location: LCCOMB_X3_Y44_N14
\inst|DISPLAY|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~34_combout\ = (\inst|DISPLAY|delay_counter\(17) & (\inst|DISPLAY|Add2~33\ & VCC)) # (!\inst|DISPLAY|delay_counter\(17) & (!\inst|DISPLAY|Add2~33\))
-- \inst|DISPLAY|Add2~35\ = CARRY((!\inst|DISPLAY|delay_counter\(17) & !\inst|DISPLAY|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(17),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~33\,
	combout => \inst|DISPLAY|Add2~34_combout\,
	cout => \inst|DISPLAY|Add2~35\);

-- Location: LCCOMB_X3_Y44_N30
\inst|DISPLAY|delay_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~1_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((\inst|DISPLAY|Add2~34_combout\ & \inst|DISPLAY|Equal2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|Equal0~6_combout\,
	datac => \inst|DISPLAY|Add2~34_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~1_combout\);

-- Location: FF_X3_Y44_N31
\inst|DISPLAY|delay_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~1_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(17));

-- Location: LCCOMB_X3_Y44_N16
\inst|DISPLAY|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~36_combout\ = (\inst|DISPLAY|delay_counter\(18) & ((GND) # (!\inst|DISPLAY|Add2~35\))) # (!\inst|DISPLAY|delay_counter\(18) & (\inst|DISPLAY|Add2~35\ $ (GND)))
-- \inst|DISPLAY|Add2~37\ = CARRY((\inst|DISPLAY|delay_counter\(18)) # (!\inst|DISPLAY|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|delay_counter\(18),
	datad => VCC,
	cin => \inst|DISPLAY|Add2~35\,
	combout => \inst|DISPLAY|Add2~36_combout\,
	cout => \inst|DISPLAY|Add2~37\);

-- Location: LCCOMB_X3_Y44_N24
\inst|DISPLAY|delay_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~2_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((\inst|DISPLAY|Equal2~7_combout\ & ((\inst|DISPLAY|Add2~36_combout\))) # (!\inst|DISPLAY|Equal2~7_combout\ & (!\inst|DISPLAY|state.POWER_ON_PHASE_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datab => \inst|DISPLAY|Add2~36_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|delay_counter~2_combout\);

-- Location: FF_X3_Y44_N25
\inst|DISPLAY|delay_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~2_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(18));

-- Location: LCCOMB_X3_Y44_N18
\inst|DISPLAY|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Add2~38_combout\ = \inst|DISPLAY|Add2~37\ $ (!\inst|DISPLAY|delay_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|delay_counter\(19),
	cin => \inst|DISPLAY|Add2~37\,
	combout => \inst|DISPLAY|Add2~38_combout\);

-- Location: LCCOMB_X4_Y45_N10
\inst|DISPLAY|delay_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|delay_counter~3_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((\inst|DISPLAY|Equal2~7_combout\ & \inst|DISPLAY|Add2~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|Equal2~7_combout\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Add2~38_combout\,
	combout => \inst|DISPLAY|delay_counter~3_combout\);

-- Location: FF_X4_Y45_N11
\inst|DISPLAY|delay_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|delay_counter~3_combout\,
	ena => \inst|DISPLAY|ALT_INV_lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|delay_counter\(19));

-- Location: LCCOMB_X6_Y45_N8
\inst|DISPLAY|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~0_combout\ = (\inst|DISPLAY|delay_counter\(17)) # ((\inst|DISPLAY|delay_counter\(18)) # ((\inst|DISPLAY|delay_counter\(19)) # (\inst|DISPLAY|delay_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(17),
	datab => \inst|DISPLAY|delay_counter\(18),
	datac => \inst|DISPLAY|delay_counter\(19),
	datad => \inst|DISPLAY|delay_counter\(16),
	combout => \inst|DISPLAY|Equal2~0_combout\);

-- Location: LCCOMB_X4_Y45_N12
\inst|DISPLAY|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~4_combout\ = (\inst|DISPLAY|delay_counter\(12)) # ((\inst|DISPLAY|delay_counter\(13)) # ((\inst|DISPLAY|delay_counter\(14)) # (\inst|DISPLAY|delay_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(12),
	datab => \inst|DISPLAY|delay_counter\(13),
	datac => \inst|DISPLAY|delay_counter\(14),
	datad => \inst|DISPLAY|delay_counter\(15),
	combout => \inst|DISPLAY|Equal2~4_combout\);

-- Location: LCCOMB_X6_Y45_N20
\inst|DISPLAY|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~2_combout\ = (\inst|DISPLAY|delay_counter\(7)) # ((\inst|DISPLAY|delay_counter\(6)) # ((\inst|DISPLAY|delay_counter\(4)) # (\inst|DISPLAY|delay_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(7),
	datab => \inst|DISPLAY|delay_counter\(6),
	datac => \inst|DISPLAY|delay_counter\(4),
	datad => \inst|DISPLAY|delay_counter\(5),
	combout => \inst|DISPLAY|Equal2~2_combout\);

-- Location: LCCOMB_X6_Y45_N18
\inst|DISPLAY|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~3_combout\ = (\inst|DISPLAY|delay_counter\(9)) # ((\inst|DISPLAY|delay_counter\(8)) # ((\inst|DISPLAY|delay_counter\(11)) # (\inst|DISPLAY|delay_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|delay_counter\(9),
	datab => \inst|DISPLAY|delay_counter\(8),
	datac => \inst|DISPLAY|delay_counter\(11),
	datad => \inst|DISPLAY|delay_counter\(10),
	combout => \inst|DISPLAY|Equal2~3_combout\);

-- Location: LCCOMB_X6_Y45_N12
\inst|DISPLAY|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~6_combout\ = (\inst|DISPLAY|Equal2~2_combout\) # (\inst|DISPLAY|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|Equal2~2_combout\,
	datad => \inst|DISPLAY|Equal2~3_combout\,
	combout => \inst|DISPLAY|Equal2~6_combout\);

-- Location: LCCOMB_X6_Y45_N26
\inst|DISPLAY|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~7_combout\ = (\inst|DISPLAY|Equal2~1_combout\) # ((\inst|DISPLAY|Equal2~0_combout\) # ((\inst|DISPLAY|Equal2~4_combout\) # (\inst|DISPLAY|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal2~1_combout\,
	datab => \inst|DISPLAY|Equal2~0_combout\,
	datac => \inst|DISPLAY|Equal2~4_combout\,
	datad => \inst|DISPLAY|Equal2~6_combout\,
	combout => \inst|DISPLAY|Equal2~7_combout\);

-- Location: LCCOMB_X4_Y45_N2
\inst|DISPLAY|write_enable_counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|write_enable_counter[3]~1_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & (((\inst|DISPLAY|write_enable_counter\(0)) # (!\inst|DISPLAY|Equal2~7_combout\)) # (!\inst|DISPLAY|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal1~0_combout\,
	datab => \inst|DISPLAY|write_enable_counter\(0),
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|write_enable_counter[3]~1_combout\);

-- Location: LCCOMB_X4_Y45_N14
\inst|DISPLAY|write_enable_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|write_enable_counter[1]~2_combout\ = (\inst|DISPLAY|write_enable_counter[3]~1_combout\ & ((\inst|DISPLAY|write_enable_counter\(0) & ((\inst|DISPLAY|write_enable_counter\(1)))) # (!\inst|DISPLAY|write_enable_counter\(0) & 
-- ((\inst|DISPLAY|Equal1~0_combout\) # (!\inst|DISPLAY|write_enable_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal1~0_combout\,
	datab => \inst|DISPLAY|write_enable_counter\(0),
	datac => \inst|DISPLAY|write_enable_counter\(1),
	datad => \inst|DISPLAY|write_enable_counter[3]~1_combout\,
	combout => \inst|DISPLAY|write_enable_counter[1]~2_combout\);

-- Location: FF_X4_Y45_N15
\inst|DISPLAY|write_enable_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|write_enable_counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|write_enable_counter\(1));

-- Location: LCCOMB_X4_Y45_N8
\inst|DISPLAY|write_enable_counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|write_enable_counter[2]~3_combout\ = (\inst|DISPLAY|write_enable_counter[3]~1_combout\ & (\inst|DISPLAY|write_enable_counter\(2) $ (((!\inst|DISPLAY|write_enable_counter\(1) & !\inst|DISPLAY|write_enable_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|write_enable_counter\(1),
	datab => \inst|DISPLAY|write_enable_counter\(0),
	datac => \inst|DISPLAY|write_enable_counter\(2),
	datad => \inst|DISPLAY|write_enable_counter[3]~1_combout\,
	combout => \inst|DISPLAY|write_enable_counter[2]~3_combout\);

-- Location: FF_X4_Y45_N9
\inst|DISPLAY|write_enable_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|write_enable_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|write_enable_counter\(2));

-- Location: LCCOMB_X7_Y45_N10
\inst|DISPLAY|write_enable_counter[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|write_enable_counter[3]~4_combout\ = \inst|DISPLAY|write_enable_counter\(3) $ (((\inst|DISPLAY|write_enable_counter\(1)) # ((\inst|DISPLAY|write_enable_counter\(2)) # (\inst|DISPLAY|write_enable_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|write_enable_counter\(1),
	datab => \inst|DISPLAY|write_enable_counter\(3),
	datac => \inst|DISPLAY|write_enable_counter\(2),
	datad => \inst|DISPLAY|write_enable_counter\(0),
	combout => \inst|DISPLAY|write_enable_counter[3]~4_combout\);

-- Location: LCCOMB_X4_Y45_N6
\inst|DISPLAY|write_enable_counter[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|write_enable_counter[3]~5_combout\ = (!\inst|DISPLAY|write_enable_counter[3]~4_combout\ & \inst|DISPLAY|write_enable_counter[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|DISPLAY|write_enable_counter[3]~4_combout\,
	datad => \inst|DISPLAY|write_enable_counter[3]~1_combout\,
	combout => \inst|DISPLAY|write_enable_counter[3]~5_combout\);

-- Location: FF_X4_Y45_N7
\inst|DISPLAY|write_enable_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|write_enable_counter[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|write_enable_counter\(3));

-- Location: LCCOMB_X4_Y45_N28
\inst|DISPLAY|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal1~0_combout\ = (!\inst|DISPLAY|write_enable_counter\(3) & (!\inst|DISPLAY|write_enable_counter\(1) & !\inst|DISPLAY|write_enable_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|write_enable_counter\(3),
	datab => \inst|DISPLAY|write_enable_counter\(1),
	datac => \inst|DISPLAY|write_enable_counter\(2),
	combout => \inst|DISPLAY|Equal1~0_combout\);

-- Location: LCCOMB_X4_Y45_N16
\inst|DISPLAY|write_enable_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|write_enable_counter[0]~0_combout\ = (!\inst|DISPLAY|Equal0~6_combout\ & (!\inst|DISPLAY|write_enable_counter\(0) & ((!\inst|DISPLAY|Equal2~7_combout\) # (!\inst|DISPLAY|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal1~0_combout\,
	datab => \inst|DISPLAY|Equal0~6_combout\,
	datac => \inst|DISPLAY|write_enable_counter\(0),
	datad => \inst|DISPLAY|Equal2~7_combout\,
	combout => \inst|DISPLAY|write_enable_counter[0]~0_combout\);

-- Location: FF_X4_Y45_N17
\inst|DISPLAY|write_enable_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|write_enable_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|write_enable_counter\(0));

-- Location: LCCOMB_X6_Y45_N24
\inst|DISPLAY|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Equal2~5_combout\ = (\inst|DISPLAY|Equal2~1_combout\) # ((\inst|DISPLAY|Equal2~2_combout\) # ((\inst|DISPLAY|Equal2~4_combout\) # (\inst|DISPLAY|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|Equal2~1_combout\,
	datab => \inst|DISPLAY|Equal2~2_combout\,
	datac => \inst|DISPLAY|Equal2~4_combout\,
	datad => \inst|DISPLAY|Equal2~3_combout\,
	combout => \inst|DISPLAY|Equal2~5_combout\);

-- Location: LCCOMB_X6_Y45_N30
\inst|DISPLAY|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~13_combout\ = (\inst|DISPLAY|write_enable_counter\(0)) # ((\inst|DISPLAY|Equal2~0_combout\) # ((\inst|DISPLAY|Equal2~5_combout\) # (!\inst|DISPLAY|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|write_enable_counter\(0),
	datab => \inst|DISPLAY|Equal2~0_combout\,
	datac => \inst|DISPLAY|Equal1~0_combout\,
	datad => \inst|DISPLAY|Equal2~5_combout\,
	combout => \inst|DISPLAY|state~13_combout\);

-- Location: LCCOMB_X2_Y45_N4
\inst|DISPLAY|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|state~19_combout\ = (\inst|DISPLAY|state~18_combout\ & ((\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\) # ((!\inst|DISPLAY|state~13_combout\ & \inst|DISPLAY|state.POWER_ON_PHASE_8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state~13_combout\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	datac => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datad => \inst|DISPLAY|state~18_combout\,
	combout => \inst|DISPLAY|state~19_combout\);

-- Location: FF_X2_Y45_N5
\inst|DISPLAY|state.PROCESS_TXD_REQUESTS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\);

-- Location: LCCOMB_X46_Y20_N10
\inst|index[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|index[0]~6_combout\ = \inst|index\(0) $ (VCC)
-- \inst|index[0]~7\ = CARRY(\inst|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datad => VCC,
	combout => \inst|index[0]~6_combout\,
	cout => \inst|index[0]~7\);

-- Location: LCCOMB_X46_Y20_N16
\inst|index[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|index[3]~12_combout\ = (\inst|index\(3) & (!\inst|index[2]~11\)) # (!\inst|index\(3) & ((\inst|index[2]~11\) # (GND)))
-- \inst|index[3]~13\ = CARRY((!\inst|index[2]~11\) # (!\inst|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(3),
	datad => VCC,
	cin => \inst|index[2]~11\,
	combout => \inst|index[3]~12_combout\,
	cout => \inst|index[3]~13\);

-- Location: LCCOMB_X46_Y20_N18
\inst|index[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|index[4]~14_combout\ = (\inst|index\(4) & (\inst|index[3]~13\ $ (GND))) # (!\inst|index\(4) & (!\inst|index[3]~13\ & VCC))
-- \inst|index[4]~15\ = CARRY((\inst|index\(4) & !\inst|index[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datad => VCC,
	cin => \inst|index[3]~13\,
	combout => \inst|index[4]~14_combout\,
	cout => \inst|index[4]~15\);

-- Location: LCCOMB_X5_Y44_N18
\inst|DISPLAY|txd_accepted~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|txd_accepted~0_combout\ = (\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & (!\inst|DISPLAY|Equal0~6_combout\ & !\inst|DISPLAY|state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datac => \inst|DISPLAY|Equal0~6_combout\,
	datad => \inst|DISPLAY|state~13_combout\,
	combout => \inst|DISPLAY|txd_accepted~0_combout\);

-- Location: LCCOMB_X5_Y44_N28
\inst|DISPLAY|txd_accepted~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|txd_accepted~feeder_combout\ = \inst|DISPLAY|txd_accepted~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|txd_accepted~0_combout\,
	combout => \inst|DISPLAY|txd_accepted~feeder_combout\);

-- Location: FF_X5_Y44_N29
\inst|DISPLAY|txd_accepted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|txd_accepted~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|txd_accepted~q\);

-- Location: FF_X46_Y20_N19
\inst|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|index[4]~14_combout\,
	sclr => \inst|LessThan0~1_combout\,
	ena => \inst|DISPLAY|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(4));

-- Location: LCCOMB_X46_Y20_N30
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|index\(1) & (!\inst|index\(3) & (!\inst|index\(4) & !\inst|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(3),
	datac => \inst|index\(4),
	datad => \inst|index\(0),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y20_N20
\inst|index[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|index[5]~16_combout\ = \inst|index[4]~15\ $ (\inst|index\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|index\(5),
	cin => \inst|index[4]~15\,
	combout => \inst|index[5]~16_combout\);

-- Location: FF_X46_Y20_N21
\inst|index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|index[5]~16_combout\,
	sclr => \inst|LessThan0~1_combout\,
	ena => \inst|DISPLAY|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(5));

-- Location: LCCOMB_X46_Y20_N8
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|index\(5) & ((\inst|index\(2)) # (!\inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datac => \inst|index\(2),
	datad => \inst|index\(5),
	combout => \inst|LessThan0~1_combout\);

-- Location: FF_X46_Y20_N11
\inst|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|index[0]~6_combout\,
	sclr => \inst|LessThan0~1_combout\,
	ena => \inst|DISPLAY|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(0));

-- Location: LCCOMB_X46_Y20_N12
\inst|index[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|index[1]~8_combout\ = (\inst|index\(1) & (!\inst|index[0]~7\)) # (!\inst|index\(1) & ((\inst|index[0]~7\) # (GND)))
-- \inst|index[1]~9\ = CARRY((!\inst|index[0]~7\) # (!\inst|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datad => VCC,
	cin => \inst|index[0]~7\,
	combout => \inst|index[1]~8_combout\,
	cout => \inst|index[1]~9\);

-- Location: FF_X46_Y20_N13
\inst|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|index[1]~8_combout\,
	sclr => \inst|LessThan0~1_combout\,
	ena => \inst|DISPLAY|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(1));

-- Location: LCCOMB_X46_Y20_N14
\inst|index[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|index[2]~10_combout\ = (\inst|index\(2) & (\inst|index[1]~9\ $ (GND))) # (!\inst|index\(2) & (!\inst|index[1]~9\ & VCC))
-- \inst|index[2]~11\ = CARRY((\inst|index\(2) & !\inst|index[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(2),
	datad => VCC,
	cin => \inst|index[1]~9\,
	combout => \inst|index[2]~10_combout\,
	cout => \inst|index[2]~11\);

-- Location: FF_X46_Y20_N15
\inst|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|index[2]~10_combout\,
	sclr => \inst|LessThan0~1_combout\,
	ena => \inst|DISPLAY|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(2));

-- Location: FF_X46_Y20_N17
\inst|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|index[3]~12_combout\,
	sclr => \inst|LessThan0~1_combout\,
	ena => \inst|DISPLAY|txd_accepted~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|index\(3));

-- Location: LCCOMB_X42_Y20_N28
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|index\(2)) # ((\inst|index\(1)) # (\inst|index\(4) $ (\inst|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(4),
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y20_N18
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|index\(3)) # ((\inst|index\(5)) # (\inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(5),
	datad => \inst|Mux0~0_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: FF_X42_Y20_N19
\inst|txd_rs_and_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(8));

-- Location: LCCOMB_X6_Y45_N10
\inst|DISPLAY|lcd_data[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[7]~8_combout\ = (\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & !\inst|txd_rs_and_data\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datac => \inst|txd_rs_and_data\(8),
	combout => \inst|DISPLAY|lcd_data[7]~8_combout\);

-- Location: LCCOMB_X6_Y45_N28
\inst|DISPLAY|lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_rs~0_combout\ = (\inst|DISPLAY|Equal0~6_combout\) # ((!\inst|DISPLAY|write_enable_counter\(0) & (\inst|DISPLAY|Equal1~0_combout\ & !\inst|DISPLAY|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|write_enable_counter\(0),
	datab => \inst|DISPLAY|Equal1~0_combout\,
	datac => \inst|DISPLAY|Equal2~7_combout\,
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_rs~0_combout\);

-- Location: FF_X6_Y45_N11
\inst|DISPLAY|lcd_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[7]~8_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[7]~reg0_q\);

-- Location: LCCOMB_X7_Y45_N22
\inst|DISPLAY|lcd_data[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[7]~11_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[7]~11_combout\);

-- Location: FF_X7_Y45_N23
\inst|DISPLAY|lcd_data[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[7]~11_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[7]~en_q\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X45_Y19_N18
\inst|top_line~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~49_combout\ = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~49_combout\);

-- Location: FF_X47_Y20_N21
\inst|top_line[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(104));

-- Location: LCCOMB_X46_Y19_N28
\inst|bottom_line[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bottom_line[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|bottom_line[60]~feeder_combout\);

-- Location: FF_X46_Y19_N29
\inst|bottom_line[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|bottom_line[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bottom_line\(60));

-- Location: LCCOMB_X43_Y20_N28
\inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\inst|index\(3) & (!\inst|index\(4) & (\inst|top_line\(104)))) # (!\inst|index\(3) & (((\inst|bottom_line\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|top_line\(104),
	datac => \inst|bottom_line\(60),
	datad => \inst|index\(3),
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X47_Y19_N22
\inst|top_line~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~28_combout\ = (\SW[1]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|top_line~28_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X47_Y19_N30
\inst|top_line~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~32_combout\ = ((!\SW[3]~input_o\ & ((!\SW[0]~input_o\) # (!\inst|top_line~28_combout\)))) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line~28_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~32_combout\);

-- Location: LCCOMB_X47_Y19_N24
\inst|top_line~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~27_combout\ = (\SW[3]~input_o\) # ((\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|top_line~27_combout\);

-- Location: LCCOMB_X47_Y19_N12
\inst|top_line~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~33_combout\ = (!\inst|top_line~32_combout\ & \inst|top_line~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|top_line~32_combout\,
	datad => \inst|top_line~27_combout\,
	combout => \inst|top_line~33_combout\);

-- Location: FF_X47_Y20_N7
\inst|top_line[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(18));

-- Location: LCCOMB_X47_Y19_N28
\inst|top_line~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~29_combout\ = (\SW[3]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~29_combout\);

-- Location: LCCOMB_X47_Y19_N2
\inst|top_line~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~30_combout\ = ((!\SW[2]~input_o\ & !\SW[3]~input_o\)) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~30_combout\);

-- Location: LCCOMB_X47_Y19_N0
\inst|top_line[100]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line[100]~0_combout\ = (\SW[1]~input_o\ & ((\inst|top_line~30_combout\))) # (!\SW[1]~input_o\ & (!\inst|top_line~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|top_line~29_combout\,
	datad => \inst|top_line~30_combout\,
	combout => \inst|top_line[100]~0_combout\);

-- Location: LCCOMB_X47_Y19_N20
\inst|top_line~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~31_combout\ = ((!\SW[3]~input_o\ & ((!\SW[0]~input_o\) # (!\inst|top_line~28_combout\)))) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line~28_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~31_combout\);

-- Location: FF_X47_Y19_N1
\inst|top_line[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|top_line[100]~0_combout\,
	asdata => \inst|top_line~31_combout\,
	sload => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(100));

-- Location: LCCOMB_X45_Y20_N22
\inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (!\inst|index\(3) & ((\inst|index\(4) & ((\inst|bottom_line\(60)))) # (!\inst|index\(4) & (\inst|top_line\(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line\(100),
	datab => \inst|index\(3),
	datac => \inst|bottom_line\(60),
	datad => \inst|index\(4),
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X45_Y20_N12
\inst|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~4_combout\ = (\inst|Mux2~3_combout\) # ((\inst|top_line\(18) & (!\inst|index\(4) & \inst|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line\(18),
	datab => \inst|index\(4),
	datac => \inst|Mux2~3_combout\,
	datad => \inst|index\(3),
	combout => \inst|Mux2~4_combout\);

-- Location: LCCOMB_X42_Y20_N20
\inst|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~5_combout\ = (\inst|index\(0) & ((\inst|Mux2~3_combout\))) # (!\inst|index\(0) & (\inst|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datac => \inst|Mux2~4_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|Mux2~5_combout\);

-- Location: LCCOMB_X42_Y20_N12
\inst|txd_rs_and_data[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|txd_rs_and_data[6]~0_combout\ = (\inst|index\(1) & ((\inst|Mux2~5_combout\))) # (!\inst|index\(1) & (\inst|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux2~2_combout\,
	datad => \inst|Mux2~5_combout\,
	combout => \inst|txd_rs_and_data[6]~0_combout\);

-- Location: LCCOMB_X46_Y19_N20
\inst|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~10_combout\ = (\inst|bottom_line\(60) & ((!\inst|index\(3)) # (!\inst|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|bottom_line\(60),
	datad => \inst|index\(3),
	combout => \inst|Mux2~10_combout\);

-- Location: LCCOMB_X46_Y19_N26
\inst|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~6_combout\ = (\inst|index\(3) & (((\inst|top_line\(100) & !\inst|index\(4))))) # (!\inst|index\(3) & ((\inst|bottom_line\(60)) # ((\inst|index\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|bottom_line\(60),
	datac => \inst|top_line\(100),
	datad => \inst|index\(4),
	combout => \inst|Mux2~6_combout\);

-- Location: FF_X46_Y19_N17
\inst|top_line[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(33));

-- Location: LCCOMB_X46_Y19_N30
\inst|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~7_combout\ = (\inst|index\(3) & (\inst|top_line\(33) & ((!\inst|index\(4))))) # (!\inst|index\(3) & (((\inst|bottom_line\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line\(33),
	datab => \inst|bottom_line\(60),
	datac => \inst|index\(3),
	datad => \inst|index\(4),
	combout => \inst|Mux2~7_combout\);

-- Location: LCCOMB_X46_Y19_N24
\inst|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~8_combout\ = (\inst|index\(3) & ((\inst|index\(4) & (\inst|bottom_line\(60))) # (!\inst|index\(4) & ((\inst|top_line\(100))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bottom_line\(60),
	datab => \inst|top_line\(100),
	datac => \inst|index\(3),
	datad => \inst|index\(4),
	combout => \inst|Mux2~8_combout\);

-- Location: LCCOMB_X46_Y19_N6
\inst|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~9_combout\ = (\inst|index\(1) & ((\inst|index\(0)) # ((\inst|Mux2~7_combout\)))) # (!\inst|index\(1) & (!\inst|index\(0) & ((\inst|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(0),
	datac => \inst|Mux2~7_combout\,
	datad => \inst|Mux2~8_combout\,
	combout => \inst|Mux2~9_combout\);

-- Location: LCCOMB_X46_Y19_N22
\inst|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~11_combout\ = (\inst|index\(0) & ((\inst|Mux2~9_combout\ & (\inst|Mux2~10_combout\)) # (!\inst|Mux2~9_combout\ & ((\inst|Mux2~6_combout\))))) # (!\inst|index\(0) & (((\inst|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux2~10_combout\,
	datac => \inst|Mux2~6_combout\,
	datad => \inst|Mux2~9_combout\,
	combout => \inst|Mux2~11_combout\);

-- Location: FF_X42_Y20_N13
\inst|txd_rs_and_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|txd_rs_and_data[6]~0_combout\,
	asdata => \inst|Mux2~11_combout\,
	sclr => \inst|index\(5),
	sload => \inst|ALT_INV_index\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(6));

-- Location: LCCOMB_X6_Y45_N16
\inst|DISPLAY|lcd_data[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[6]~9_combout\ = (\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & \inst|txd_rs_and_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datad => \inst|txd_rs_and_data\(6),
	combout => \inst|DISPLAY|lcd_data[6]~9_combout\);

-- Location: FF_X6_Y45_N17
\inst|DISPLAY|lcd_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[6]~9_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[6]~reg0_q\);

-- Location: LCCOMB_X7_Y45_N0
\inst|DISPLAY|lcd_data[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[6]~12_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[6]~12_combout\);

-- Location: FF_X7_Y45_N1
\inst|DISPLAY|lcd_data[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[6]~12_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[6]~en_q\);

-- Location: LCCOMB_X2_Y45_N14
\inst|DISPLAY|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Selector23~0_combout\ = (!\inst|DISPLAY|state.POWER_ON_PHASE_3~q\ & (\inst|DISPLAY|state.POWER_ON_PHASE_1~q\ & !\inst|DISPLAY|state.POWER_ON_PHASE_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_3~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_1~q\,
	datad => \inst|DISPLAY|state.POWER_ON_PHASE_2~q\,
	combout => \inst|DISPLAY|Selector23~0_combout\);

-- Location: LCCOMB_X43_Y19_N0
\inst|top_line[45]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line[45]~53_combout\ = !\inst|top_line~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|top_line~49_combout\,
	combout => \inst|top_line[45]~53_combout\);

-- Location: FF_X43_Y20_N23
\inst|top_line[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line[45]~53_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(45));

-- Location: LCCOMB_X43_Y20_N22
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|index\(4) & ((!\inst|bottom_line\(60)))) # (!\inst|index\(4) & (!\inst|top_line\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(4),
	datac => \inst|top_line\(45),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y20_N2
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mux3~0_combout\ & ((\inst|index\(3)) # ((\inst|index\(1) & \inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|Mux3~0_combout\,
	datac => \inst|index\(1),
	datad => \inst|index\(2),
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X42_Y20_N30
\inst|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~6_combout\ = (\inst|index\(2)) # ((\inst|index\(4) & ((\inst|index\(1)) # (\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(4),
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|Mux3~6_combout\);

-- Location: LCCOMB_X42_Y20_N4
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\inst|index\(2) & (\inst|index\(1) & (\inst|index\(4) $ (\inst|index\(0))))) # (!\inst|index\(2) & (!\inst|index\(1) & (\inst|index\(4) $ (\inst|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(4),
	datac => \inst|index\(1),
	datad => \inst|index\(0),
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X43_Y20_N14
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (!\inst|index\(2) & (!\inst|index\(3) & ((\inst|index\(4)) # (!\inst|bottom_line\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(3),
	datac => \inst|bottom_line\(60),
	datad => \inst|index\(4),
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X43_Y20_N12
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (!\inst|index\(3) & (!\inst|bottom_line\(60) & (\inst|index\(2) $ (\inst|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|index\(3),
	datac => \inst|index\(1),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X43_Y20_N24
\inst|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = (\inst|index\(5)) # ((\inst|Mux3~2_combout\) # ((\inst|Mux3~3_combout\ & \inst|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|Mux3~3_combout\,
	datac => \inst|Mux3~4_combout\,
	datad => \inst|Mux3~2_combout\,
	combout => \inst|Mux3~5_combout\);

-- Location: LCCOMB_X42_Y20_N22
\inst|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~7_combout\ = (\inst|Mux3~1_combout\) # ((\inst|Mux3~5_combout\) # ((\inst|index\(3) & \inst|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|Mux3~1_combout\,
	datac => \inst|Mux3~6_combout\,
	datad => \inst|Mux3~5_combout\,
	combout => \inst|Mux3~7_combout\);

-- Location: FF_X42_Y20_N23
\inst|txd_rs_and_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Mux3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(5));

-- Location: LCCOMB_X6_Y45_N6
\inst|DISPLAY|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Selector22~0_combout\ = ((\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & \inst|txd_rs_and_data\(5))) # (!\inst|DISPLAY|Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datac => \inst|DISPLAY|Selector23~0_combout\,
	datad => \inst|txd_rs_and_data\(5),
	combout => \inst|DISPLAY|Selector22~0_combout\);

-- Location: FF_X6_Y45_N7
\inst|DISPLAY|lcd_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Selector22~0_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[5]~reg0_q\);

-- Location: LCCOMB_X7_Y45_N14
\inst|DISPLAY|lcd_data[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[5]~13_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[5]~13_combout\);

-- Location: FF_X7_Y45_N15
\inst|DISPLAY|lcd_data[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[5]~13_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[5]~en_q\);

-- Location: LCCOMB_X45_Y19_N30
\inst|top_line~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~34_combout\ = (\SW[2]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~34_combout\);

-- Location: LCCOMB_X45_Y19_N24
\inst|top_line~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~35_combout\ = (!\SW[0]~input_o\ & (!\SW[3]~input_o\ & (\inst|top_line~34_combout\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst|top_line~34_combout\,
	datad => \SW[1]~input_o\,
	combout => \inst|top_line~35_combout\);

-- Location: LCCOMB_X48_Y20_N24
\inst|top_line[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line[28]~feeder_combout\ = \inst|top_line~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|top_line~35_combout\,
	combout => \inst|top_line[28]~feeder_combout\);

-- Location: FF_X48_Y20_N25
\inst|top_line[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|top_line[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(28));

-- Location: LCCOMB_X47_Y20_N8
\inst|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~12_combout\ = (\inst|index\(3) & ((\inst|index\(4) & (\inst|bottom_line\(60))) # (!\inst|index\(4) & ((\inst|top_line\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|bottom_line\(60),
	datac => \inst|index\(4),
	datad => \inst|top_line\(28),
	combout => \inst|Mux2~12_combout\);

-- Location: LCCOMB_X48_Y20_N20
\inst|top_line[20]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line[20]~54_combout\ = !\inst|top_line~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|top_line~35_combout\,
	combout => \inst|top_line[20]~54_combout\);

-- Location: FF_X43_Y20_N11
\inst|top_line[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line[20]~54_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(20));

-- Location: LCCOMB_X43_Y20_N10
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|index\(3) & (\inst|top_line\(20))) # (!\inst|index\(3) & ((\inst|top_line\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(3),
	datac => \inst|top_line\(20),
	datad => \inst|top_line\(104),
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X43_Y20_N0
\inst|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~13_combout\ = (\inst|index\(4) & (((!\inst|index\(3) & \inst|bottom_line\(60))))) # (!\inst|index\(4) & (\inst|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst|index\(3),
	datac => \inst|bottom_line\(60),
	datad => \inst|index\(4),
	combout => \inst|Mux2~13_combout\);

-- Location: LCCOMB_X47_Y20_N6
\inst|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~14_combout\ = (\inst|top_line\(100) & !\inst|index\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|top_line\(100),
	datad => \inst|index\(4),
	combout => \inst|Mux2~14_combout\);

-- Location: LCCOMB_X43_Y20_N6
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|index\(0) & (((\inst|index\(1))))) # (!\inst|index\(0) & ((\inst|index\(1) & (\inst|Mux2~13_combout\)) # (!\inst|index\(1) & ((\inst|Mux2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux2~13_combout\,
	datac => \inst|index\(1),
	datad => \inst|Mux2~14_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X43_Y20_N16
\inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst|index\(0) & ((\inst|Mux4~0_combout\ & ((\inst|Mux2~3_combout\))) # (!\inst|Mux4~0_combout\ & (\inst|Mux2~12_combout\)))) # (!\inst|index\(0) & (((\inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux2~12_combout\,
	datac => \inst|Mux2~3_combout\,
	datad => \inst|Mux4~0_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: LCCOMB_X47_Y20_N20
\inst|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~15_combout\ = (\inst|index\(4) & (((\inst|bottom_line\(60))))) # (!\inst|index\(4) & (!\inst|index\(3) & (\inst|top_line\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|top_line\(104),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux2~15_combout\);

-- Location: LCCOMB_X47_Y19_N14
\inst|top_line~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~36_combout\ = (!\SW[3]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|top_line~36_combout\);

-- Location: LCCOMB_X47_Y19_N16
\inst|top_line~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~37_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[3]~input_o\ & ((\inst|top_line~36_combout\) # (!\SW[4]~input_o\))) # (!\SW[3]~input_o\ & ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \inst|top_line~36_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~37_combout\);

-- Location: LCCOMB_X47_Y19_N18
\inst|top_line~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~38_combout\ = (!\inst|top_line~36_combout\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|top_line~36_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~38_combout\);

-- Location: LCCOMB_X47_Y19_N26
\inst|top_line[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line[10]~1_combout\ = (\SW[2]~input_o\ & ((!\inst|top_line~38_combout\))) # (!\SW[2]~input_o\ & (\inst|top_line~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|top_line~37_combout\,
	datad => \inst|top_line~38_combout\,
	combout => \inst|top_line[10]~1_combout\);

-- Location: LCCOMB_X47_Y19_N8
\inst|top_line~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~39_combout\ = ((!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\))) # (!\inst|top_line~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|top_line~38_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|top_line~39_combout\);

-- Location: FF_X47_Y19_N27
\inst|top_line[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|top_line[10]~1_combout\,
	asdata => \inst|top_line~39_combout\,
	sload => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(10));

-- Location: LCCOMB_X47_Y20_N4
\inst|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~17_combout\ = (\inst|index\(3) & (!\inst|index\(4) & ((\inst|bottom_line\(60))))) # (!\inst|index\(3) & (\inst|index\(4) & (\inst|top_line\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|top_line\(10),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux2~17_combout\);

-- Location: LCCOMB_X47_Y20_N18
\inst|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~16_combout\ = (!\inst|index\(4) & ((\inst|index\(3) & ((\inst|top_line\(18)))) # (!\inst|index\(3) & (\inst|top_line\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line\(104),
	datab => \inst|index\(4),
	datac => \inst|index\(3),
	datad => \inst|top_line\(18),
	combout => \inst|Mux2~16_combout\);

-- Location: LCCOMB_X47_Y20_N26
\inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~2_combout\ = (\inst|index\(1) & (\inst|index\(0))) # (!\inst|index\(1) & ((\inst|index\(0) & ((\inst|Mux2~16_combout\))) # (!\inst|index\(0) & (\inst|Mux2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(0),
	datac => \inst|Mux2~17_combout\,
	datad => \inst|Mux2~16_combout\,
	combout => \inst|Mux4~2_combout\);

-- Location: LCCOMB_X47_Y20_N24
\inst|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~18_combout\ = (\inst|index\(4) & (((\inst|bottom_line\(60))))) # (!\inst|index\(4) & (!\inst|index\(3) & (\inst|top_line\(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|top_line\(100),
	datac => \inst|index\(4),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux2~18_combout\);

-- Location: LCCOMB_X47_Y20_N10
\inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~3_combout\ = (\inst|index\(1) & ((\inst|Mux4~2_combout\ & ((\inst|Mux2~18_combout\))) # (!\inst|Mux4~2_combout\ & (\inst|Mux2~15_combout\)))) # (!\inst|index\(1) & (((\inst|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux2~15_combout\,
	datac => \inst|Mux4~2_combout\,
	datad => \inst|Mux2~18_combout\,
	combout => \inst|Mux4~3_combout\);

-- Location: LCCOMB_X43_Y20_N4
\inst|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~4_combout\ = (!\inst|index\(5) & ((\inst|index\(2) & (\inst|Mux4~1_combout\)) # (!\inst|index\(2) & ((\inst|Mux4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux4~1_combout\,
	datac => \inst|index\(5),
	datad => \inst|Mux4~3_combout\,
	combout => \inst|Mux4~4_combout\);

-- Location: FF_X43_Y20_N5
\inst|txd_rs_and_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(4));

-- Location: LCCOMB_X6_Y45_N4
\inst|DISPLAY|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Selector23~1_combout\ = ((\inst|DISPLAY|state.POWER_ON_PHASE_5~q\) # ((\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & \inst|txd_rs_and_data\(4)))) # (!\inst|DISPLAY|Selector23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datab => \inst|DISPLAY|Selector23~0_combout\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_5~q\,
	datad => \inst|txd_rs_and_data\(4),
	combout => \inst|DISPLAY|Selector23~1_combout\);

-- Location: FF_X6_Y45_N5
\inst|DISPLAY|lcd_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Selector23~1_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[4]~reg0_q\);

-- Location: LCCOMB_X7_Y45_N28
\inst|DISPLAY|lcd_data[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[4]~14_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[4]~14_combout\);

-- Location: FF_X7_Y45_N29
\inst|DISPLAY|lcd_data[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[4]~14_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[4]~en_q\);

-- Location: LCCOMB_X46_Y20_N22
\inst|Mux2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~23_combout\ = (!\inst|index\(4) & (\inst|top_line\(100) & !\inst|index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(4),
	datac => \inst|top_line\(100),
	datad => \inst|index\(3),
	combout => \inst|Mux2~23_combout\);

-- Location: LCCOMB_X45_Y19_N28
\inst|top_line~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~50_combout\ = (\SW[3]~input_o\ $ (((!\SW[1]~input_o\) # (!\SW[2]~input_o\)))) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~50_combout\);

-- Location: FF_X43_Y20_N9
\inst|top_line[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~50_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(67));

-- Location: LCCOMB_X45_Y19_N14
\inst|top_line~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~40_combout\ = (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[4]~input_o\)) # (!\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~40_combout\);

-- Location: FF_X43_Y20_N3
\inst|top_line[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~40_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(3));

-- Location: LCCOMB_X43_Y20_N2
\inst|Mux2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~24_combout\ = (\inst|index\(4) & ((\inst|index\(3) & ((\inst|bottom_line\(60)))) # (!\inst|index\(3) & (\inst|top_line\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|top_line\(3),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux2~24_combout\);

-- Location: LCCOMB_X43_Y20_N8
\inst|Mux2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~25_combout\ = (\inst|Mux2~24_combout\) # ((!\inst|index\(4) & (\inst|index\(3) & \inst|top_line\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|top_line\(67),
	datad => \inst|Mux2~24_combout\,
	combout => \inst|Mux2~25_combout\);

-- Location: LCCOMB_X43_Y20_N30
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|index\(0) & (((\inst|index\(1)) # (\inst|Mux2~14_combout\)))) # (!\inst|index\(0) & (\inst|Mux2~25_combout\ & (!\inst|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|Mux2~25_combout\,
	datac => \inst|index\(1),
	datad => \inst|Mux2~14_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X43_Y20_N18
\inst|Mux2~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~45_combout\ = (\inst|Mux2~8_combout\) # ((!\inst|index\(4) & (\inst|top_line\(104) & !\inst|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|top_line\(104),
	datac => \inst|Mux2~8_combout\,
	datad => \inst|index\(3),
	combout => \inst|Mux2~45_combout\);

-- Location: LCCOMB_X43_Y20_N20
\inst|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = (\inst|index\(1) & ((\inst|Mux5~2_combout\ & ((\inst|Mux2~45_combout\))) # (!\inst|Mux5~2_combout\ & (\inst|Mux2~23_combout\)))) # (!\inst|index\(1) & (((\inst|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux2~23_combout\,
	datac => \inst|Mux5~2_combout\,
	datad => \inst|Mux2~45_combout\,
	combout => \inst|Mux5~3_combout\);

-- Location: LCCOMB_X46_Y19_N10
\inst|Mux2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~22_combout\ = (!\inst|index\(4) & (\inst|index\(3) & \inst|top_line\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datac => \inst|index\(3),
	datad => \inst|top_line\(10),
	combout => \inst|Mux2~22_combout\);

-- Location: LCCOMB_X46_Y19_N8
\inst|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~19_combout\ = (!\inst|index\(4) & ((\inst|index\(3) & (\inst|top_line\(18))) # (!\inst|index\(3) & ((\inst|bottom_line\(60))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|top_line\(18),
	datac => \inst|bottom_line\(60),
	datad => \inst|index\(3),
	combout => \inst|Mux2~19_combout\);

-- Location: LCCOMB_X46_Y19_N14
\inst|Mux2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~20_combout\ = (!\inst|index\(4) & (!\inst|index\(3) & \inst|top_line\(104)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datac => \inst|index\(3),
	datad => \inst|top_line\(104),
	combout => \inst|Mux2~20_combout\);

-- Location: LCCOMB_X46_Y19_N16
\inst|Mux2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~21_combout\ = (\inst|index\(4) & (\inst|bottom_line\(60) & ((!\inst|index\(3))))) # (!\inst|index\(4) & (((\inst|top_line\(33) & \inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|bottom_line\(60),
	datac => \inst|top_line\(33),
	datad => \inst|index\(3),
	combout => \inst|Mux2~21_combout\);

-- Location: LCCOMB_X46_Y19_N12
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|index\(1) & ((\inst|Mux2~20_combout\) # ((\inst|index\(0))))) # (!\inst|index\(1) & (((!\inst|index\(0) & \inst|Mux2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux2~20_combout\,
	datac => \inst|index\(0),
	datad => \inst|Mux2~21_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y19_N0
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|index\(0) & ((\inst|Mux5~0_combout\ & (\inst|Mux2~22_combout\)) # (!\inst|Mux5~0_combout\ & ((\inst|Mux2~19_combout\))))) # (!\inst|index\(0) & (((\inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~22_combout\,
	datab => \inst|Mux2~19_combout\,
	datac => \inst|index\(0),
	datad => \inst|Mux5~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X43_Y20_N26
\inst|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (!\inst|index\(5) & ((\inst|index\(2) & ((\inst|Mux5~1_combout\))) # (!\inst|index\(2) & (\inst|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(2),
	datab => \inst|Mux5~3_combout\,
	datac => \inst|index\(5),
	datad => \inst|Mux5~1_combout\,
	combout => \inst|Mux5~4_combout\);

-- Location: FF_X43_Y20_N27
\inst|txd_rs_and_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(3));

-- Location: LCCOMB_X7_Y45_N6
\inst|DISPLAY|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Selector24~0_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_3~q\) # ((\inst|DISPLAY|state.POWER_ON_PHASE_6~q\) # ((\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & \inst|txd_rs_and_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_3~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_6~q\,
	datad => \inst|txd_rs_and_data\(3),
	combout => \inst|DISPLAY|Selector24~0_combout\);

-- Location: FF_X7_Y45_N7
\inst|DISPLAY|lcd_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Selector24~0_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[3]~reg0_q\);

-- Location: LCCOMB_X7_Y45_N4
\inst|DISPLAY|lcd_data[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[3]~15_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[3]~15_combout\);

-- Location: FF_X7_Y45_N5
\inst|DISPLAY|lcd_data[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[3]~15_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[3]~en_q\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X48_Y20_N22
\inst|bottom_line~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bottom_line~0_combout\ = (\SW[7]~input_o\ & (!\SW[8]~input_o\ & (\SW[5]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[7]~input_o\ & ((\SW[6]~input_o\ $ (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|bottom_line~0_combout\);

-- Location: FF_X48_Y20_N15
\inst|bottom_line[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|bottom_line~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bottom_line\(34));

-- Location: LCCOMB_X48_Y20_N14
\inst|Mux2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~26_combout\ = (\inst|index\(3) & ((\inst|index\(4) & ((\inst|bottom_line\(34)))) # (!\inst|index\(4) & (\inst|top_line\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|top_line\(104),
	datac => \inst|bottom_line\(34),
	datad => \inst|index\(3),
	combout => \inst|Mux2~26_combout\);

-- Location: LCCOMB_X45_Y20_N10
\inst|Mux2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~27_combout\ = (\inst|Mux2~26_combout\) # ((!\inst|index\(3) & \inst|bottom_line\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|index\(3),
	datac => \inst|bottom_line\(60),
	datad => \inst|Mux2~26_combout\,
	combout => \inst|Mux2~27_combout\);

-- Location: LCCOMB_X45_Y20_N0
\inst|Mux2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~28_combout\ = (\inst|index\(4) & (((\inst|bottom_line\(60) & !\inst|index\(3))))) # (!\inst|index\(4) & (\inst|top_line\(104) & ((\inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|top_line\(104),
	datac => \inst|bottom_line\(60),
	datad => \inst|index\(3),
	combout => \inst|Mux2~28_combout\);

-- Location: LCCOMB_X45_Y20_N14
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|index\(0) & (((\inst|index\(1))))) # (!\inst|index\(0) & ((\inst|index\(1) & (\inst|Mux2~4_combout\)) # (!\inst|index\(1) & ((\inst|Mux2~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~4_combout\,
	datab => \inst|index\(0),
	datac => \inst|index\(1),
	datad => \inst|Mux2~28_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y20_N24
\inst|Mux2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~29_combout\ = (\inst|Mux2~3_combout\) # ((!\inst|index\(4) & (\inst|index\(3) & \inst|top_line\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|Mux2~3_combout\,
	datad => \inst|top_line\(10),
	combout => \inst|Mux2~29_combout\);

-- Location: LCCOMB_X45_Y20_N26
\inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst|index\(0) & ((\inst|Mux6~0_combout\ & ((\inst|Mux2~29_combout\))) # (!\inst|Mux6~0_combout\ & (\inst|Mux2~27_combout\)))) # (!\inst|index\(0) & (((\inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~27_combout\,
	datab => \inst|index\(0),
	datac => \inst|Mux6~0_combout\,
	datad => \inst|Mux2~29_combout\,
	combout => \inst|Mux6~1_combout\);

-- Location: LCCOMB_X45_Y19_N0
\inst|Mux2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~32_combout\ = (!\inst|index\(4) & ((\inst|index\(3) & ((\inst|top_line\(33)))) # (!\inst|index\(3) & (\inst|bottom_line\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|bottom_line\(60),
	datac => \inst|index\(4),
	datad => \inst|top_line\(33),
	combout => \inst|Mux2~32_combout\);

-- Location: LCCOMB_X45_Y19_N22
\inst|top_line~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~51_combout\ = (\SW[3]~input_o\ & (\SW[4]~input_o\ & (\SW[2]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~51_combout\);

-- Location: FF_X45_Y19_N7
\inst|top_line[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~51_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(66));

-- Location: LCCOMB_X45_Y19_N8
\inst|top_line~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~41_combout\ = (\SW[1]~input_o\ & (\SW[2]~input_o\ & ((!\SW[4]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~41_combout\);

-- Location: FF_X45_Y19_N21
\inst|top_line[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(2));

-- Location: LCCOMB_X45_Y19_N20
\inst|Mux2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~30_combout\ = (\inst|index\(4) & ((\inst|index\(3) & (\inst|bottom_line\(60))) # (!\inst|index\(3) & ((\inst|top_line\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bottom_line\(60),
	datab => \inst|index\(4),
	datac => \inst|top_line\(2),
	datad => \inst|index\(3),
	combout => \inst|Mux2~30_combout\);

-- Location: LCCOMB_X45_Y19_N6
\inst|Mux2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~31_combout\ = (\inst|Mux2~30_combout\) # ((\inst|index\(3) & (!\inst|index\(4) & \inst|top_line\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|top_line\(66),
	datad => \inst|Mux2~30_combout\,
	combout => \inst|Mux2~31_combout\);

-- Location: LCCOMB_X45_Y20_N16
\inst|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\inst|index\(1) & (\inst|index\(0))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|Mux2~20_combout\)) # (!\inst|index\(0) & ((\inst|Mux2~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(0),
	datac => \inst|Mux2~20_combout\,
	datad => \inst|Mux2~31_combout\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCCOMB_X45_Y20_N2
\inst|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = (\inst|index\(1) & ((\inst|Mux6~2_combout\ & ((\inst|Mux2~32_combout\))) # (!\inst|Mux6~2_combout\ & (\inst|Mux2~14_combout\)))) # (!\inst|index\(1) & (((\inst|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~14_combout\,
	datab => \inst|Mux2~32_combout\,
	datac => \inst|index\(1),
	datad => \inst|Mux6~2_combout\,
	combout => \inst|Mux6~3_combout\);

-- Location: LCCOMB_X45_Y20_N6
\inst|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~4_combout\ = (!\inst|index\(5) & ((\inst|index\(2) & (\inst|Mux6~1_combout\)) # (!\inst|index\(2) & ((\inst|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(2),
	datac => \inst|Mux6~1_combout\,
	datad => \inst|Mux6~3_combout\,
	combout => \inst|Mux6~4_combout\);

-- Location: FF_X45_Y20_N7
\inst|txd_rs_and_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(2));

-- Location: LCCOMB_X7_Y45_N30
\inst|DISPLAY|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Selector25~0_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_6~q\) # ((\inst|DISPLAY|state.POWER_ON_PHASE_4~q\) # ((\inst|txd_rs_and_data\(2) & \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.POWER_ON_PHASE_6~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_4~q\,
	datac => \inst|txd_rs_and_data\(2),
	datad => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	combout => \inst|DISPLAY|Selector25~0_combout\);

-- Location: FF_X7_Y45_N31
\inst|DISPLAY|lcd_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Selector25~0_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[2]~reg0_q\);

-- Location: LCCOMB_X6_Y45_N22
\inst|DISPLAY|lcd_data[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[2]~16_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[2]~16_combout\);

-- Location: FF_X6_Y45_N23
\inst|DISPLAY|lcd_data[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[2]~16_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[2]~en_q\);

-- Location: LCCOMB_X45_Y19_N16
\inst|top_line~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~45_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~45_combout\);

-- Location: FF_X46_Y19_N19
\inst|top_line[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(17));

-- Location: LCCOMB_X46_Y19_N18
\inst|Mux2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~37_combout\ = (!\inst|index\(4) & ((\inst|index\(3) & (\inst|top_line\(17))) # (!\inst|index\(3) & ((\inst|top_line\(104))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|top_line\(17),
	datad => \inst|top_line\(104),
	combout => \inst|Mux2~37_combout\);

-- Location: LCCOMB_X48_Y20_N30
\inst|bottom_line~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bottom_line~2_combout\ = (\SW[8]~input_o\) # ((\SW[7]~input_o\ & ((\SW[5]~input_o\) # (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|bottom_line~2_combout\);

-- Location: FF_X47_Y20_N15
\inst|bottom_line[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|bottom_line~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bottom_line\(57));

-- Location: LCCOMB_X47_Y20_N14
\inst|Mux2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~33_combout\ = (\inst|index\(3) & ((\inst|index\(4) & (\inst|bottom_line\(57))) # (!\inst|index\(4) & ((\inst|top_line\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|bottom_line\(57),
	datad => \inst|top_line\(28),
	combout => \inst|Mux2~33_combout\);

-- Location: LCCOMB_X47_Y20_N0
\inst|Mux2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~34_combout\ = (\inst|Mux2~33_combout\) # ((!\inst|index\(3) & (!\inst|index\(4) & \inst|bottom_line\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|Mux2~33_combout\,
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux2~34_combout\);

-- Location: LCCOMB_X47_Y19_N4
\inst|top_line~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~44_combout\ = (((!\SW[3]~input_o\ & !\SW[2]~input_o\)) # (!\SW[4]~input_o\)) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|top_line~44_combout\);

-- Location: FF_X47_Y20_N17
\inst|top_line[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(65));

-- Location: LCCOMB_X45_Y19_N10
\inst|top_line~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~42_combout\ = (\SW[3]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|top_line~42_combout\);

-- Location: LCCOMB_X48_Y19_N0
\inst|top_line[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line[1]~2_combout\ = (\SW[1]~input_o\ & ((!\SW[3]~input_o\))) # (!\SW[1]~input_o\ & (\inst|top_line~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line~42_combout\,
	datab => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|top_line[1]~2_combout\);

-- Location: LCCOMB_X47_Y19_N6
\inst|top_line~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~43_combout\ = (!\SW[1]~input_o\ & (\SW[4]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|top_line~43_combout\);

-- Location: FF_X48_Y19_N1
\inst|top_line[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|top_line[1]~2_combout\,
	asdata => \inst|top_line~43_combout\,
	sload => \SW[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(1));

-- Location: LCCOMB_X47_Y20_N2
\inst|Mux2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~35_combout\ = (\inst|index\(4) & ((\inst|index\(3) & ((\inst|bottom_line\(60)))) # (!\inst|index\(3) & (\inst|top_line\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|top_line\(1),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux2~35_combout\);

-- Location: LCCOMB_X47_Y20_N16
\inst|Mux2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~36_combout\ = (\inst|Mux2~35_combout\) # ((\inst|index\(3) & (!\inst|index\(4) & \inst|top_line\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|top_line\(65),
	datad => \inst|Mux2~35_combout\,
	combout => \inst|Mux2~36_combout\);

-- Location: LCCOMB_X46_Y20_N2
\inst|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~6_combout\ = (\inst|index\(1) & ((\inst|Mux2~34_combout\) # ((\inst|index\(2))))) # (!\inst|index\(1) & (((!\inst|index\(2) & \inst|Mux2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|Mux2~34_combout\,
	datac => \inst|index\(2),
	datad => \inst|Mux2~36_combout\,
	combout => \inst|Mux7~6_combout\);

-- Location: LCCOMB_X46_Y20_N4
\inst|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~7_combout\ = (\inst|index\(2) & ((\inst|Mux7~6_combout\ & (\inst|Mux2~37_combout\)) # (!\inst|Mux7~6_combout\ & ((\inst|Mux2~7_combout\))))) # (!\inst|index\(2) & (((\inst|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~37_combout\,
	datab => \inst|index\(2),
	datac => \inst|Mux2~7_combout\,
	datad => \inst|Mux7~6_combout\,
	combout => \inst|Mux7~7_combout\);

-- Location: LCCOMB_X46_Y20_N24
\inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (!\inst|index\(5) & (\inst|index\(0) & (\inst|index\(1) $ (\inst|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(5),
	datac => \inst|index\(2),
	datad => \inst|index\(0),
	combout => \inst|Mux7~1_combout\);

-- Location: LCCOMB_X48_Y20_N0
\inst|bottom_line~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bottom_line~1_combout\ = (\SW[6]~input_o\ & (!\SW[8]~input_o\ & ((\SW[5]~input_o\) # (!\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[8]~input_o\ & ((\SW[7]~input_o\) # (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|bottom_line~1_combout\);

-- Location: FF_X47_Y20_N13
\inst|bottom_line[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|bottom_line~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bottom_line\(33));

-- Location: LCCOMB_X47_Y20_N12
\inst|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = (\inst|index\(1) & (((\inst|bottom_line\(60))))) # (!\inst|index\(1) & (\inst|index\(3) & ((\inst|bottom_line\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|bottom_line\(60),
	datac => \inst|bottom_line\(33),
	datad => \inst|index\(1),
	combout => \inst|Mux7~4_combout\);

-- Location: LCCOMB_X45_Y20_N28
\inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (!\inst|index\(1) & ((\inst|index\(3) & (\inst|top_line\(18))) # (!\inst|index\(3) & ((\inst|bottom_line\(60))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|top_line\(18),
	datab => \inst|bottom_line\(60),
	datac => \inst|index\(1),
	datad => \inst|index\(3),
	combout => \inst|Mux7~2_combout\);

-- Location: LCCOMB_X46_Y20_N6
\inst|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = (!\inst|index\(4) & ((\inst|Mux7~2_combout\) # ((\inst|index\(1) & \inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(4),
	datac => \inst|Mux7~0_combout\,
	datad => \inst|Mux7~2_combout\,
	combout => \inst|Mux7~3_combout\);

-- Location: LCCOMB_X46_Y20_N28
\inst|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~5_combout\ = (\inst|Mux7~1_combout\ & ((\inst|Mux7~3_combout\) # ((\inst|index\(4) & \inst|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|Mux7~1_combout\,
	datac => \inst|Mux7~4_combout\,
	datad => \inst|Mux7~3_combout\,
	combout => \inst|Mux7~5_combout\);

-- Location: LCCOMB_X46_Y20_N0
\inst|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~8_combout\ = (\inst|Mux7~5_combout\) # ((!\inst|index\(0) & (!\inst|index\(5) & \inst|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(0),
	datab => \inst|index\(5),
	datac => \inst|Mux7~7_combout\,
	datad => \inst|Mux7~5_combout\,
	combout => \inst|Mux7~8_combout\);

-- Location: FF_X46_Y20_N1
\inst|txd_rs_and_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(1));

-- Location: LCCOMB_X7_Y45_N20
\inst|DISPLAY|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Selector26~0_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_4~q\) # ((\inst|DISPLAY|state.POWER_ON_PHASE_8~q\) # ((\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & \inst|txd_rs_and_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datab => \inst|DISPLAY|state.POWER_ON_PHASE_4~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_8~q\,
	datad => \inst|txd_rs_and_data\(1),
	combout => \inst|DISPLAY|Selector26~0_combout\);

-- Location: FF_X7_Y45_N21
\inst|DISPLAY|lcd_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Selector26~0_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[1]~reg0_q\);

-- Location: LCCOMB_X7_Y45_N18
\inst|DISPLAY|lcd_data[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[1]~17_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[1]~17_combout\);

-- Location: FF_X7_Y45_N19
\inst|DISPLAY|lcd_data[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[1]~17_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[1]~en_q\);

-- Location: LCCOMB_X45_Y20_N8
\inst|Mux2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~44_combout\ = (!\inst|index\(4) & ((\inst|index\(3) & (\inst|bottom_line\(60))) # (!\inst|index\(3) & ((\inst|top_line\(104))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|bottom_line\(60),
	datad => \inst|top_line\(104),
	combout => \inst|Mux2~44_combout\);

-- Location: LCCOMB_X48_Y20_N26
\inst|bottom_line~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bottom_line~4_combout\ = (\SW[7]~input_o\ & ((\SW[8]~input_o\) # ((!\SW[5]~input_o\ & !\SW[6]~input_o\)))) # (!\SW[7]~input_o\ & (((\SW[6]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|bottom_line~4_combout\);

-- Location: FF_X48_Y20_N13
\inst|bottom_line[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|bottom_line~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bottom_line\(56));

-- Location: LCCOMB_X48_Y20_N12
\inst|Mux2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~41_combout\ = (\inst|index\(3) & ((\inst|index\(4) & (\inst|bottom_line\(56))) # (!\inst|index\(4) & ((\inst|top_line\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|bottom_line\(56),
	datad => \inst|top_line\(28),
	combout => \inst|Mux2~41_combout\);

-- Location: LCCOMB_X45_Y19_N4
\inst|top_line~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~48_combout\ = (\SW[0]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|top_line~48_combout\);

-- Location: FF_X45_Y20_N21
\inst|top_line[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~48_combout\,
	sclr => \ALT_INV_SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(64));

-- Location: LCCOMB_X47_Y19_N10
\inst|top_line~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~47_combout\ = (\inst|top_line~39_combout\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|top_line~39_combout\,
	datac => \SW[0]~input_o\,
	combout => \inst|top_line~47_combout\);

-- Location: FF_X46_Y19_N3
\inst|top_line[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~47_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(0));

-- Location: LCCOMB_X46_Y19_N2
\inst|Mux2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~42_combout\ = (\inst|index\(4) & ((\inst|index\(3) & (\inst|bottom_line\(60))) # (!\inst|index\(3) & ((\inst|top_line\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|bottom_line\(60),
	datac => \inst|top_line\(0),
	datad => \inst|index\(3),
	combout => \inst|Mux2~42_combout\);

-- Location: LCCOMB_X45_Y20_N20
\inst|Mux2~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~43_combout\ = (\inst|Mux2~42_combout\) # ((!\inst|index\(4) & (\inst|index\(3) & \inst|top_line\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|index\(3),
	datac => \inst|top_line\(64),
	datad => \inst|Mux2~42_combout\,
	combout => \inst|Mux2~43_combout\);

-- Location: LCCOMB_X45_Y20_N18
\inst|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~2_combout\ = (\inst|index\(0) & (((\inst|index\(1))))) # (!\inst|index\(0) & ((\inst|index\(1) & (\inst|Mux2~41_combout\)) # (!\inst|index\(1) & ((\inst|Mux2~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~41_combout\,
	datab => \inst|index\(0),
	datac => \inst|index\(1),
	datad => \inst|Mux2~43_combout\,
	combout => \inst|Mux8~2_combout\);

-- Location: LCCOMB_X45_Y20_N30
\inst|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_combout\ = (\inst|index\(0) & ((\inst|Mux8~2_combout\ & ((\inst|Mux2~44_combout\))) # (!\inst|Mux8~2_combout\ & (\inst|Mux2~14_combout\)))) # (!\inst|index\(0) & (((\inst|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~14_combout\,
	datab => \inst|index\(0),
	datac => \inst|Mux2~44_combout\,
	datad => \inst|Mux8~2_combout\,
	combout => \inst|Mux8~3_combout\);

-- Location: LCCOMB_X45_Y19_N26
\inst|top_line~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|top_line~46_combout\ = (\SW[3]~input_o\ & (!\SW[4]~input_o\ & ((\SW[2]~input_o\) # (\SW[1]~input_o\)))) # (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & ((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|top_line~46_combout\);

-- Location: FF_X46_Y19_N5
\inst|top_line[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|top_line~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|top_line\(16));

-- Location: LCCOMB_X46_Y19_N4
\inst|Mux2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~38_combout\ = (\inst|index\(4) & (\inst|bottom_line\(60) & ((!\inst|index\(3))))) # (!\inst|index\(4) & (((\inst|top_line\(16) & \inst|index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(4),
	datab => \inst|bottom_line\(60),
	datac => \inst|top_line\(16),
	datad => \inst|index\(3),
	combout => \inst|Mux2~38_combout\);

-- Location: LCCOMB_X48_Y20_N8
\inst|bottom_line~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bottom_line~3_combout\ = (\SW[5]~input_o\ & (\SW[7]~input_o\ $ (((!\SW[6]~input_o\ & \SW[8]~input_o\))))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((\SW[8]~input_o\) # (!\SW[7]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[7]~input_o\) # 
-- (!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|bottom_line~3_combout\);

-- Location: FF_X47_Y20_N31
\inst|bottom_line[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|bottom_line~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bottom_line\(32));

-- Location: LCCOMB_X47_Y20_N30
\inst|Mux2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~39_combout\ = (\inst|index\(3) & (\inst|index\(4) & (\inst|bottom_line\(32)))) # (!\inst|index\(3) & (!\inst|index\(4) & ((\inst|bottom_line\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|index\(4),
	datac => \inst|bottom_line\(32),
	datad => \inst|bottom_line\(60),
	combout => \inst|Mux2~39_combout\);

-- Location: LCCOMB_X47_Y20_N28
\inst|Mux2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~40_combout\ = (\inst|Mux2~16_combout\) # ((!\inst|index\(3) & (\inst|bottom_line\(60) & \inst|index\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(3),
	datab => \inst|bottom_line\(60),
	datac => \inst|index\(4),
	datad => \inst|Mux2~16_combout\,
	combout => \inst|Mux2~40_combout\);

-- Location: LCCOMB_X47_Y20_N22
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst|index\(1) & (\inst|index\(0))) # (!\inst|index\(1) & ((\inst|index\(0) & (\inst|Mux2~39_combout\)) # (!\inst|index\(0) & ((\inst|Mux2~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(1),
	datab => \inst|index\(0),
	datac => \inst|Mux2~39_combout\,
	datad => \inst|Mux2~40_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X46_Y20_N26
\inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = (\inst|index\(1) & ((\inst|Mux8~0_combout\ & ((\inst|Mux2~23_combout\))) # (!\inst|Mux8~0_combout\ & (\inst|Mux2~38_combout\)))) # (!\inst|index\(1) & (((\inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~38_combout\,
	datab => \inst|index\(1),
	datac => \inst|Mux2~23_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst|Mux8~1_combout\);

-- Location: LCCOMB_X45_Y20_N4
\inst|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~4_combout\ = (!\inst|index\(5) & ((\inst|index\(2) & ((\inst|Mux8~1_combout\))) # (!\inst|index\(2) & (\inst|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|index\(5),
	datab => \inst|index\(2),
	datac => \inst|Mux8~3_combout\,
	datad => \inst|Mux8~1_combout\,
	combout => \inst|Mux8~4_combout\);

-- Location: FF_X45_Y20_N5
\inst|txd_rs_and_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|txd_rs_and_data\(0));

-- Location: LCCOMB_X6_Y45_N0
\inst|DISPLAY|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|Selector27~0_combout\ = (\inst|DISPLAY|state.POWER_ON_PHASE_7~q\) # ((\inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\ & \inst|txd_rs_and_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DISPLAY|state.PROCESS_TXD_REQUESTS~q\,
	datac => \inst|DISPLAY|state.POWER_ON_PHASE_7~q\,
	datad => \inst|txd_rs_and_data\(0),
	combout => \inst|DISPLAY|Selector27~0_combout\);

-- Location: FF_X6_Y45_N1
\inst|DISPLAY|lcd_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Selector27~0_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[0]~reg0_q\);

-- Location: LCCOMB_X7_Y45_N12
\inst|DISPLAY|lcd_data[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_data[0]~18_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_data[0]~18_combout\);

-- Location: FF_X7_Y45_N13
\inst|DISPLAY|lcd_data[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_data[0]~18_combout\,
	ena => \inst|DISPLAY|lcd_rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_data[0]~en_q\);

-- Location: LCCOMB_X4_Y45_N0
\inst|DISPLAY|lcd_on~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_on~0_combout\ = !\inst|DISPLAY|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|DISPLAY|Equal0~6_combout\,
	combout => \inst|DISPLAY|lcd_on~0_combout\);

-- Location: FF_X4_Y45_N1
\inst|DISPLAY|lcd_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_on~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_on~q\);

-- Location: FF_X5_Y45_N29
\inst|DISPLAY|lcd_rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_rw~q\);

-- Location: FF_X4_Y45_N31
\inst|DISPLAY|lcd_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_en~q\);

-- Location: LCCOMB_X5_Y44_N24
\inst|DISPLAY|lcd_rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DISPLAY|lcd_rs~1_combout\ = (\inst|txd_rs_and_data\(8) & ((\inst|DISPLAY|txd_accepted~0_combout\) # ((\inst|DISPLAY|lcd_rs~q\ & !\inst|DISPLAY|lcd_rs~0_combout\)))) # (!\inst|txd_rs_and_data\(8) & (((\inst|DISPLAY|lcd_rs~q\ & 
-- !\inst|DISPLAY|lcd_rs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|txd_rs_and_data\(8),
	datab => \inst|DISPLAY|txd_accepted~0_combout\,
	datac => \inst|DISPLAY|lcd_rs~q\,
	datad => \inst|DISPLAY|lcd_rs~0_combout\,
	combout => \inst|DISPLAY|lcd_rs~1_combout\);

-- Location: FF_X5_Y44_N25
\inst|DISPLAY|lcd_rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|DISPLAY|lcd_rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DISPLAY|lcd_rs~q\);

ww_lcd_on <= \lcd_on~output_o\;

ww_lcd_blon <= \lcd_blon~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;
END structure;


