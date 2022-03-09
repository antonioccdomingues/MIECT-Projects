LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY controlPath;
USE controlPath.all;

LIBRARY dataPath;
USE dataPath.all;

ENTITY encoder IS
	PORT (clk, nRst: IN STD_LOGIC;
               dIn: IN STD_LOGIC;
				  dOut: OUT STD_LOGIC);
END encoder;

ARCHITECTURE structure OF encoder IS
	-- CONTROL PATH OUTPUTS
	SIGNAL nR_s, sel2_s, sel4_s, selPar4_s, a_s, b_s, c_s, d_s: STD_LOGIC;
	
	
	-- COMPONENTS
	COMPONENT controlPath IS
		PORT (clk, nRst: IN STD_LOGIC;
             nR, sel2: OUT STD_LOGIC;
        sel4, selPar4: OUT STD_LOGIC;
	        a, b, c, d: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT dataPath IS
		PORT (a, b, c, d: IN STD_LOGIC;
	      clk, nR, sel2: IN STD_LOGIC;
         sel4, selPar4: IN STD_LOGIC;
					    dIn: IN STD_LOGIC;
                  dOut: OUT STD_LOGIC);
	END COMPONENT;
	
	
	BEGIN
	-- CONTROL PATH
	control: controlPath PORT MAP(clk, nRst, nR_s, sel2_s, sel4_s, selPar4_s, a_s, b_s, c_s, d_s);
	
	-- DATA PATH
	data: dataPath PORT MAP(a_s, b_s, c_s, d_s, clk, nR_s, sel2_s, sel4_s, selPar4_s, dIN, dOut);
	
END structure;