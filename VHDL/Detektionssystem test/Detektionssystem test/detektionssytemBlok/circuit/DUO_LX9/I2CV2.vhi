
-- VHDL Instantiation Created from source file I2CV2.vhd -- 15:18:22 04/27/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2CV2
	PORT(
		clk : IN std_logic;
		trigger : IN std_logic;    
		SDA : INOUT std_logic;      
		SCL : OUT std_logic;
		ready : OUT std_logic;
		dataOut : OUT std_logic_vector(15 downto 0);
		errorVector_out : OUT std_logic_vector(2 downto 0);
		dataBuffer_out : OUT std_logic_vector(15 downto 0);
		error_out : OUT std_logic
		);
	END COMPONENT;

	Inst_I2CV2: I2CV2 PORT MAP(
		clk => ,
		trigger => ,
		SCL => ,
		ready => ,
		SDA => ,
		dataOut => ,
		errorVector_out => ,
		dataBuffer_out => ,
		error_out => 
	);


