LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY storeDev;
USE storeDev.all;

LIBRARY control;
USE control.all;

ENTITY controlPath IS
	PORT (clk, nRst: IN STD_LOGIC;
          nR, sel2: OUT STD_LOGIC;
     sel4, selPar4: OUT STD_LOGIC;
	     a, b, c, d: OUT STD_LOGIC);
END controlPath;

ARCHITECTURE structure OF controlPath IS
	-- STATES COUNTER OUTPUT
	SIGNAL c_s: STD_LOGIC_VECTOR (3 DOWNTO 0);
	
	-- COMPONENTS
	COMPONENT binCounter_4bit
		PORT (nRst: IN STD_LOGIC;
             clk: IN STD_LOGIC;
               c: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT controlUnit
		PORT (x: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			a, b, c, d: OUT STD_LOGIC;
         nR, sel4, selPar4, sel2: OUT STD_LOGIC);
	END COMPONENT;
	
	BEGIN
		-- STATES COUNTER
		statesCounter: binCounter_4bit PORT MAP(nRst, clk, c_s);
		
		-- CONTROL UNITY
		controlUnity: controlUnit PORT MAP(c_s, a, b, c, d, nR, sel4, selPar4, sel2);
		
END structure;