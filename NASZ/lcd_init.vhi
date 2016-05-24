
-- VHDL Instantiation Created from source file lcd_init.vhd -- 09:17:44 04/18/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT lcd_init
	PORT(
		GO : IN std_logic;
		SENT : IN std_logic;
		Clk : IN std_logic;          
		BUSY : OUT std_logic;
		SENDING : OUT std_logic;
		LCD_D : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_lcd_init: lcd_init PORT MAP(
		GO => ,
		SENT => ,
		BUSY => ,
		SENDING => ,
		Clk => ,
		LCD_D => 
	);


