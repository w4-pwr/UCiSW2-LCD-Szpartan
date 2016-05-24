----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:22:10 04/17/2016 
-- Design Name: 
-- Module Name:    config - Behavioral 
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

entity config is
    Port ( start : in  STD_LOGIC;
           busy : out  STD_LOGIC;
           send : out  STD_LOGIC;
           byte_out : out  STD_LOGIC_VECTOR (7 downto 0);
           byte_sent : in  STD_LOGIC;
           Clk_50MHz : in  STD_LOGIC);
end config;

architecture Behavioral of config is
	type states_of_configuration is ( idle, func_set, entry_mode, disp_onoff, clear_disp, finish);
	signal state_of_configuration : states_of_configuration := idle;
begin

configure: process (Clk_50MHz, byte_sent)
begin
	if(rising_edge(Clk_50MHz)) then
		case state_of_configuration is		
				
			when idle =>
				Done <= '0';
				if ( Start = '1' ) then
					state_of_configuration <= func_set;
				else
					state_of_configuration <= idle;
				end if;
			
			when func_set =>
				Send <= '0';
				if (Byte_send_ready = '1') then
					Byte <= X"28";
					Send <= '1';
					state_of_configuration <= entry_mode;
				else 
					state_of_configuration <= func_set;
				end if;
				
			when entry_mode =>
				Send <= '0';
				if (Byte_send_ready = '1') then
					Byte <= X"06";
					Send <= '1';
					state_of_configuration <= disp_onoff;
				else 
					state_of_configuration <= entry_mode;
				end if;
				
			when disp_onoff =>
				Send <= '0';
				if (Byte_send_ready = '1') then
					Byte <= X"0C";
					Send <= '1';
					state_of_configuration <= clear_disp;
				else 
					state_of_configuration <= disp_onoff;
				end if;
				
			when clear_disp =>
				Send <= '0';
				if (Byte_send_ready = '1') then
					Byte <= X"01";
					Send <= '1';
					state_of_configuration <= finish;
				else 
					state_of_configuration <= clear_disp;
				end if;
				
			when finish =>
				Send <= '0';
				Byte <= X"00";
				
				Done <= '1';
					
			end case;				
		end if;
end process configure;

end Behavioral;

