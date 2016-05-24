----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:22:04 04/17/2016 
-- Design Name: 
-- Module Name:    send_byte - Behavioral 
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

entity send_byte is
    Port ( Clk_50MHz : in  STD_LOGIC;
           Byte_in : in  STD_LOGIC_VECTOR (7 downto 0);
           ready_to_send_half_byte : in  STD_LOGIC;
           send_in : in  STD_LOGIC;
           send_out : out  STD_LOGIC;
           busy : out  STD_LOGIC;
           half_byte : out  STD_LOGIC_VECTOR (3 downto 0));
end send_byte;

architecture Behavioral of send_byte is
	type states_of_byte_transmission is ( idle, send_high_half_byte, wait_1, send_low_half_byte, wait_40);
	signal state_of_transmission : states_of_byte_transmission := idle;
	
	signal i : integer range 0 to 2000 :=0;
	signal data : STD_LOGIC_VECTOR (7 downto 0);
begin
	
	transmit_byte: process (Clk_50MHz, Byte_in, send_in)
	begin
		if(rising_edge(Clk_50MHz)) then
			case state_of_transmission is
				
				when idle =>
					busy <= '0';
					
					if(send_in = '1') then
						busy <= '1';
						data <= Byte_in;
						state_of_transmission <= send_high_half_byte;
					else 
						state_of_transmission <= idle;
					end if;
				
				when send_high_half_byte =>
					if(ready_to_send_half_byte = '1') then
						half_byte <= data(7 downto 4);
						send_out <= '1';
						state_of_transmission <= wait_1;
					else
						state_of_transmission <= send_high_half_byte;
					end if;
					
				when wait_1 =>
					send_out <= '0';
						if(i = 50) then
							state_of_transmission <= send_low_half_byte;
							i <= 0;
						else 
							state_of_transmission <= wait_1;
							i <= i+1;
						end if;
					
				when send_low_half_byte =>
					if(ready_to_send_half_byte = '1') then
						half_byte <= data(3 downto 0);
						send_out <= '1';
						state_of_transmission <= wait_40;
					else
						state_of_transmission <= send_low_half_byte;
					end if;
					
				when wait_40 =>
					send_out <= '0';
						if(i = 2000) then
							state_of_transmission <= idle;
							i <= 0;
						else 
							state_of_transmission <= wait_40;
							i <= i+1;
						end if;
				end case;				
		end if;
end process transmit_byte;
	

end Behavioral;

