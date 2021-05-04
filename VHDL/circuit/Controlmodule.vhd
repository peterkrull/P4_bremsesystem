library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Controlmodule is
	port(
		clk 	: in std_logic;
		speed	: in std_logic_vector(7 downto 0);		-- Hastighed
		brake : out std_logic:='1';						-- Noedbrems
		alarm	: out std_logic:='0';						-- Alarm
		i2cData 	: in std_logic_vector(9 downto 0);		-- Afstand
		i2cError : in std_logic; 								-- Error
		i2cReady : in std_logic ; 				-- Ready
		i2cTrigger : out std_logic:='0'						-- Trigger
	);
end Controlmodule;

architecture Behavioral of Controlmodule is

	-- Distance calculator
	COMPONENT distancecalculator
	PORT(
		speed : IN std_logic_vector(7 downto 0);          
		breakdistance_out : OUT std_logic_vector(8 downto 0);
		totaldistance : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;
	
	signal clkCount 		 	: unsigned(15 downto 0) := (others=>'0');
	
	signal alarmLength 	 	: std_logic_vector(9 downto 0);
	signal brakeLength 	 	: std_logic_vector(9 downto 0);
	signal triggerBuf 		: std_logic := '1';
	--signal distanceToObject : std_logic_vector(9 downto 0);
	signal brakeDistanceOut : std_logic_vector(9 downto 0);
	signal brakingMode 		: std_logic := '0';
	signal initiateBraking  : std_logic := '0';
	signal enableAEBS 		: std_logic := '0';
	signal brakeOff			: std_logic := '1';

begin

	Inst_distancecalculator: distancecalculator PORT MAP(
		speed => speed,
		breakdistance_out => brakeDistanceOut,
		totaldistance => alarmLength
	);
	
	
	process(clk) begin
		if(clk'event and clk = '1') then
			if(clkCount < to_unsigned(64000,clkCount'length)) then
				clkCount <= clkCount + 1;
			else
				clkCount <= (others=>'0');
				triggerBuf <= not triggerBuf;
			end if;
		end if;
	end process;
	i2cTrigger <= triggerBuf;
	--distanceToObject <= i2cData(9 downto 0);
	
	--Sætter alarmen, kan godt gå lav hvis vi er helt stoppet. 
	alarm <= '1' when (alarmLength >= i2cData and i2cError = '1') or i2cError = '0' else '0';


	initiateBraking <= '1' when (brakeLength >= i2cData and i2cError = '1' and speed /= x"00") else '0';
	enableAEBS <= '1' when speed >= x"27" and speed <= x"F0" else '0';
	--enableAEBS <= '1';
	process(clk) begin
		if(clk'event and clk = '1') then
			if(initiateBraking = '1' and speed /= x"00" and enableAEBS = '1' and i2cData /="0000000000") then
				brakeOff <= '0';
			elsif(speed = x"00") then
				brakeOff <= '1';
			end if;
		end if;
	end process;
	
	
	brake <= ( brakeOff);
	
end Behavioral;