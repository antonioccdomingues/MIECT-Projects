LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- CONTROL UNIT

ENTITY controlUnit IS
	PORT (x: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			a, b, c, d: OUT STD_LOGIC;
         nR, sel4, selPar4, sel2: OUT STD_LOGIC);
END controlUnit;

ARCHITECTURE behavior OF controlUnit IS
BEGIN
	PROCESS (x)
	BEGIN
		-- RESET
		IF (x = "0000") THEN
			nR <= '0';
			
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			
			sel4 <= '0';
			selPar4 <= '0';
			sel2 <= '0';
			
		-- m1
		ELSIF (x = "0001") THEN
			nR <= '1';
		
			a <= '1';
			b <= '1';
			c <= '0';
			d <= '0';
			
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
			
		-- m2
		ELSIF (x = "0010") THEN
			nR <= '1';
			
			a <= '1';
			b <= '0';
			c <= '1';
			d <= '0';
			
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
		
		-- m3
		ELSIF (x = "0011") THEN
			nR <= '1';
			
			a <= '1';
			b <= '0';
			c <= '0';
			d <= '1';
			
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
			
		-- m4
		ELSIF (x = "0100") THEN
			nR <= '1';
			
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
		
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
			
		-- m5
		ELSIF (x = "0101") THEN
			nR <= '1';
		
			a <= '0';
			b <= '1';
			c <= '0';
			d <= '1';
			
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
			
		-- m6
		ELSIF (x = "0110") THEN
			nR <= '1';
			
			a <= '0';
			b <= '0';
			c <= '1';
			d <= '1';
		
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
			
		-- m7
		ELSIF (x = "0111") THEN
			nR <= '1';
			
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '0';
		
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
		
		-- m8
		ELSIF (x = "1000") THEN
			nR <= '1';
			
			a <= '1';
			b <= '1';
			c <= '0';
			d <= '1';
		
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
		
		-- m9
		ELSIF (x = "1001") THEN
			nR <= '1';	
			
			a <= '1';
			b <= '0';
			c <= '1';
			d <= '1';
			
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
			
		-- m10
		ELSIF (x = "1010") THEN
			nR <= '1';
		
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '1';
		
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
		
		-- m11
		ELSIF (x = "1011") THEN
			nR <= '1';
			
			a <= '1';
			b <= '1';
			c <= '1';
			d <= '1';
		
			sel2 <= '0';
			sel4 <= '0';
			selPar4 <= '0';
		
		-- GET X12
		ELSIF (x = "1100") THEN
			nR <= '1';
			
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			
			sel2 <= '1';
			sel4 <= '0';
			selPar4 <= '0';
			
		-- GET X13
		ELSIF (x = "1101") THEN
			nR <= '1';
			
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			
			sel2 <= '1';
			sel4 <= '0';
			selPar4 <= '1';
			
		-- GET X14
		ELSIF (x = "1110") THEN
			nR <= '1';
			
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			
			sel2 <= '1';
			sel4 <= '1';
			selPar4 <= '0';
			
		-- GET X15
		ELSIF (x = "1111") THEN
			nR <= '1';
			
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			
			sel2 <= '1';
			sel4 <= '1';
			selPar4 <= '1';
		END IF;
	END PROCESS;
END behavior;