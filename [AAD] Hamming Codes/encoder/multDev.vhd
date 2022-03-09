LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

-- MULTIPLEXER 2 TO 1:

ENTITY mult2to1 IS
	PORT (x0, x1: IN STD_LOGIC;
		        s: IN STD_LOGIC;
              y: OUT STD_LOGIC);
END mult2to1;

ARCHITECTURE structure OF mult2to1 IS
	SIGNAL iselx0, iselx1: STD_LOGIC;
	SIGNAL ins: STD_LOGIC;
  
	COMPONENT gateInv
		PORT (x: IN STD_LOGIC;
            y: OUT STD_LOGIC);
	END COMPONENT;
  
	COMPONENT gateAnd2
		PORT (x0, x1: IN STD_LOGIC;
					  y: OUT STD_LOGIC);
	END COMPONENT;
  
	COMPONENT gateOr2
		PORT (x0, x1: IN STD_LOGIC;
					  y: OUT STD_LOGIC);
	END COMPONENT;

	BEGIN
		inv0: gateInv  PORT MAP (s, ins);
		and0: gateAnd2 PORT MAP (x0, ins, iselx0);
		and1: gateAnd2 PORT MAP (x1, s,   iselx1);
		or0:  gateOr2  PORT MAP (iselx0, iselx1, y);
END structure;
 
 -- MULTIPLEXER 4 TO 1:
 
LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY mult4to1 IS
  PORT (x0, x1, x2, x3: IN STD_LOGIC;
                s0, s1: IN STD_LOGIC;
                     y: OUT STD_LOGIC);
END mult4to1;

ARCHITECTURE structure OF mult4to1 IS
	SIGNAL iselx0, iselx1, iselx2, iselx3: STD_LOGIC;
	SIGNAL ins0, ins1: STD_LOGIC;
	
	COMPONENT gateInv
		PORT (x: IN STD_LOGIC;
				y: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT gateAnd3
		PORT (x0, x1, x2: IN STD_LOGIC;
					      y: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT gateOr4
		PORT (x0, x1, x2, x3: IN STD_LOGIC;
								 y: OUT STD_LOGIC);
	END COMPONENT;
	
	BEGIN
		inv0: gateInv  PORT MAP(s0, ins0);
		inv1: gateInv  PORT MAP(s1, ins1);
		and0: gateAnd3 PORT MAP(x0, ins0, ins1, iselx0);
		and1: gateAnd3 PORT MAP(x1, ins1, s0, iselx1);
		and2: gateAnd3 PORT MAP(x2, s1, ins0, iselx2);
		and3: gateAnd3 PORT MAP(x3, s0, s1, iselx3);
		or0: gateOr4  PORT MAP(iselx0, iselx1, iselx2, iselx3, y);
END structure;