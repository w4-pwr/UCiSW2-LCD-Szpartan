-- Vhdl test bench created from schematic C:\Users\lab\Documents\MB_JM\LCD\test_LCD.sch - Tue Mar 08 17:28:34 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY test_LCD_test_LCD_sch_tb IS
END test_LCD_test_LCD_sch_tb;
ARCHITECTURE behavioral OF test_LCD_test_LCD_sch_tb IS 

   COMPONENT test_LCD
   PORT( LCD_RS	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC; 
          SF_CE	:	OUT	STD_LOGIC; 
          LCD_E	:	OUT	STD_LOGIC; 
          LCD_D	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          Clk50MHz	:	IN	STD_LOGIC;
			 WE	:	IN	STD_LOGIC;
			 DI	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   SIGNAL SF_CE	:	STD_LOGIC;
   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL Clk50MHz	:	STD_LOGIC := '0';
	SIGNAL WE	:	STD_LOGIC;
	SIGNAL DI	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := X"42";

	constant Clk50MHz_period : time := 20 ns;
BEGIN

   UUT: test_LCD PORT MAP(
		LCD_RS => LCD_RS, 
		LCD_RW => LCD_RW, 
		SF_CE => SF_CE, 
		LCD_E => LCD_E, 
		LCD_D => LCD_D, 
		Clk50MHz => Clk50MHz,
		WE => WE,
		DI => DI
   );
	
-- Clock process definitions
   Clk50MHz_process :process
   begin
		Clk50MHz <= '0';
		wait for Clk50MHz_period/2;
		Clk50MHz <= '1';
		wait for Clk50MHz_period/2;
   end process;
	
-- *** Test Bench - User Defined Section ***
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		WE <= '1';
      wait;
   end process;
END;
