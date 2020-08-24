library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Main is
	port( reset    : in std_logic;
       	clk      : in std_logic;
			enable	: in std_logic;
			stop     : out std_logic;
			luz      : out std_logic;
			cont     : out std_logic_vector(11 downto 0);
			
			min_dec	:	out std_logic_vector(11 downto 0);
			min_uni	:	out std_logic_vector(11 downto 0);
			seg_dec	:	out std_logic_vector(11 downto 0);
			seg_uni	:	out std_logic_vector(11 downto 0);
			
			switches : in std_logic_vector(11 downto 0));
			
end Main;

architecture Behavioral of Main is
--111000010000
signal s_cont : unsigned(11 downto 0) := "111000001111";
--signal s_stop_reset : std_logic;
signal s_stop : std_logic;
signal s_luz : std_logic;

signal s_min_dec  : unsigned(11 downto 0) := "000000000101";
signal s_min_uni  : unsigned(11 downto 0) := "000000001001";
signal s_seg_dec  : unsigned(11 downto 0) := "000000000101";
signal s_seg_uni  : unsigned(11 downto 0) := "000000001001";

signal s_switches : unsigned(11 downto 0);

begin

min_dec <= std_logic_vector(s_min_dec);
min_uni <= std_logic_vector(s_min_uni);
seg_dec <= std_logic_vector(s_seg_dec);
seg_uni <= std_logic_vector(s_seg_uni);

cont <= std_logic_vector(s_cont);
--stop_reset <= s_stop_reset;
luz <= s_luz;
stop <= s_stop;

s_switches <= unsigned(switches);

	process(clk, reset, s_switches)
	begin
	
		if (rising_edge(clk)) then
			
			--s_cont <= s_cont - 1;
			if (reset = '1') then
				--s_stop <= '1';
				--s_stop_reset <= '1';
				if (s_switches = "000000000000") then
					s_cont <= "111000001111";
				else
				s_cont <= (s_switches);
				end if;
				s_luz <= '0';
			elsif (s_cont = "000000000000") then
				s_luz <= '1';
				----s_stop <= '1';
			elsif (enable = '1') then 
				s_stop <= '0';
				--s_stop_reset <= '0';
				s_luz <= '0';
			   s_cont <= s_cont - 1;	
			end if;
		
		end if;
	end process;
	
				s_min_dec <= ((s_cont / 60) / 10);
				s_min_uni <= ((s_cont - (s_cont rem "000000111100")) / "000000111100") rem "000000001010";
				s_seg_dec <= (((s_cont rem "000000111100")) - ((s_cont rem "000000111100") rem "000000001010")) / "000000001010";
				s_seg_uni <= ((s_cont rem "000000111100") rem "000000001010");
			--else
	
	

end Behavioral;