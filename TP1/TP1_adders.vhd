-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"
-- CREATED		"Thu Apr 20 08:29:32 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TP1_adders IS 
	PORT
	(
		Cin :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Cout :  OUT  STD_LOGIC;
		S :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END TP1_adders;

ARCHITECTURE bdf_type OF TP1_adders IS 

COMPONENT full_adder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



b2v_inst : full_adder
PORT MAP(A => A(0),
		 B => B(0),
		 Cin => Cin,
		 S => S_ALTERA_SYNTHESIZED(0),
		 Cout => SYNTHESIZED_WIRE_0);


b2v_inst1 : full_adder
PORT MAP(A => A(1),
		 B => B(1),
		 Cin => SYNTHESIZED_WIRE_0,
		 S => S_ALTERA_SYNTHESIZED(1),
		 Cout => SYNTHESIZED_WIRE_1);


b2v_inst2 : full_adder
PORT MAP(A => A(2),
		 B => B(2),
		 Cin => SYNTHESIZED_WIRE_1,
		 S => S_ALTERA_SYNTHESIZED(2),
		 Cout => SYNTHESIZED_WIRE_2);


b2v_inst3 : full_adder
PORT MAP(A => A(3),
		 B => B(3),
		 Cin => SYNTHESIZED_WIRE_2,
		 S => S_ALTERA_SYNTHESIZED(3),
		 Cout => SYNTHESIZED_WIRE_3);


b2v_inst4 : full_adder
PORT MAP(A => A(4),
		 B => B(4),
		 Cin => SYNTHESIZED_WIRE_3,
		 S => S_ALTERA_SYNTHESIZED(4),
		 Cout => SYNTHESIZED_WIRE_4);


b2v_inst5 : full_adder
PORT MAP(A => A(5),
		 B => B(5),
		 Cin => SYNTHESIZED_WIRE_4,
		 S => S_ALTERA_SYNTHESIZED(5),
		 Cout => SYNTHESIZED_WIRE_5);


b2v_inst6 : full_adder
PORT MAP(A => A(6),
		 B => B(6),
		 Cin => SYNTHESIZED_WIRE_5,
		 S => S_ALTERA_SYNTHESIZED(6),
		 Cout => SYNTHESIZED_WIRE_6);


b2v_inst7 : full_adder
PORT MAP(A => A(7),
		 B => B(7),
		 Cin => SYNTHESIZED_WIRE_6,
		 S => S_ALTERA_SYNTHESIZED(7),
		 Cout => Cout);

S <= S_ALTERA_SYNTHESIZED;

END bdf_type;