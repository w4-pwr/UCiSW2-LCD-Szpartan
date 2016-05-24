----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:25:33 04/17/2016 
-- Design Name: 
-- Module Name:    configuration - Behavioral 
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

entity configuration is
    Port ( start : in  STD_LOGIC;
           byte_sent : in  STD_LOGIC;
           Clk_50MHz : in  STD_LOGIC;
           busy : out  STD_LOGIC;
           send : out  STD_LOGIC;
           byte_out : out  STD_LOGIC_VECTOR (7 downto 0));
end configuration;

architecture Behavioral of configuration is
	type states is ( idle, func_set, entry_mode, disp_onoff, clear_disp, finish);
	signal state : states := idle;
begin

configure: process (Clk_50MHz, byte_sent)
begin
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
					state <= entry_mode;
				else 
					state <= func_set;
				end if;
				
			when entry_mode =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"06";
					send <= '1';
					state <= disp_onoff;
				else 
					state <= entry_mode;
				end if;
				
			when disp_onoff =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"0C";
					send <= '1';
					state <= clear_disp;
				else 
					state <= disp_onoff;
				end if;
				
			when clear_disp =>
				send <= '0';
				if (byte_sent = '1') then
					byte_out <= X"01";
					send <= '1';
					state <= finish;
				else 
					state <= clear_disp;
				end if;
				
			when finish =>
				send <= '0';
				byte_out <= X"00";
				
				busy <= '0';
					
			end case;				
		end if;
end process configure;

end Behavioral;



end Behavioral;

