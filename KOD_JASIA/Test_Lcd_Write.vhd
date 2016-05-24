--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:01:44 03/08/2016
-- Design Name:   
-- Module Name:   C:/Users/lab/Documents/MB_JM/LCD/Test_Lcd_Write.vhd
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
 
ENTITY Test_Lcd_Write IS
END Test_Lcd_Write;
 
ARCHITECTURE behavior OF Test_Lcd_Write IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LCD_Write
    PORT(
         Clk_50Mhz : IN  std_logic;
			Send_Ready : in STD_LOGIC;
         LCD_D : OUT  std_logic_vector(3 downto 0);
         Send : OUT  std_logic;
         LCD_RS : OUT  std_logic;
         LCD_RW : OUT  std_logic;
         SF_CE : OUT  std_logic;
			Init_done : out STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50Mhz : std_logic := '0';
	signal Send_Ready : STD_LOGIC;

 	--Outputs
   signal LCD_D : std_logic_vector(3 downto 0);
   signal Send : std_logic;
   signal LCD_RS : std_logic;
   signal LCD_RW : std_logic;
   signal SF_CE : std_logic;
	signal Init_done : STD_LOGIC;

   -- Clock period definitions
   constant Clk_50Mhz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LCD_Write PORT MAP (
          Clk_50Mhz => Clk_50Mhz,
          LCD_D => LCD_D,
          Send => Send,
          LCD_RS => LCD_RS,
          LCD_RW => LCD_RW,
          SF_CE => SF_CE
        );

   -- Clock process definitions
   Clk_50Mhz_process :process
   begin
		Clk_50Mhz <= '0';
		wait for Clk_50Mhz_period/2;
		Clk_50Mhz <= '1';
		wait for Clk_50Mhz_period/2;
   end process;
 

   

END;
