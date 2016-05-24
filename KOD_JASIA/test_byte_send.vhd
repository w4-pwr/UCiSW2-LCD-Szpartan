--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:40 04/19/2016
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/MB_JM/LCD/test_byte_send.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Byte_Send
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
 
ENTITY test_byte_send IS
END test_byte_send;
 
ARCHITECTURE behavior OF test_byte_send IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Byte_Send
    PORT(
         Clk_50MHz : IN  std_logic;
         Byte : IN  std_logic_vector(7 downto 0);
         Send_In : IN  std_logic;
         Send_Nibble_Ready : IN  std_logic;
         Send_Out : OUT  std_logic;
         Nibble : OUT  std_logic_vector(3 downto 0);
         Ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';
   signal Byte : std_logic_vector(7 downto 0) := X"42";
   signal Send_In : std_logic := '1';
   signal Send_Nibble_Ready : std_logic := '0';

 	--Outputs
   signal Send_Out : std_logic;
   signal Nibble : std_logic_vector(3 downto 0);
   signal Ready : std_logic;

   -- Clock period definitions
   constant Clk_50MHz_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Byte_Send PORT MAP (
          Clk_50MHz => Clk_50MHz,
          Byte => Byte,
          Send_In => Send_In,
          Send_Nibble_Ready => Send_Nibble_Ready,
          Send_Out => Send_Out,
          Nibble => Nibble,
          Ready => Ready
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
	wait for 100 ns;
     Send_Nibble_Ready <= '1';

      wait;
   end process;

END;
