library IEEE;
use     IEEE.STD_LOGIC_1164.ALL;
use     IEEE.NUMERIC_STD.ALL;

entity LCDModule is
  generic
  (
    CLOCK_50_FREQUENCY : real := 50.0e6 -- frequency of the clock_50 input signal (must be 50MHz)
  );
  
  port(clk : in std_logic;

    top_message : in std_logic_vector(4 downto 0) := "00000";
	 bot_message : in std_logic_vector(3 downto 0) := "0000";
	 
    lcd_on   : out   std_logic;
    lcd_blon : out   std_logic;
    lcd_rw   : out   std_logic;
    lcd_en   : out   std_logic;
    lcd_rs   : out   std_logic;
    lcd_data : inout std_logic_vector(7 downto 0));
end LCDModule;

architecture Behavioral of LCDModule is
  --
  -- The master clock (in this case, this is just clock_50)
  --
  constant CLOCK_FREQUENCY : real := CLOCK_50_FREQUENCY;
  signal clock : std_logic;
  --
  -- Events related to key presses
  --
  signal key_pressed_pulse : std_logic_vector(3 downto 0);
  --
  -- LCD interface
  --
  signal txd_rs_and_data : std_logic_vector(8 downto 0);
  signal txd_request     : std_logic;
  signal txd_accepted    : std_logic := '0';
  --
  -- LCD initialization/refresh stage
  --
  signal index : integer range 0 to 33 := 0;
  --
  -- Contents of the two lines of the LCD display (the display is initially almost all blank; for example, the ASCII code of a space is X"20")
  --
  signal top_line    : std_logic_vector(127 downto 0) := X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20"; -- 16 ASCII codes for the top line
  signal bottom_line : std_logic_vector(127 downto 0) := X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20"; -- 16 ASCII codes for the bottom line
