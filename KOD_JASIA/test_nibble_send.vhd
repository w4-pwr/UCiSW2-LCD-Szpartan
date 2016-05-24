--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:55:06 03/08/2016
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/MB_JM/LCD/test_nibble_send.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Nibble_Send
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
 
ENTITY test_nibble_send IS
END test_nibble_send;
 
ARCHITECTURE behavior OF test_nibble_send IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Nibble_Send
    PORT(
         Nibble : IN  std_logic_vector(3 downto 0);
         Send : IN  std_logic;
         Clk_50MHz : IN  std_logic;
         SF_D : OUT  std_logic_vector(3 downto 0);
         LCD_E : OUT  std_logic;
			Ready : OUT STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal Nibble : std_logic_vector(3 downto 0) := (others => '0');
   signal Send : std_logic := '0';
   signal Clk_50MHz : std_logic := '0';

 	--Outputs
   signal SF_D : std_logic_vector(3 downto 0);
   signal LCD_E : std_logic;
	signal Ready : STD_LOGIC;

   -- Clock period definitions
   constant Clk_50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Nibble_Send PORT MAP (
          Nibble => Nibble,
          Send => Send,
          Clk_50MHz => Clk_50MHz,
          SF_D => SF_D,
          LCD_E => LCD_E
        );

   -- Clock process definitions
   Clk_50MHz_process :process
   begin
		Clk_50MHz <= '0';
		wait for Clk_50MHz_period/2;
		Clk_50MHz <= '1';
		wait for Clk_50MHz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_50MHz_period*10;
		
		Nibble <= "0011";
		Send <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
