----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:27:30 03/22/2016 
-- Design Name: 
-- Module Name:    Poweron_init - Behavioral 
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

entity Poweron_init is

			port(
					Clk_50Mhz : in STD_LOGIC;
					Start : in STD_LOGIC;
					Send_Ready : in STD_LOGIC;
					Nibble : out STD_LOGIC_VECTOR(3 downto 0);
					Send, Done : out STD_LOGIC
					);
end Poweron_init;



architecture Behavioral of Poweron_init is
	type seq_of_init is ( idle, q1, q2, q3, q4, q5, q6, q7, q8, q9, finish);
	signal state_of_init : seq_of_init := idle;

	signal i : integer range 0 to 750000 := 0;

begin

	power_on_init: process (Clk_50Mhz, Send_Ready, Start)
	begin
		
		if(rising_edge(Clk_50Mhz)) then 
			case state_of_init is
						
						when idle =>
							Done <= '0';
							Send <= '0';
							if ( Start = '1' ) then
								state_of_init <= q1;
							else
								state_of_init <= idle;
							end if;			
							
						when q1 =>
							Send <= '0';						
							if(i = 750000) then
								state_of_init <= q2;
								i <= 0;
							else 
								state_of_init <= q1;
								i <= i+1;
							end if;
						
						when q2 =>
							if( Send_Ready = '1') then
								Nibble <= "0011";
								Send <= '1';						
								state_of_init <= q3;
							else
								state_of_init <= q2;
							end if;
						
						when q3 =>
							Send <= '0';
								if(i = 205000) then
									state_of_init <= q4;
									i <= 0;
								else 
									state_of_init <= q3;
									i <= i+1;
								end if;							
						
						when q4 =>
							if( Send_Ready = '1' ) then
								Nibble <= "0011";
								Send <= '1';						
								state_of_init <= q5;
							else
								state_of_init <= q4;
							end if;
							
						when q5 =>
							Send <= '0';
								if(i = 5000) then
									state_of_init <= q6;
									i <= 0;
								else 
									state_of_init <= q5;
									i <= i+1;
								end if;
								
						when q6 =>
							if( Send_Ready = '1' ) then
								Nibble <= "0011";
								Send <= '1';						
								state_of_init <= q7;
							else
								state_of_init <= q6;
							end if;
							
						when q7 =>
							Send <= '0';
							if(i = 2000) then
								state_of_init <= q8;
								i <= 0;
							else 
								state_of_init <= q7;
								i <= i+1;
							end if;
								
						when q8 =>
							if( Send_Ready = '1' ) then
								Nibble <= "0010";
								Send <= '1';						
								state_of_init <= q9;
							else
								state_of_init <= q8;
							end if;
								
						when q9 =>
							Send <= '0';
							if(i = 2000) then
								state_of_init <= finish;
								i <= 0;
							else 
								state_of_init <= q9;
								i <= i+1;
							end if;
								
						when finish =>
							state_of_init <= finish;
							Done <= '1';
					end case;				
		end if;
end process power_on_init;

end Behavioral;