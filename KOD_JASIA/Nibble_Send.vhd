----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:57 03/08/2016 
-- Design Name: 
-- Module Name:    Nibble_Send - Behavioral 
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

entity Nibble_Send is
    Port ( Nibble : in  STD_LOGIC_VECTOR (3 downto 0);
           Send : in  STD_LOGIC;
			  Clk_50MHz: in STD_LOGIC;
           SF_D : out  STD_LOGIC_VECTOR (3 downto 0);
           LCD_E : out  STD_LOGIC;
			  Ready : out  STD_LOGIC);
end Nibble_Send;

architecture Behavioral of Nibble_Send is
	type states_of_nibble_transmission is ( idle, wait40, enable, finish);
	signal state_of_transmission : states_of_nibble_transmission := idle;
	
	signal i : integer range 0 to 11 :=0;
	signal data : STD_LOGIC_VECTOR (3 downto 0);
begin
	transmit_nibble: process (Clk_50MHz, Nibble, Send)
	begin
		if(rising_edge(Clk_50MHz)) then
			case state_of_transmission is
				
				when idle =>
					SF_D <= "0000";
					LCD_E <= '0';
					Ready <= '1';
					
					if(Send = '1') then
						data <= Nibble;
						Ready <= '0';
						state_of_transmission <= wait40;
					else 
						state_of_transmission <= idle;
					end if;
				
				when wait40 =>
					LCD_E <= '0';
					SF_D <= data;
					if(i = 1) then
						state_of_transmission <= enable;
						i <= 0;
					else 
						state_of_transmission <= wait40;
						i <= i+1;
					end if;
				
				when enable =>
					SF_D <= data;
					LCD_E <= '1';
									
					if(i = 11) then
						state_of_transmission <= finish;
						i <= 0;
					else 
						state_of_transmission <= enable;
						i <= i+1;
					end if;
				
				when finish =>
					LCD_E <= '0';
					
					state_of_transmission <= idle;
				end case;				
		end if;
end process transmit_nibble;

end Behavioral;

