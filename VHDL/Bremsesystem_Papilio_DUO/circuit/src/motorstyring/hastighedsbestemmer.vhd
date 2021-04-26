----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:25 04/06/2021 
-- Design Name: 
-- Module Name:    hastighedsbestemmerTop - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hastighedsbestemmerTop is
	port(
	clk 					: in std_logic;			--max speed
	sensor_front	 	: in std_logic;			--encoder at car
	sensor_back			: in std_logic;
	
	speed_front 		: out std_logic_vector(7 downto 0);
	speed_back			: out std_logic_vector(7 downto 0));
	
end hastighedsbestemmerTop;

architecture Behavioral of hastighedsbestemmerTop is

	component timeCounter port(
		clk1 			: in std_logic; --37 kHz
		sensor		: in std_logic;
	
		timePassed 	: out std_logic_vector(16 downto 0);
		data_ready	: out std_logic); 
	end component;
	
	component ringbuffer port(
		timePassed 		: in std_logic_vector(16 downto 0);
		start				: in std_logic;
		timePassedAvg 	: out std_logic_vector(16 downto 0));
	end component;
	
	component division port(
		DenomiIn	: in std_logic_vector(16 downto 0);
		Start 	: in std_logic;
		clk 		: in std_logic;
		
      Result 	: out std_logic_vector(7 downto 0));
	end component;
	
	
	-- For clk
	signal slowDownClock : Integer :=0;
	signal bufClock : std_logic:='0';
	
	--Carry signals
	signal data_ready_carry_front 	: std_logic :='0';
	signal timePassed_carry_front		: std_logic_vector(16 downto 0);
	signal timePassedAvg_carry_front : std_logic_vector(16 downto 0);
	
	signal data_ready_carry_back 		: std_logic :='0';
	signal timePassed_carry_back		: std_logic_vector(16 downto 0);
	signal timePassedAvg_carry_back 	: std_logic_vector(16 downto 0);

begin

	--Front of car-------------------------------------------------
	timeCounter_front: timeCounter port map(			--Counting time
		clk1 => bufclock,
		sensor => sensor_front, 
		
		timePassed => timePassed_carry_front,
		data_ready => data_ready_carry_front
	);
	
	ringBuffer_front: ringbuffer port map(			--Calculating AVG over four values
		timePassed => timePassed_carry_front,
		start => data_ready_carry_front,				--component starts at rising edge
		
		timePassedAvg => timePassedAvg_carry_front
	);
	
	division_front: division port map(					--Calculatin speed
		denomiIn => timePassedAvg_carry_front,
		Start => data_ready_carry_front,					--component starts after falling edge data rippling assumed finished
		clk => clk,
		
      Result => speed_front
	);
		
	
	--Back of car-----------------------------------------
	timeCounter_back: timeCounter port map(			--Counting time
		clk1 => bufClock,
		sensor => sensor_back, 
		
		timePassed => timePassed_carry_back,
		data_ready => data_ready_carry_back
	);
	
	ringBuffer_back: ringbuffer port map(			--Calculating AVG over fout values
		timePassed => timePassed_carry_back,
		start => data_ready_carry_back,				--component starts at rising edge
		
		timePassedAvg => timePassedAvg_carry_back
	);
	
	division_back: division port map(					--Calculatin speed
		denomiIn => timePassedAvg_carry_back,
		Start => data_ready_carry_back,					--component starts after falling edge data rippling assumed finished
		clk => clk,
		
      Result => speed_back
	);
	
	
	
	
	--Clock --------- 
	-- Dette clock stter tempoet ned til et passende nivau til time counter
	process (clk)
	begin
		if(clk'event and clk ='1') then
			if(slowDownClock<71) then  
				slowDownClock <= slowDownClock +1;
			else
				slowDownClock <= 0;
				bufClock <= not bufClock;
			end if;
		end if;
	end process;

end Behavioral;

