--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lcd_module.vhf
-- /___/   /\     Timestamp : 05/16/2016 10:37:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/DZIAUA/lcd_module.vhf -w C:/Users/lab/Desktop/DZIAUA/lcd_module.sch
--Design Name: lcd_module
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

entity lcd_module is
   port ( Clk    : in    std_logic; 
          LCD_D  : out   std_logic_vector (3 downto 0); 
          LCD_E  : out   std_logic; 
          LCD_RS : out   std_logic; 
          LCD_RW : out   std_logic; 
          SF_CE  : out   std_logic);
end lcd_module;

architecture BEHAVIORAL of lcd_module is
   attribute BOX_TYPE   : string ;
   signal GO      : std_logic;
   signal XLXN_38 : std_logic_vector (7 downto 0);
   signal XLXN_40 : std_logic;
   signal XLXN_41 : std_logic;
   signal XLXN_42 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   signal XLXN_49 : std_logic_vector (3 downto 0);
   signal XLXN_50 : std_logic_vector (3 downto 0);
   signal XLXN_75 : std_logic;
   signal XLXN_76 : std_logic;
   signal XLXN_79 : std_logic_vector (3 downto 0);
   signal XLXN_80 : std_logic;
   signal XLXN_81 : std_logic;
   signal XLXN_83 : std_logic;
   signal XLXN_90 : std_logic;
   component send_4bits
      port ( GO        : in    std_logic; 
             Clk       : in    std_logic; 
             half_byte : in    std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             BUSY      : out   std_logic; 
             SF_D      : out   std_logic_vector (3 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component send_byte
      port ( Clk_50MHz               : in    std_logic; 
             ready_to_send_half_byte : in    std_logic; 
             send_in                 : in    std_logic; 
             Byte_in                 : in    std_logic_vector (7 downto 0); 
             send_out                : out   std_logic; 
             busy                    : out   std_logic; 
             half_byte               : out   std_logic_vector (3 downto 0));
   end component;
   
   component lcd_config
      port ( start     : in    std_logic; 
             byte_sent : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             busy      : out   std_logic; 
             send      : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             byte_out  : out   std_logic_vector (7 downto 0); 
             SF_CE     : out   std_logic);
   end component;
   
   component mul_4b_2_1
      port ( set      : in    std_logic; 
             line_0   : in    std_logic_vector (3 downto 0); 
             line_1   : in    std_logic_vector (3 downto 0); 
             line_out : out   std_logic_vector (3 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component lcd_init
      port ( GO      : in    std_logic; 
             SENT    : in    std_logic; 
             Clk     : in    std_logic; 
             BUSY    : out   std_logic; 
             SENDING : out   std_logic; 
             LCD_D   : out   std_logic_vector (3 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
begin
   XLXI_2 : send_4bits
      port map (Clk=>Clk,
                GO=>XLXN_76,
                half_byte(3 downto 0)=>XLXN_50(3 downto 0),
                BUSY=>XLXN_45,
                LCD_E=>LCD_E,
                SF_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_4 : INV
      port map (I=>XLXN_45,
                O=>XLXN_83);
   
   XLXI_13 : send_byte
      port map (Byte_in(7 downto 0)=>XLXN_38(7 downto 0),
                Clk_50MHz=>Clk,
                ready_to_send_half_byte=>XLXN_46,
                send_in=>XLXN_40,
                busy=>XLXN_41,
                half_byte(3 downto 0)=>XLXN_49(3 downto 0),
                send_out=>XLXN_75);
   
   XLXI_14 : lcd_config
      port map (byte_sent=>XLXN_42,
                Clk_50MHz=>Clk,
                start=>XLXN_90,
                busy=>open,
                byte_out(7 downto 0)=>XLXN_38(7 downto 0),
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                send=>XLXN_40,
                SF_CE=>SF_CE);
   
   XLXI_15 : INV
      port map (I=>XLXN_81,
                O=>XLXN_90);
   
   XLXI_16 : INV
      port map (I=>XLXN_41,
                O=>XLXN_42);
   
   XLXI_17 : INV
      port map (I=>XLXN_45,
                O=>XLXN_46);
   
   XLXI_20 : mul_4b_2_1
      port map (line_0(3 downto 0)=>XLXN_79(3 downto 0),
                line_1(3 downto 0)=>XLXN_49(3 downto 0),
                set=>XLXN_81,
                line_out(3 downto 0)=>XLXN_50(3 downto 0));
   
   XLXI_21 : OR2
      port map (I0=>XLXN_75,
                I1=>XLXN_80,
                O=>XLXN_76);
   
   XLXI_22 : lcd_init
      port map (Clk=>Clk,
                GO=>GO,
                SENT=>XLXN_83,
                BUSY=>XLXN_81,
                LCD_D(3 downto 0)=>XLXN_79(3 downto 0),
                SENDING=>XLXN_80);
   
   XLXI_27 : VCC
      port map (P=>GO);
   
end BEHAVIORAL;


