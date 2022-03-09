LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

LIBRARY d4_16e;
USE d4_16e.all;

ENTITY decoderFinalComXors IS
  PORT (p_entrada: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		  y: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        m: OUT STD_LOGIC_VECTOR (10 DOWNTO 0);
		  enable: IN STD_LOGIC);
END decoderFinalComXors;

ARCHITECTURE structure OF decoderFinalComXors IS
  SIGNAL iSg0: STD_LOGIC_VECTOR (21 DOWNTO 0);
  SIGNAL saidasDes: STD_LOGIC_VECTOR(15 DOWNTO 0);
  
  
  COMPONENT gateXOr2
    PORT (x0, x1: IN STD_LOGIC;
          y: OUT STD_LOGIC);
  END COMPONENT;
  
  COMPONENT d4_16e
    PORT(A : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			E : IN STD_LOGIC;
			D : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
  END COMPONENT;
  
BEGIN
-- descodificador 4 to 16
des4To16: d4_16e PORT MAP (p_entrada(3 DOWNTO 0),	enable,	saidasDes(15 DOWNTO 0));

--ligação das saidas do descodificador necessárias com xors
xOR01: gateXOr2 PORT MAP (saidasDes(3),	y(0), 	m(0));
xOR02: gateXOr2 PORT MAP (saidasDes(5),	y(1), 	m(1));
xOR05: gateXOr2 PORT MAP (saidasDes(9),	y(2), 	m(2));
xOR03: gateXOr2 PORT MAP (saidasDes(6),	y(3), 	m(3));

xOR06: gateXOr2 PORT MAP (saidasDes(10),	y(4), 	m(4));
xOR08: gateXOr2 PORT MAP (saidasDes(12),	y(5), 	m(5));
xOR04: gateXOr2 PORT MAP (saidasDes(7),	y(6), 	m(6));

xOR07: gateXOr2 PORT MAP (saidasDes(11),	y(7), 	m(7));
xOR09: gateXOr2 PORT MAP (saidasDes(13),	y(8), 	m(8));
xOR10: gateXOr2 PORT MAP (saidasDes(14),	y(9), 	m(9));
xOR11: gateXOr2 PORT MAP (saidasDes(15),	y(10), 	m(10));

END structure;
