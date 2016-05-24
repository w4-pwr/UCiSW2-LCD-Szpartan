--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:28:48 04/04/2016
-- Design Name:   
-- Module Name:   C:/XilinxPrj/4042016/LCD/send_4bits_tb.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: send_4bits
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
 
ENTITY send_4bits_tb IS
END send_4bits_tb;
 
ARCHITECTURE behavior OF send_4bits_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT send_4bits
    PORT(
         half_byte : IN  std_logic_vector(3 downto 0);
         GO : IN  std_logic;
         Clk : IN  std_logic;
         SF_D : OUT  std_logic_vector(3 downto 0);
         LCD_E : OUT  std_logic;
         BUSY : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal half_byte : std_logic_vector(3 downto 0) := (others => '0');
   signal GO : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal SF_D : std_logic_vector(3 downto 0);
   signal LCD_E : std_logic;
   signal BUSY : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: send_4bits PORT MAP (
          half_byte => half_byte,
          GO => GO,
          Clk => Clk,
          SF_D => SF_D,
          LCD_E => LCD_E,
          BUSY => BUSY
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 10 ns.
      wait for 10 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 
		GO <= '1';

      wait;
   end process;

END;
