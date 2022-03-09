LIBRARY ieee;
USE ieee.std_logic_1164.all;


LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY decoder IS
  PORT (y_entrada: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        p: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END decoder;

ARCHITECTURE structure OF decoder IS
  SIGNAL iSg0: STD_LOGIC_VECTOR (21 DOWNTO 0);
  
  COMPONENT gateXOr2
    PORT (x0, x1: IN STD_LOGIC;
          y: OUT STD_LOGIC);
  END COMPONENT;
  
BEGIN
-- 1st expression
xOR00: gateXOr2 PORT MAP (y_entrada(6),  	y_entrada(0),	iSg0(0));
xOR01: gateXOr2 PORT MAP (y_entrada(10),	y_entrada(7), 	iSg0(1));
xOR02: gateXOr2 PORT MAP (y_entrada(1),	y_entrada(2),	iSg0(2));
xOR03: gateXOr2 PORT MAP (y_entrada(8),  	y_entrada(11), iSg0(3));
xOR04: gateXOr2 PORT MAP (iSg0(0),  		iSg0(1),  		iSg0(4));
xOR05: gateXOr2 PORT MAP (iSg0(2),			iSg0(3),  		iSg0(5));
xOR06: gateXOr2 PORT MAP (iSg0(5),			iSg0(4),  		p(0));
-- 2nd expression

xOR07: gateXOr2 PORT MAP (y_entrada(4),	y_entrada(3),	iSg0(6));
xOR08: gateXOr2 PORT MAP (y_entrada(9),	y_entrada(12), iSg0(7));
xOR09: gateXOr2 PORT MAP (iSg0(6),			iSg0(7),			iSg0(8));
xOR10: gateXOr2 PORT MAP (iSg0(8),			iSg0(4),			p(1));
-- 3rd expression

xOR11: gateXOr2 PORT MAP (y_entrada(8),  	y_entrada(5),	iSg0(9));
xOR12: gateXOr2 PORT MAP (y_entrada(10),	y_entrada(9), iSg0(10));
xOR13: gateXOr2 PORT MAP (y_entrada(3),	y_entrada(1),	iSg0(11));
xOR14: gateXOr2 PORT MAP (y_entrada(13),  y_entrada(6),  iSg0(12));
xOR15: gateXOr2 PORT MAP (iSg0(10), 		iSg0(9),  		iSg0(13));
xOR16: gateXOr2 PORT MAP (iSg0(12),			iSg0(11),  		iSg0(14));
xOR17: gateXOr2 PORT MAP (iSg0(14),			iSg0(13),  		p(2));
-- 4th expression

xOR18: gateXOr2 PORT MAP (y_entrada(4),	y_entrada(2),	iSg0(15));
xOR19: gateXOr2 PORT MAP (y_entrada(14),	y_entrada(7), 	iSg0(16));
xOR20: gateXOr2 PORT MAP (iSg0(16),			iSg0(15),		iSg0(17));
xOR21: gateXOr2 PORT MAP (iSg0(17),			iSg0(13),		p(3));
END structure;


