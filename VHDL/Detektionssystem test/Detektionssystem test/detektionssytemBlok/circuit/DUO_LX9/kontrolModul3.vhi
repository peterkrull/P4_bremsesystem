
-- VHDL Instantiation Created from source file kontrolModul3.vhd -- 15:20:34 04/27/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT kontrolModul3
	PORT(
		clk : IN std_logic;
		speed : IN std_logic_vector(7 downto 0);
		i2cData : IN std_logic_vector(15 downto 0);
		i2cError : IN std_logic;
		i2cReady : IN std_logic;          
		brakeLength_out : OUT std_logic_vector(9 downto 0);
		initiateBraking_out : OUT std_logic;
		i2cTrigger : OUT std_logic;
		brems : OUT std_logic;
		alarm : OUT std_logic
		);
	END COMPONENT;

	Inst_kontrolModul3: kontrolModul3 PORT MAP(
		clk => ,
		speed => ,
		i2cData => ,
		i2cError => ,
		i2cReady => ,
		brakeLength_out => ,
		initiateBraking_out => ,
		i2cTrigger => ,
		brems => ,
		alarm => 
	);


