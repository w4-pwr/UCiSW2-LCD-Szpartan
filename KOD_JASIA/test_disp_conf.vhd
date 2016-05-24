--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:34:21 04/05/2016
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/MB_JM/LCD/test_disp_conf.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Display_Configuration
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
 
ENTITY test_disp_conf IS
END test_disp_conf;
 
ARCHITECTURE behavior OF test_disp_conf IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Display_Configuration
    PORT(
         Start : IN  std_logic;
         Clk_50Mhz : IN  std_logic;
         Byte_send_ready : IN  std_logic;
         Byte : OUT  std_logic_vector(7 downto 0);
         Send : OUT  std_logic;
         Done : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Start : std_logic := '0';
   signal Clk_50Mhz : std_logic := '0';
   signal Byte_send_ready : std_logic := '0';

 	--Outputs
   signal Byte : std_logic_vector(7 downto 0);
   signal Send : std_logic;
   signal Done : std_logic;

   -- Clock period definitions
   constant Clk_50Mhz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Display_Configuration PORT MAP (
          Start => Start,
          Clk_50Mhz => Clk_50Mhz,
          Byte_send_ready => Byte_send_ready,
          Byte => Byte,
          Send => Send,
          Done => Done
        );

   -- Clock process definitions
   Clk_50Mhz_process :process
   begin
		Clk_50Mhz <= '0';
		wait for Clk_50Mhz_period/2;
		Clk_50Mhz <= '1';
		wait for Clk_50Mhz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_50Mhz_period*10;

		 wait for 100 ns;
      
		Start <= '1';
		
		wait for 100 ns;
		
		Byte_send_ready <= '1';
		
      wait;
   end process;

END;