begin
  --
  -- The master clock (in this case there is no need to change the clock frequency, so our master clock is just clock_50)
  --
  clock <= clk;
 
  --
  -- The LCD controller
  --
  DISPLAY : entity work.lcd_controller(conservative)
              generic map
              (
                CLOCK_FREQUENCY => CLOCK_FREQUENCY
              )
              port map
              (
                clock => clock,
                reset => '0',  -- no reset
                lcd_on   => lcd_on,
                lcd_blon => lcd_blon,
                lcd_rw   => lcd_rw,
                lcd_en   => lcd_en,
                lcd_rs   => lcd_rs,
                lcd_data => lcd_data,
                txd_rs_and_data => txd_rs_and_data,
                txd_request     => txd_request,
                txd_accepted    => txd_accepted
              );
  --
  -- Deal with key press events
  --
  process(clock) is
  begin
    if rising_edge(clock) then
      if (top_message = "00001") then
        top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_31"; --INTRODUZIDO: 0,1
		elsif(top_message = "00010") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_32"; --INTRODUZIDO: 0,2
		elsif(top_message = "00011") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_33"; --INTRODUZIDO: 0,3
		elsif(top_message = "00100") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_34"; --INTRODUZIDO: 0,4
		elsif(top_message = "00101") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_35"; --INTRODUZIDO: 0,5
		elsif(top_message = "00110") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_36"; --INTRODUZIDO: 0,6
		elsif(top_message = "00111") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_37"; --INTRODUZIDO: 0,7
		elsif(top_message = "01000") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_38"; --INTRODUZIDO: 0,8
		elsif(top_message = "01001") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_2C_39"; --INTRODUZIDO: 0,9
	   elsif(top_message = "01010") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_20_20"; --INTRODUZIDO: 1
		elsif(top_message = "01011") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_31"; --INTRODUZIDO: 1,1
		elsif(top_message = "01100") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_32"; --INTRODUZIDO: 1,2
		elsif(top_message = "01101") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_33"; --INTRODUZIDO: 1,3
		elsif(top_message = "01110") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_34"; --INTRODUZIDO: 1,4
	   elsif(top_message = "01111") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_35"; --INTRODUZIDO: 1,5
		elsif(top_message = "10000") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_36"; --INTRODUZIDO: 1,6
      elsif(top_message = "10001") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_37"; --INTRODUZIDO: 1,7
		elsif(top_message = "10010") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_38"; --INTRODUZIDO: 1,8
		elsif(top_message = "10011") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_31_2C_39"; --INTRODUZIDO: 1,9
		elsif(top_message = "10100") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_32_20_20"; --INTRODUZIDO: 2
		elsif(top_message = "10101") then
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_32_2C_31"; --INTRODUZIDO: 2,1
		elsif(top_message = "10110") then
		  top_line <= x"54_52_4F_43_4F_3A_20_30_20_63_65_6E_74_20_20_20"; --TROCO: 0 cent
		elsif(top_message = "10111") then
		  top_line <= x"54_52_4F_43_4F_3A_20_31_30_20_63_65_6E_74_20_20"; --TROCO: 10 cent
		elsif(top_message = "11000") then
		  top_line <= x"54_52_4F_43_4F_3A_20_32_30_20_63_65_6E_74_20_20"; --TROCO: 20 cent
		elsif(top_message = "11001") then
		  top_line <= x"54_52_4F_43_4F_3A_20_33_30_20_63_65_6E_74_20_20"; --TROCO: 30 cent
		elsif(top_message = "11010") then
		  top_line <= x"54_52_4F_43_4F_3A_20_34_30_20_63_65_6E_74_20_20"; --TROCO: 40 cent
		elsif(top_message = "11011") then
		  top_line <= x"54_52_4F_43_4F_3A_20_35_30_20_63_65_6E_74_20_20"; --TROCO: 50 cent
		elsif(top_message = "11100") then
		  top_line <= x"54_52_4F_43_4F_3A_20_36_30_20_63_65_6E_74_20_20"; --TROCO: 60 cent
		elsif(top_message = "11101") then
		  top_line <= x"54_52_4F_43_4F_3A_20_37_30_20_63_65_6E_74_20_20"; --TROCO: 70 cent
		elsif(top_message = "11110") then
		  top_line <= x"54_52_4F_43_4F_3A_20_38_30_20_63_65_6E_74_20_20"; --TROCO: 80 cent
		elsif(top_message = "11111") then
		  top_line <= x"54_52_4F_43_4F_3A_20_39_30_20_63_65_6E_74_20_20"; --TROCO: 90 cen
		else  
		  top_line <= x"49_4E_54_52_4F_44_55_5A_49_44_4F_3A_20_30_20_20"; --INTRODUZIDO: 0
      end if;
		if(bot_message = "0000") then
			bottom_line <= X"50_52_4F_44_55_54_4F_20_31_3A_20_35_20_20_20_20"; --PRODRODUTO 1: 5	
		elsif(bot_message = "0001") then
		  bottom_line <= X"50_52_4F_44_55_54_4F_20_31_3A_20_34_20_20_20_20"; --PRODUTO 1: 4
		elsif(bot_message = "0010") then
		  bottom_line <= X"50_52_4F_44_55_54_4F_20_31_3A_20_33_20_20_20_20"; --PRODUTO 1: 3
		elsif(bot_message = "0011") then
		  bottom_line <= X"50_52_4F_44_55_54_4F_20_31_3A_20_32_20_20_20_20"; --PRODUTO 1: 2
		elsif(bot_message = "0100") then
		  bottom_line <= X"50_52_4F_44_55_54_4F_20_31_3A_20_31_20_20_20_20"; --PRODUTO 1: 1
		elsif(bot_message = "0101") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_32_3A_20_35_20_20_20_20"; --PRODUTO 2: 5
		elsif(bot_message = "0110") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_32_3A_20_34_20_20_20_20"; --PRODUTO 2: 4
		elsif(bot_message = "0111") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_32_3A_20_33_20_20_20_20"; --PRODUTO 2: 3
		elsif(bot_message = "1000") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_32_3A_20_32_20_20_20_20"; --PRODUTO 2: 2
		elsif(bot_message = "1001") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_32_3A_20_31_20_20_20_20"; --PRODUTO 2: 1
		elsif(bot_message = "1010") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_33_3A_20_35_20_20_20_20"; --PRODUTO 3: 5
		elsif(bot_message = "1011") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_33_3A_20_34_20_20_20_20"; --PRODUTO 3: 4
		elsif(bot_message = "1100") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_33_3A_20_33_20_20_20_20"; --PRODUTO 3: 3
		elsif(bot_message = "1101") then
		 bottom_line <= X"50_52_4F_44_55_54_4F_20_33_3A_20_32_20_20_20_20"; --PRODUTO 3: 2
		elsif(bot_message = "1111") then
		 bottom_line <= X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20"; --PRODUTO 3: 2
		 
		 
		else
		  bottom_line <= X"50_52_4F_44_55_54_4F_20_33_3A_20_31_20_20_20_20"; --PRODUTO 3: 1
		end if;
	 end if;
  end process;
  --
  -- LCD initialization (done once) and refresh (done all the time)
  --
  process(clock) is
  begin
    if rising_edge(clock) then
      txd_request <= '1'; -- we are always attempting to write
      case index is
        when 0 => txd_rs_and_data <= b"0_1_000_0000"; -- set write address command
        when 1 => txd_rs_and_data <= '1' & top_line(127 downto 120);
        when 2 => txd_rs_and_data <= '1' & top_line(119 downto 112);
        when 3 => txd_rs_and_data <= '1' & top_line(111 downto 104);
        when 4 => txd_rs_and_data <= '1' & top_line(103 downto  96);
        when 5 => txd_rs_and_data <= '1' & top_line( 95 downto  88);
        when 6 => txd_rs_and_data <= '1' & top_line( 87 downto  80);
        when 7 => txd_rs_and_data <= '1' & top_line( 79 downto  72);
        when 8 => txd_rs_and_data <= '1' & top_line( 71 downto  64);
        when 9 => txd_rs_and_data <= '1' & top_line( 63 downto  56);
        when 10 => txd_rs_and_data <= '1' & top_line( 55 downto  48);
        when 11 => txd_rs_and_data <= '1' & top_line( 47 downto  40);
        when 12 => txd_rs_and_data <= '1' & top_line( 39 downto  32);
        when 13 => txd_rs_and_data <= '1' & top_line( 31 downto  24);
        when 14 => txd_rs_and_data <= '1' & top_line( 23 downto  16);
        when 15 => txd_rs_and_data <= '1' & top_line( 15 downto   8);
        when 16 => txd_rs_and_data <= '1' & top_line(  7 downto   0);
        -- refresh the bottom line
        when 17 => txd_rs_and_data <= b"0_1_100_0000"; -- set write address command
        when 18 => txd_rs_and_data <= '1' & bottom_line(127 downto 120);
        when 19 => txd_rs_and_data <= '1' & bottom_line(119 downto 112);
        when 20 => txd_rs_and_data <= '1' & bottom_line(111 downto 104);
        when 21 => txd_rs_and_data <= '1' & bottom_line(103 downto  96);
        when 22 => txd_rs_and_data <= '1' & bottom_line( 95 downto  88);
        when 23 => txd_rs_and_data <= '1' & bottom_line( 87 downto  80);
        when 24 => txd_rs_and_data <= '1' & bottom_line( 79 downto  72);
        when 25 => txd_rs_and_data <= '1' & bottom_line( 71 downto  64);
        when 26 => txd_rs_and_data <= '1' & bottom_line( 63 downto  56);
        when 27 => txd_rs_and_data <= '1' & bottom_line( 55 downto  48);
        when 28 => txd_rs_and_data <= '1' & bottom_line( 47 downto  40);
        when 29 => txd_rs_and_data <= '1' & bottom_line( 39 downto  32);
        when 30 => txd_rs_and_data <= '1' & bottom_line( 31 downto  24);
        when 31 => txd_rs_and_data <= '1' & bottom_line( 23 downto  16);
        when 32 => txd_rs_and_data <= '1' & bottom_line( 15 downto   8);
        when 33 => txd_rs_and_data <= '1' & bottom_line(  7 downto   0);
      end case;
      if txd_accepted = '1' then
        if index < 33 then
          index <= index+1; -- advance to the next initialization/refresh stage
        else
          index <= 0; -- restart at the first refresh stage
        end if;
      end if;
    end if;
  end process;
end Behavioral;
