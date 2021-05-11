
-- VHDL Instantiation Created from source file I2C_recieveByte.vhd -- 11:47:14 04/23/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_recieveByte
	PORT(
		clk_in : IN std_logic;
		SDA : IN std_logic;
		trigger : IN std_logic;
		reset : IN std_logic;          
		SCL : OUT std_logic;
		dataOut : OUT std_logic_vector(7 downto 0);
		done : OUT std_logic
		);
	END COMPONENT;

	Inst_I2C_recieveByte: I2C_recieveByte PORT MAP(
		clk_in => ,
		SDA => ,
		trigger => ,
		reset => ,
		SCL => ,
		dataOut => ,
		done => ,
		clkstep_out => ,
		bitCounter_out => 
	);


