----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:27 03/22/2016 
-- Design Name: 
-- Module Name:    Display_Configuration - Behavioral 
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

entity Display_Configuration is
    Port ( Start : in  STD_LOGIC;
           Clk_50Mhz : in  STD_LOGIC;
           Byte_send_ready : in  STD_LOGIC;
           Byte : out  STD_LOGIC_VECTOR (7 downto 0);
           Send : out  STD_LOGIC;
           Done : out  STD_LOGIC);
end Display_Configuration;

architecture Behavioral of Display_Configuration is
	type states_of_configuration is ( idle, func_set, entry_mode, disp_onoff, clear_disp, finish, wait82, set_blink, func_set1, entry_mode1, disp_onoff1, set_blink1);
	signal state_of_configuration : states_of_configuration := idle;
	signal i : integer range 0 to 82000 :=0;
	
	
begin
configure_display: process (Clk_50MHz, Byte_send_ready)
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
					state_of_configuration <= func_set1;
				else 
					state_of_configuration <= func_set;
				end if;
			
			when func_set1 =>
			Send <= '0';
			state_of_configuration <= entry_mode;
			
			when entry_mode =>
				
				if (Byte_send_ready = '1') then
					Byte <= X"06";
					Send <= '1';
					state_of_configuration <= entry_mode1;
				else 
					state_of_configuration <= entry_mode;
				end if;

			when entry_mode1 =>
			Send <= '0';
			state_of_configuration <= disp_onoff;
			
			
			when disp_onoff =>
			
				if (Byte_send_ready = '1') then
					Byte <= X"0C";
					Send <= '1';
					state_of_configuration <= disp_onoff1;
				else 
					state_of_configuration <= disp_onoff;
				end if;
				
			when disp_onoff1 =>
			Send <= '0';
			state_of_configuration <= clear_disp;
					
			when clear_disp =>
				
				if (Byte_send_ready = '1') then
					Byte <= X"01";
					Send <= '1';
					state_of_configuration <= wait82;
				else 
					state_of_configuration <= clear_disp;
				end if;
				
			when wait82 =>
				Send <= '0';
				if(i = 82000) then
						state_of_configuration <= set_blink;
						i <= 0;
				else 
						state_of_configuration <= wait82;
						i <= i+1;
					end if;
					
			when set_blink =>
				Send <= '0';
				
				if (Byte_send_ready = '1') then
					Byte <= X"0F";
					Send <= '1';
					state_of_configuration <= set_blink1;
				else 
					state_of_configuration <= set_blink;
				end if;
			
			when set_blink1 =>
			
			if (Byte_send_ready = '1') then
				state_of_configuration <= finish;	
			else
				state_of_configuration <= set_blink1;
			end if;
			
			when finish =>
				Send <= '0';
				Done <= '1';
			end case;				
		end if;
end process configure_display;

end Behavioral;

