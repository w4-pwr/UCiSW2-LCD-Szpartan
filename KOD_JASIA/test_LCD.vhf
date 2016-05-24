--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : test_LCD.vhf
-- /___/   /\     Timestamp : 04/19/2016 17:51:39
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Documents/MB_JM/LCD/test_LCD.vhf -w C:/Users/lab/Documents/MB_JM/LCD/test_LCD.sch
--Design Name: test_LCD
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity test_LCD is
   port ( Clk50MHz : in    std_logic; 
          DI       : in    std_logic_vector (7 downto 0); 
          WE       : in    std_logic; 
          Busy     : out   std_logic; 
          LCD_D    : out   std_logic_vector (3 downto 0); 
          LCD_E    : out   std_logic; 
          LCD_RS   : out   std_logic; 
          LCD_RW   : out   std_logic; 
          SF_CE    : out   std_logic);
end test_LCD;

architecture BEHAVIORAL of test_LCD is
   attribute BOX_TYPE   : string ;
   signal Clk_50MHz : std_logic;
   signal XLXN_21   : std_logic;
   signal XLXN_24   : std_logic;
   signal XLXN_51   : std_logic;
   signal XLXN_52   : std_logic;
   signal XLXN_53   : std_logic;
   signal XLXN_59   : std_logic;
   signal XLXN_60   : std_logic;
   signal XLXN_61   : std_logic;
   signal XLXN_68   : std_logic_vector (3 downto 0);
   signal XLXN_99   : std_logic;
   signal XLXN_103  : std_logic_vector (3 downto 0);
   signal XLXN_106  : std_logic_vector (7 downto 0);
   signal XLXN_109  : std_logic_vector (7 downto 0);
   signal XLXN_110  : std_logic_vector (7 downto 0);
   signal XLXN_122  : std_logic;
   signal XLXN_124  : std_logic;
   signal XLXN_127  : std_logic;
   signal XLXN_129  : std_logic_vector (3 downto 0);
   signal XLXN_130  : std_logic;
   component Nibble_Send
      port ( Send      : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             Nibble    : in    std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             Ready     : out   std_logic; 
             SF_D      : out   std_logic_vector (3 downto 0));
   end component;
   
   component Byte_Send
      port ( Clk_50MHz         : in    std_logic; 
             Send_In           : in    std_logic; 
             Send_Nibble_Ready : in    std_logic; 
             Byte              : in    std_logic_vector (7 downto 0); 
             Send_Out          : out   std_logic; 
             Ready             : out   std_logic; 
             Nibble            : out   std_logic_vector (3 downto 0));
   end component;
   
   component Poweron_init
      port ( Clk_50Mhz  : in    std_logic; 
             Start      : in    std_logic; 
             Send_Ready : in    std_logic; 
             Send       : out   std_logic; 
             Done       : out   std_logic; 
             Nibble     : out   std_logic_vector (3 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component Display_Configuration
      port ( Start           : in    std_logic; 
             Clk_50Mhz       : in    std_logic; 
             Byte_send_ready : in    std_logic; 
             Send            : out   std_logic; 
             Done            : out   std_logic; 
             Byte            : out   std_logic_vector (7 downto 0));
   end component;
   
   component LCD_Write
      port ( Clk_50Mhz     : in    std_logic; 
             Send_Ready    : in    std_logic; 
             done_poweron  : in    std_logic; 
             done_function : in    std_logic; 
             WE            : in    std_logic; 
             Byte_In       : in    std_logic_vector (7 downto 0); 
             Send          : out   std_logic; 
             LCD_RS        : out   std_logic; 
             LCD_RW        : out   std_logic; 
             SF_CE         : out   std_logic; 
             init_poweron  : out   std_logic; 
             init_function : out   std_logic; 
             Busy          : out   std_logic; 
             Byte_Out      : out   std_logic_vector (7 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component MuXXX4
      port ( O  : out   std_logic_vector (3 downto 0); 
             D0 : in    std_logic_vector (3 downto 0); 
             D1 : in    std_logic_vector (3 downto 0); 
             S  : in    std_logic);
   end component;
   
   component MuXXX8
      port ( D0 : in    std_logic_vector (7 downto 0); 
             D1 : in    std_logic_vector (7 downto 0); 
             S  : in    std_logic; 
             O  : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_2 : Nibble_Send
      port map (Clk_50MHz=>Clk50MHz,
                Nibble(3 downto 0)=>XLXN_129(3 downto 0),
                Send=>XLXN_24,
                LCD_E=>LCD_E,
                Ready=>Clk_50MHz,
                SF_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_3 : Byte_Send
      port map (Byte(7 downto 0)=>XLXN_106(7 downto 0),
                Clk_50MHz=>Clk50MHz,
                Send_In=>XLXN_61,
                Send_Nibble_Ready=>Clk_50MHz,
                Nibble(3 downto 0)=>XLXN_103(3 downto 0),
                Ready=>XLXN_124,
                Send_Out=>XLXN_99);
   
   XLXI_7 : Poweron_init
      port map (Clk_50Mhz=>Clk50MHz,
                Send_Ready=>Clk_50MHz,
                Start=>XLXN_51,
                Done=>XLXN_52,
                Nibble(3 downto 0)=>XLXN_68(3 downto 0),
                Send=>XLXN_21);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_99,
                I1=>XLXN_21,
                O=>XLXN_24);
   
   XLXI_10 : Display_Configuration
      port map (Byte_send_ready=>XLXN_124,
                Clk_50Mhz=>Clk50MHz,
                Start=>XLXN_122,
                Byte(7 downto 0)=>XLXN_109(7 downto 0),
                Done=>XLXN_53,
                Send=>XLXN_60);
   
   XLXI_14 : LCD_Write
      port map (Byte_In(7 downto 0)=>DI(7 downto 0),
                Clk_50Mhz=>Clk50MHz,
                done_function=>XLXN_53,
                done_poweron=>XLXN_52,
                Send_Ready=>XLXN_124,
                WE=>WE,
                Busy=>Busy,
                Byte_Out(7 downto 0)=>XLXN_110(7 downto 0),
                init_function=>XLXN_122,
                init_poweron=>XLXN_51,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                Send=>XLXN_59,
                SF_CE=>SF_CE);
   
   XLXI_15 : OR2
      port map (I0=>XLXN_60,
                I1=>XLXN_59,
                O=>XLXN_61);
   
   XLXI_18 : INV
      port map (I=>XLXN_52,
                O=>XLXN_127);
   
   XLXI_20 : INV
      port map (I=>XLXN_53,
                O=>XLXN_130);
   
   XLXI_24 : MuXXX4
      port map (D0(3 downto 0)=>XLXN_103(3 downto 0),
                D1(3 downto 0)=>XLXN_68(3 downto 0),
                S=>XLXN_127,
                O(3 downto 0)=>XLXN_129(3 downto 0));
   
   XLXI_25 : MuXXX8
      port map (D0(7 downto 0)=>XLXN_110(7 downto 0),
                D1(7 downto 0)=>XLXN_109(7 downto 0),
                S=>XLXN_130,
                O(7 downto 0)=>XLXN_106(7 downto 0));
   
end BEHAVIORAL;


