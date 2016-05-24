--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:05:07 04/18/2016
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/17042016PRZED/LCD/lcd_init_tb.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lcd_init
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
 
ENTITY lcd_init_tb IS
END lcd_init_tb;
 
ARCHITECTURE behavior OF lcd_init_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lcd_init
    PORT(
         GO : IN  std_logic;
         SENT : IN  std_logic;
         BUSY : OUT  std_logic;
         SENDING : OUT  std_logic;
         Clk : IN  std_logic;
         LCD_D : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal GO : std_logic := '0';
   signal SENT : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal BUSY : std_logic;
   signal SENDING : std_logic;
   signal LCD_D : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lcd_init PORT MAP (
          GO => GO,
          SENT => SENT,
          BUSY => BUSY,
          SENDING => SENDING,
          Clk => Clk,
          LCD_D => LCD_D
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for Clk_period*10;

		SENT <= '1';
		GO <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
