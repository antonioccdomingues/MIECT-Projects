LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY decoder;
USE decoder.all;

LIBRARY decoderFinalComXors;
USE decoderFinalComXors.all;

ENTITY parallel_Decoder IS
  PORT (	y: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
			Enb: IN STD_LOGIC;
			ml: OUT STD_LOGIC_VECTOR (10 DOWNTO 0));
END parallel_Decoder;

ARCHITECTURE structure OF parallel_Decoder IS
  SIGNAL psig: STD_LOGIC_VECTOR (3 DOWNTO 0);

  
  COMPONENT decoderFinalComXors
    PORT (p_entrada: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		  y: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        m: OUT STD_LOGIC_VECTOR (10 DOWNTO 0);
		  enable: IN STD_LOGIC);
  END COMPONENT;
  
  COMPONENT decoder
   PORT (y_entrada: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        p: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
  END COMPONENT;
  
  BEGIN
-- 15 entradas para 4 saidas (p)
descodificador: 		decoder PORT MAP (y(14 DOWNTO 0),	psig(3 DOWNTO 0));

--ligação das saidas p's do descodificador com entradas do descodificador
descodificador4To16:	decoderFinalComXors PORT MAP(psig(3 DOWNTO 0), y(14 DOWNTO 0), ml(10 DOWNTO 0), Enb);

END structure;