----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:02:36 03/07/2016 
-- Design Name: 
-- Module Name:    lcd_init - Behavioral 
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

entity lcd_init is
    Port ( GO 			: in 	STD_LOGIC;
			  SENT		: in 	STD_LOGIC;
			  BUSY 		: out	STD_LOGIC;
			  SENDING   : out	STD_LOGIC;
           Clk 		: in 	STD_LOGIC;
           LCD_D 		: out STD_LOGIC_VECTOR (3 downto 0)
			 );

end lcd_init;

architecture Behavioral of lcd_init is
	type seq_of_init is ( idle, q1, q2, q3, q4, q5, q6, q7, q8, q9, finish);
	signal state_of_init : seq_of_init := idle;
	
	signal count : integer range 0 to 750000 := 0; --15 tck *50 MHZ

begin


init_process : process( Clk, GO, SENT )
begin
		
		if(rising_edge(Clk)) then 
			case state_of_init is
						
						when idle =>
							SENDING <='0';
							BUSY <= '1';
							if ( GO = '1' ) then
								state_of_init <= q1;
								
							else
								state_of_init <= idle;
							end if;			
							
						when q1 =>
							SENDING <= '0';
							if(count = 750000) then
								state_of_init <= q2;
								count <= 0;
							else 
								count <= count + 1;
								state_of_init <= q1;
							end if;
						
						when q2 =>
								LCD_D <= "0011";
								SENDING <='1';
								
								if(SENT = '1') then
									state_of_init <= q3;
									count <= 0;
								else
									state_of_init <= q2;
								end if;
						
						when q3 =>
								SENDING <= '0';
								if(count = 205000) then
									state_of_init <= q4;
									count <= 0;
								else 
									state_of_init <= q3;
									count <= count+1;
								end if;							
						
						when q4 =>
								
								LCD_D  <= "0011";
								SENDING <='1';
								if(SENT = '1') then
									state_of_init <= q5;
									count <= 0;
								else
									state_of_init <= q4;								
								end if;
									
							
							
						when q5 =>
								SENDING <= '0';
								if(count = 5000) then
									state_of_init <= q6;
									count <= 0;
								else 
									state_of_init <= q5;
									count <= count+1;
								end if;
								
						when q6 =>
								
								LCD_D <= "0011";
								SENDING <='1';
								if(SENT = '1') then
									state_of_init <= q6;
									count <= 0;
								else
									state_of_init <= q7;
								end if;					
							
						when q7 =>
							SENDING <= '0';
							if(count = 2000) then
								state_of_init <= q8;
								count <= 0;
							else 
								state_of_init <= q7;
								count <= count+1;
							end if;
								
						when q8 =>
							
								LCD_D <= "0010";
								SENDING <='1';
								if(SENT = '1') then
									state_of_init <= q8;
									count <= 0;
								else
									state_of_init <= q9;
								end if;	
								
						when q9 =>
							SENDING <= '0';
							if(count = 2000) then
								state_of_init <= finish;
								count <= 0;
							else 
								state_of_init <= q9;
								count <= count+1;
							end if;
								
						when finish =>
							state_of_init <= finish;
							BUSY <= '0';
					end case;				
		end if;
end process init_process;
end Behavioral;

