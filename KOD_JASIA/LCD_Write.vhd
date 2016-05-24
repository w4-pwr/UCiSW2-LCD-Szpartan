----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:28 03/01/2016 
-- Design Name: 
-- Module Name:    LCD_Write - Behavioral 
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

entity LCD_Write is

			port(
					Clk_50Mhz : in STD_LOGIC;
					Send_Ready, done_poweron, done_function, WE: in STD_LOGIC;
					Byte_In : in STD_LOGIC_VECTOR(7 downto 0);
					Byte_Out : out STD_LOGIC_VECTOR(7 downto 0);
					Send, LCD_RS, LCD_RW, SF_CE, init_poweron, init_function, Busy : out STD_LOGIC
					);
end LCD_Write;




architecture Behavioral of LCD_Write is
	type sequence_of_LCD is ( idle, power_on_init, function_set_init, finish_init, ready_for_data, transmit_data, finish_transmit);
	signal state_of_LCD : sequence_of_LCD := idle;

	signal data : STD_LOGIC_VECTOR (7 downto 0);
begin

	LCD: process (Clk_50Mhz, Send_Ready, WE, Byte_In)
	begin
		
		if(rising_edge(Clk_50Mhz)) then 
			case state_of_LCD is
			
					
						when idle =>
						
						LCD_RS <= '0';
						LCD_RW <='0';
						SF_CE <= '1';
						
							Busy <= '1';
							Send <= '0';
							state_of_LCD <= power_on_init;
																	
						when power_on_init =>
							init_poweron <= '1';						
							state_of_LCD <= function_set_init;
							
						when function_set_init =>
							init_poweron <= '0';
							if ( done_poweron = '1' ) then
								init_function <= '1';
								state_of_LCD <= finish_init;
							else
								state_of_LCD <= function_set_init;
							end if;
						
						when finish_init =>
							init_function <= '0';
							
							if( done_function = '1') then						
								state_of_LCD <= ready_for_data;
							else
								state_of_LCD <= finish_init;
							end if;
						
						when ready_for_data =>
							Busy <= '0';
							LCD_RS <= '1';
							if ( WE = '1' ) then
								data <= Byte_In;
								Busy <= '1';
								state_of_LCD <= transmit_data;
							else
								state_of_LCD <= ready_for_data;
							end if;
							
						when transmit_data =>
						
							if ( Send_Ready = '1' ) then
								Byte_Out <= data;
								Send <= '1';
								state_of_LCD <= finish_transmit;
							else 
								state_of_LCD <= transmit_data;
							end if;
						
						when finish_transmit =>
							Send <= '0';
							
							if ( Send_Ready = '1' ) then
								state_of_LCD <= ready_for_data;
							else
								state_of_LCD <= finish_transmit;
							end if;
					end case;				
		end if;
end process LCD;

end Behavioral;

