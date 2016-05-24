-- Vhdl test bench created from schematic C:\Users\lab\Desktop\17042016PRZED\LCD\lcd_module.sch - Mon Apr 18 09:52:56 2016
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
ENTITY lcd_module_lcd_module_sch_tb IS
END lcd_module_lcd_module_sch_tb;
ARCHITECTURE behavioral OF lcd_module_lcd_module_sch_tb IS 

   COMPONENT lcd_module
   PORT( LCD_E	:	OUT	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          LCD_D	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          LCD_RS	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   
   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   constant Clk_period : time := 20 ns;


BEGIN

   UUT: lcd_module PORT MAP(
		LCD_E => LCD_E, 
		Clk => Clk, 
		LCD_D => LCD_D, 
		
		LCD_RS => LCD_RS, 
		LCD_RW => LCD_RW
   );

   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		 -- hold reset state for 10 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 
		--GO <= '1';

		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
