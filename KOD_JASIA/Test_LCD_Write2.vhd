--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:57:48 04/05/2016
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/MB_JM/LCD/Test_LCD_Write2.vhd
-- Project Name:  LCD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LCD_Write
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
 
ENTITY Test_LCD_Write2 IS
END Test_LCD_Write2;
 
ARCHITECTURE behavior OF Test_LCD_Write2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LCD_Write
    PORT(
         Clk_50Mhz : IN  std_logic;
         Send_Ready : IN  std_logic;
         done_poweron : IN  std_logic;
         done_function : IN  std_logic;
         Byte_Out : OUT  std_logic_vector(7 downto 0);
         Send : OUT  std_logic;
         LCD_RS : OUT  std_logic;
         LCD_RW : OUT  std_logic;
         SF_CE : OUT  std_logic;
         init_poweron : OUT  std_logic;
         init_function : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50Mhz : std_logic := '0';
   signal Send_Ready : std_logic := '0';
   signal done_poweron : std_logic := '0';
   signal done_function : std_logic := '0';

 	--Outputs
   signal Byte_Out : std_logic_vector(7 downto 0);
   signal Send : std_logic;
   signal LCD_RS : std_logic;
   signal LCD_RW : std_logic;
   signal SF_CE : std_logic;
   signal init_poweron : std_logic;
   signal init_function : std_logic;

   -- Clock period definitions
   constant Clk_50Mhz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LCD_Write PORT MAP (
          Clk_50Mhz => Clk_50Mhz,
          Send_Ready => Send_Ready,
          done_poweron => done_poweron,
          done_function => done_function,
          Byte_Out => Byte_Out,
          Send => Send,
          LCD_RS => LCD_RS,
          LCD_RW => LCD_RW,
          SF_CE => SF_CE,
          init_poweron => init_poweron,
          init_function => init_function
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
		
		done_poweron <= '1';
		
		wait for 100 ns;
		
		done_function <= '1';
		
		wait for 100 ns;
		
		Send_Ready <= '1';
		
		wait for Clk_50Mhz_period;
		
		Send_Ready <='0';
      -- insert stimulus here 

      wait;
   end process;

END;
