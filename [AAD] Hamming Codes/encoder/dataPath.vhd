LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

LIBRARY storeDev;
USE storeDev.all;

LIBRARY multDev;
USE multDev.all;

ENTITY dataPath IS
	PORT (a, b, c, d: IN STD_LOGIC;
	   clk, nR, sel2: IN STD_LOGIC;
      sel4, selPar4: IN STD_LOGIC;
					 dIn: IN STD_LOGIC;
               dOut: OUT STD_LOGIC);
END dataPath;

ARCHITECTURE structure OF dataPath IS
	-- AND PORTS OUTPUTS
	SIGNAL and1_s, and2_s, and3_s, and4_s: STD_LOGIC;
	
	-- XOR PORTS OUTPUTS
	SIGNAL xor1_s, xor2_s, xor3_s, xor4_s: STD_LOGIC;
	
	-- FLIP FLOPS OUTPUTS (x12, x13, x14, x15)
	SIGNAL x12_s, x13_s, x14_s, x15_s: STD_LOGIC;
	
	-- MULTIPLEXER 4 TO 1 OUTPUT
	SIGNAL mul4To1_s: STD_LOGIC;
	
	-- MULTIPLEXER 2 TO 1 OUTPUT
	SIGNAL mul2To1_s: STD_LOGIC;

	-- COMPONENTS
	COMPONENT gateAnd2
		PORT (x0, x1: IN STD_LOGIC;
                 y: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT gateXOR2
		PORT (x0, x1: IN STD_LOGIC;
                 y: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT flipFlopDPET
		PORT (clk, D: IN STD_LOGIC;
		  nSet, nRst: IN STD_LOGIC;
             Q, nQ: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT mult4to1
		PORT (x0, x1, x2, x3: IN STD_LOGIC;
						  s0, s1: IN STD_LOGIC;
							    y: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT mult2to1
		PORT (x0, x1: IN STD_LOGIC;
		           s: IN STD_LOGIC;
                 y: OUT STD_LOGIC);
	END COMPONENT;

	BEGIN
		-- AND PORTS
		and1: gateAnd2 PORT MAP(dIn, a, and1_s);
		and2: gateAnd2 PORT MAP(dIn, b, and2_s);
		and3: gateAnd2 PORT MAP(dIn, c, and3_s);
		and4: gateAnd2 PORT MAP(dIn, d, and4_s);
		
		-- XOR PORTS
		xor1: gateXOR2 PORT MAP(x12_s, and1_s, xor1_s);
		xor2: gateXOR2 PORT MAP(x13_s, and2_s, xor2_s);
		xor3: gateXOR2 PORT MAP(x14_s, and3_s, xor3_s);
		xor4: gateXOR2 PORT MAP(x15_s, and4_s, xor4_s);
		
		-- FLIP FLOPS
		x12: flipFlopDPET PORT MAP(clk, xor1_s, '1', nR, x12_s);
		x13: flipFlopDPET PORT MAP(clk, xor2_s, '1', nR, x13_s);
		x14: flipFlopDPET PORT MAP(clk, xor3_s, '1', nR, x14_s);
		x15: flipFlopDPET PORT MAP(clk, xor4_s, '1', nR, x15_s);
		
		-- MUX 4 TO 1
		mult4: mult4to1 PORT MAP(x12_s, x13_s, x14_s, x15_s, selPar4, sel4, mul4To1_s);
		
		-- MUX 2 TO 1
		mult2: mult2to1 PORT MAP(dIn, mul4To1_s, sel2, mul2To1_s); 
		
		-- DATA OUT FLIP FLOP
		dataOut: flipFlopDPET PORT MAP(clk, mul2To1_s, '1', '1', dOut);
		
END structure;