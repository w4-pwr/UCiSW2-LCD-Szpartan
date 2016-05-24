----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:59:03 04/18/2016 
-- Design Name: 
-- Module Name:    mul_4b_2_1 - Behavioral 
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

entity mul_4b_2_1 is
    Port ( line_0 : in  STD_LOGIC_VECTOR (3 downto 0);
           line_1 : in  STD_LOGIC_VECTOR (3 downto 0);
           set : in  STD_LOGIC;
           line_out : out  STD_LOGIC_VECTOR (3 downto 0));
end mul_4b_2_1;

architecture Behavioral of mul_4b_2_1 is

begin
process(line_0, line_1, set)
begin
if(set = '0') then
	line_out <= line_0;
	else
	line_out <= line_1;
	end if;
	
end process;

end Behavioral;

