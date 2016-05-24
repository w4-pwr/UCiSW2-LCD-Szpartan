----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:54 03/22/2016 
-- Design Name: 
-- Module Name:    Byte_Send - Behavioral 
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

entity Byte_Send is

    Port ( 
			  Clk_50MHz: in STD_LOGIC;
			  Byte : in  STD_LOGIC_VECTOR (7 downto 0);
           Send_In : in  STD_LOGIC;
			  Send_Nibble_Ready : in  STD_LOGIC;
			  Send_Out : out STD_LOGIC;
           Nibble : out  STD_LOGIC_VECTOR (3 downto 0);
           Ready : out  STD_LOGIC
           );
end Byte_Send;

architecture Behavioral of Byte_Send is
	type states_of_byte_transmission is ( idle, send_high_nibble, wait_1, send_low_nibble, wait_40, finish);
	signal state_of_transmission : states_of_byte_transmission := idle;
	
	signal i : integer range 0 to 2000 :=0;
	signal data : STD_LOGIC_VECTOR (7 downto 0);
begin
	transmit_byte: process (Clk_50MHz, Byte, Send_In)
	begin
		if(rising_edge(Clk_50MHz)) then
			case state_of_transmission is
				
				when idle =>
					Ready <= '1';
					
					if(Send_In = '1') then
						Ready <= '0';
						data <= Byte;
						state_of_transmission <= send_high_nibble;
					else 
						state_of_transmission <= idle;
					end if;
				
				when send_high_nibble =>
					if(Send_Nibble_Ready = '1') then
						Nibble <= data(7 downto 4);
						Send_Out <= '1';
						state_of_transmission <= wait_1;
						i <= 0;
					else
						state_of_transmission <= send_high_nibble;
					end if;
					
				when wait_1 =>
					Send_Out <= '0';
						if(i = 50) then
							state_of_transmission <= send_low_nibble;
							i <= 0;
						else 
							state_of_transmission <= wait_1;
							i <= i+1;
						end if;
					
				when send_low_nibble =>
					if(Send_Nibble_Ready = '1') then
						Nibble <= data(3 downto 0);
						Send_Out <= '1';
						state_of_transmission <= wait_40;
					else
						state_of_transmission <= send_low_nibble;
					end if;
					
				when wait_40 =>
					Send_Out <= '0';
						if(i = 2000) then
							state_of_transmission <= finish;
							i <= 0;
						else 
							state_of_transmission <= wait_40;
							i <= i+1;
						end if;
						
				when finish =>
					Ready <= '1';
				state_of_transmission <= idle;
				
				end case;				
		end if;
end process transmit_byte;
end Behavioral;

