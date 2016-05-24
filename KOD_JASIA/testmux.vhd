--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:26:11 04/05/2016
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/MB_JM/LCD/testmux.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MuXXX4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testmux IS
END testmux;
 
ARCHITECTURE behavior OF testmux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MuXXX4
    PORT(
         D0 : IN  std_logic_vector(3 downto 0);
         D1 : IN  std_logic_vector(3 downto 0);
         S : IN  std_logic;
         O : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(3 downto 0) := (others => '1');
   signal D1 : std_logic_vector(3 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(3 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MuXXX4 PORT MAP (
          D0 => D0,
          D1 => D1,
          S => S,
          O => O
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		S <= '1';

      wait;
   end process;

END;
