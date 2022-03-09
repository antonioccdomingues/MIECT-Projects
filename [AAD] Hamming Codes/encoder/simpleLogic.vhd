-- AND LOGIC PORT (2 INPUTS):
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd2 IS
	PORT (x0, x1: IN STD_LOGIC;
		        y: OUT STD_LOGIC);
END gateAnd2;

ARCHITECTURE logicFunction OF gateAnd2 IS
BEGIN
	y <= x0 AND x1;
END logicFunction;

-- AND LOGIC PORT (3 INPUTS):
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd3 IS
	PORT (x0, x1, x2: IN STD_LOGIC;
		            y: OUT STD_LOGIC);
END gateAnd3;

ARCHITECTURE logicFunction OF gateAnd3 IS
BEGIN
	y <= x0 AND x1 AND x2;
END logicFunction;

-- XOR LOGIC PORT (2 INPUTS):
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOR2 IS
	PORT (x0, x1: IN STD_LOGIC;
	           y: OUT STD_LOGIC);
END gateXOR2;

ARCHITECTURE logicFunction OF gateXOR2 IS
BEGIN
	y <= x0 XOR x1;
END logicFunction;

-- OR LOGIC PORT (2 INPUTS):
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr2 IS
	PORT (x0, x1: IN STD_LOGIC;
				  y: OUT STD_LOGIC);
END gateOr2;

ARCHITECTURE logicFunction OF gateOr2 IS
BEGIN
	y <= x0 OR x1;
END logicFunction;

-- NOT LOGIC PORT:
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateInv IS
	PORT (x: IN STD_LOGIC;
		   y: OUT STD_LOGIC);
END gateInv;

ARCHITECTURE logicFunction OF gateInv IS
BEGIN
	y <= NOT x;
END logicFunction;

-- OR LOGIC PORT (4 INPUTS):
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr4 IS
	PORT (x0, x1, x2, x3: IN STD_LOGIC;
				          y: OUT STD_LOGIC);
END gateOr4;

ARCHITECTURE logicFunction OF gateOr4 IS
BEGIN
	y <= x0 OR x1 OR x2 OR x3;
END logicFunction;