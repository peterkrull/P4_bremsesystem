----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:26:04 04/23/2021 
-- Design Name: 
-- Module Name:    Controlmodule - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Controlmodule is
	port(
	clk 	: in std_logic;
	--speed	: in std_logic_vector(7 downto 0);
	--dataOut_test 	: in std_logic_vector(15 downto 0);
	--error_test		: in std_logic;
	--ready_test		: in std_logic;
	error_test			: out std_logic; 
	sda	: inout std_logic:='1';
	scl	: out std_logic:='1';
	alarm	: out std_logic:='0';
	break : out std_logic:='1');
	
end Controlmodule;

architecture Behavioral of Controlmodule is

	COMPONENT I2CV2
	PORT(
		clk : IN std_logic;						--FPGA'ens clk
		trigger : IN std_logic;    
		SDA : INOUT std_logic;      
		SCL : OUT std_logic;
		ready : OUT std_logic;
		dataOut : OUT std_logic_vector(15 downto 0);
		error_out : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT distancecalculator
	PORT(
		speed : IN std_logic_vector(7 downto 0);          
		breakdistance_out : OUT std_logic_vector(8 downto 0);
		totaldistance : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;
	
	--Output handling of distance calculator
	signal breakingdistance_std 	: std_logic_vector(8 downto 0);
	signal breakingdistance 		: unsigned(9 downto 0);
	signal totaldistance_std	 	: std_logic_vector(9 downto 0);
	signal totaldistance	 			: unsigned(9 downto 0);
	
	--clk for starting i2c module
	signal clkCount :unsigned(16 downto 0):="00000000000000000";
	signal i2cStart :std_logic:='0';
	
	--Handling of I2C module
	signal startComparison 		: std_logic;
	signal error					: std_logic;
	signal distanceToWall_std	: std_logic_vector(15 downto 0);
	signal distanceToWall		: unsigned(9 downto 0);
	
	--Latching of output signals
	signal break_int	: std_logic:='1';
	signal alarm_int	: std_logic:='0';	
	
-- Edge detection v0.0	
--	signal break_pipe	: std_logic:='1';
--	signal alarm_pipe : std_logic:='0';
--	
--	signal standStill	: std_logic;
--	signal outputLatch: std_logic:='0';

-- Edge detection v0.1
	signal break_pipe : std_logic:='1';
	signal alarm_pipe	: std_logic:='0';
	
	signal break_falling : std_logic:='0';
	signal alarm_rising 	: std_logic:='0';
	
	signal standStill		: std_logic;
	signal outputLatch	: std_logic:='0';
	--For testing:
	signal speed		: std_logic_vector(7 downto 0):="11111111";
	
	
begin

	--Calculating the breaking distance and alarm distance
	Inst_distancecalculator: distancecalculator PORT MAP(
		speed => speed,
		breakdistance_out => breakingdistance_std,
		totaldistance => totaldistance_std
	);
	breakingdistance <= "0" & unsigned(breakingdistance_std);
	totaldistance <= unsigned(totaldistance_std);
	
	--Clk for start of i2c module
	process (clk)
	begin
		if(clk'event and clk ='1') then
			if(clkCount< to_unsigned(64000,17)) then  
				clkCount <= clkCount +1;
			else
				clkCount <= (others =>'0');
				i2cStart <= not i2cStart;
			end if;
		end if;
	end process;
	
	-- i2c module
	Inst_I2CV2: I2CV2 PORT MAP(
		clk => clk,							--FPGA clk
		trigger => i2cStart,			--Start modulet hver 4 ms
		SCL => scl,
		ready => startComparison,							--Rising edge == ny måling klar
		SDA => sda,
		dataOut => distanceToWall_std,
		error_out => error						--Low if error 
	);
	distanceToWall <= unsigned(distanceToWall_std(9 downto 0));			--Not all data used since it will be zerors
	--distanceToWall <= unsigned(dataOut_test(9 downto 0));	--For test
	--startComparison <= ready_test;									--For test
	--error	<= error_test;												--For test
	error_test<= not error;													--For test
	
	
	--This process compares values and checks if breaking is nessesary.
	process(startComparison)	
	begin
		if(rising_edge(startComparison) and error='1') then
			if(distanceToWall <= breakingdistance + 1) then
				break_int <= '0';
				alarm_int <= '1';
			elsif(distanceToWall <= totaldistance + 1) then
				break_int <= '1';
				alarm_int <= '1';
			else
				break_int <= '1';
				alarm_int <= '0';
			end if;
		end if;
	end process;	


--Edge detection
--	process(clk)
--	begin
--		if(rising_edge(clk)) then
--		break_pipe <= break_int;
--		alarm_pipe <= alarm_int;
--		end if;
--	end process;
--	standStill <= 	'1' when unsigned(speed) =0 else
--						'0';
--	outputLatch <= (break_pipe and not break_int) or (not alarm_pipe  and alarm_int) or standStill;
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			break_falling 	<= break_pipe and not break_int;
			alarm_rising	<= not alarm_pipe and alarm_int;
			break_pipe <= break_int;
			alarm_pipe <= alarm_int;
		end if;
	end process;
	
	standStill <= 	'1' when unsigned(speed) =0 else
						'0';
	outputLatch <= break_falling or alarm_rising or standStill;
	
--Output latch	
	process(clk)
	begin
		if(outputLatch = '1') then
		break <= break_int;
		alarm <= alarm_int;
		end if;
	end process;
	
end Behavioral;