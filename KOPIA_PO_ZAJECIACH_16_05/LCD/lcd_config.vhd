----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:47:37 04/17/2016 
-- Design Name: 
-- Module Name:    lcd_config - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lcd_config is
    Port ( start : in  STD_LOGIC;
           byte_sent : in  STD_LOGIC;
           Clk_50MHz : in  STD_LOGIC;
           busy : out  STD_LOGIC;
           send : out  STD_LOGIC;
           byte_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  LCD_RW : out STD_LOGIC;
			  LCD_RS : out STD_LOGIC;
			  SF_CE : out STD_LOGIC);
end lcd_config;

architecture Behavioral of lcd_config is
	type states is ( idle, func_set, waitingAfterSet, waiting, entry_mode, waitingAfterEntryMode, disp_onoff, waitingAfterDispOnOff, clear_disp,blink, waitingAfterBlink, finish);
	signal state : states := idle;
	signal count : integer range 0 to 82000 := 0;
begin

configure: process (Clk_50MHz, byte_sent)
begin
	LCD_RW <= '0';
	LCD_RS <= '0';
	SF_CE <= '1';
	if(rising_edge(Clk_50MHz)) then
		case state is
				
			when idle =>
				busy <= '1';
				if ( start = '1' ) then
					state <= func_set;
				else
					state <= idle;
				end if;
			
			when func_set =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"28";
					send <= '1';
					state <= waitingAfterSet;
				else 
					state <= func_set;
				end if;
			
			when waitingAfterSet =>
				send <= '0';
				state <= entry_mode;
				
			when entry_mode =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"06";
					send <= '1';
					state <= waitingAfterEntryMode;
				else 
					state <= entry_mode;
				end if;
			
			when waitingAfterEntryMode =>
				send <= '0';
				state <= disp_onoff;
				
			when disp_onoff =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"0F";
					send <= '1';
					state <= waitingAfterDispOnOff;
				else 
					state <= disp_onoff;
				end if;
				
			when waitingAfterDispOnOff	=>
				send <= '0';
				state <= clear_disp;
			 	
			when clear_disp =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"01";
					send <= '1';
					state <= waiting;
				else 
					state <= clear_disp;
				end if;
			
		   when waiting =>
				send <= '0';
				if(count = 82000) then 
					state <= blink;
					count <= 0;
				else 
					state <= waiting;
					count <= count + 1;
				end if;
				
			when blink =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"0E";
					send <= '1';
					state <= waitingAfterBlink;
				else 
					state <= blink;
				end if;
				
			when waitingAfterBlink =>
				if (byte_sent = '1') then
					state <= finish;
				else
					state <= waitingAfterBlink;
				end if;
				
			when finish =>
				send <= '0';
				busy <= '0';
			end case;				
		end if;
end process configure;

end Behavioral;





