----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:40 04/04/2016 
-- Design Name: 
-- Module Name:    send_4bits - Behavioral 
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
entity send_4bits is
    Port ( half_byte : in  STD_LOGIC_VECTOR (3 downto 0);
           GO : in  STD_LOGIC;
			  Clk: in STD_LOGIC;
           SF_D : out  STD_LOGIC_VECTOR (3 downto 0);
           LCD_E : out  STD_LOGIC;
			  BUSY : out  STD_LOGIC);
end send_4bits;

architecture Behavioral of send_4bits is
	type states_of_4bits_transmission is ( idle, waitForTick, transmit, finish);
	signal transmision_state : states_of_4bits_transmission := idle;
	
	signal count : integer range 0 to 11 :=0;
	signal data : STD_LOGIC_VECTOR (3 downto 0);
begin
	transmit_4bits: process (Clk, half_byte, GO)
	begin
		if(rising_edge(Clk)) then
			case transmision_state is
			
				--czekanie na GO
				when idle =>
					SF_D <= "0000";
					LCD_E <= '0';
					BUSY <= '0';
					
					if(GO = '1') then
						data <= half_byte;
						BUSY <= '1';
						transmision_state <= waitForTick;
					else 
						transmision_state <= idle;
					end if;
				
				--ustawienie data na LCD - 2 tick
				when waitForTick =>
					LCD_E <= '0';
					SF_D <= data;
					if(count = 1) then
						transmision_state <= transmit;
						count <= 0;
					else 
						transmision_state <= waitForTick;
						count <= count+1;
					end if;
				
				--wyslanie polbajtu
				when transmit =>
					SF_D <= data;
					LCD_E <= '1';
									
					if(count = 11) then
						transmision_state <= finish;
						count <= 0;
					else 
						transmision_state <= transmit;
						count <= count+1;
					end if;
				
				-- zwolnienie BUSY - powrot do stanu poczatkowego
				when finish =>
					LCD_E <= '0';
					transmision_state <= idle;
				end case;				
		end if;
end process transmit_4bits;

end Behavioral;
