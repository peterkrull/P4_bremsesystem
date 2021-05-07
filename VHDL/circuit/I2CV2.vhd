-------------------------------------------------------
--                     I2C									  --
--						  Sren Lang							  --
--					  EIT P4 29/3 2021						  --
-------------------------------------------------------
--							  TODO								  --
--	*Errorbuffer skal tilskrives error vektoren		  --
--  og ikke 0, cirka linje 355							  --
--																	  --
--																	  --
--																	  --
--	*Ville fungere mere sikkert hvis vi lser  		  --
--  to byte til	(Signal amplitude(0x02 og 0x03))   --
-------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity I2CV2 is
	port(
	 clk 		: in std_logic;
	 trigger : in std_logic;
	 
	 SCL 		: out std_logic:='1';
	 ready : out std_logic:= '0';
	 SDA 		: inout std_logic:= '1';
	 dataOut : out std_logic_vector(15 downto 0) := x"0000";
	 
--	 statusCounter_out : out std_logic_vector(11 downto 0);--fjernes
--	 doneOutSendBytes_out : out std_logic_vector(11 downto 0);--fjernes
	 errorVector_out : out std_logic_vector(2 downto 0);
	 
	 error_out : out std_logic := '1'
	);
end I2CV2; 




architecture Behavioral of I2CV2 is

	COMPONENT I2C_sendStart PORT(
		clk_in : IN std_logic;
		trigger : IN std_logic;
		reset : IN std_logic;
		data_Out : OUT std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT I2C_SendOneByte PORT(
		clk_in : IN std_logic;
		byte_in : IN std_logic_vector(7 downto 0);
		trigger : in std_logic;
		reset : IN std_logic;
		data_Out : OUT std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT I2C_recieveAcknowledge
	PORT(
		clk_in : IN std_logic;
		trigger : IN std_logic;
		SDA : INOUT std_logic;
		reset : IN std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic;
		error : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT I2C_sendRestart
	PORT(
		clk_in : IN std_logic;
		trigger : IN std_logic;
		reset : IN std_logic;          
		data_Out : OUT std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT recieve_byte
	PORT(
		clk_in : IN std_logic;
		SDA : IN std_logic;
		status : IN std_logic;          
		byte_rec : OUT std_logic_vector(7 downto 0);
		done_job : OUT std_logic;
		SCL : OUT std_logic
		);
	END COMPONENT;
	
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
	
	COMPONENT I2C_sendAcknowledge
	PORT(
		clk_in : IN std_logic;
		ack_signal : IN std_logic;
		trigger : IN std_logic;
		reset : IN std_logic;          
		data_out : OUT std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;
	
	
	COMPONENT I2C_sendNotAckStop
	PORT(
		clk_in : IN std_logic;
		trigger : IN std_logic;
		reset : IN std_logic;          
		SDA : OUT std_logic;
		SCL : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;
	
	
	function andorVectors (
		vector1 : in std_logic_vector; 
		vector2 : in std_logic_vector) 
		
		return std_logic is variable toReturn : std_logic := '0';
		
		begin
			for i in 0 to vector1'length -1 loop
				toReturn := toReturn or (vector1(i) AND vector2(i)); 
			end loop;
			
			return toReturn;
	end;
	
	
	
	--Vector that registers all notAcknowledged signals from slave
	signal error : std_logic_vector(2 downto 0) := "000";
	
	--Resets all blocks which have a reset function (Recieve_byte has this functionality built into it)
	signal reset : std_logic := '0';
	
	--Used to register when a block is finished with its task
	signal doneBuffer : std_logic;
	
	--Defines which block is running, each block has its own bit, is bitshifted left after each block is finished
	signal statusCounter : std_logic_vector(11 downto 0):= "000000000000";
	
	--Registers that I2C-communication is happening
	signal isTriggered : std_logic := '0';
	
	--Address of the slave
	signal slaveAddress : std_logic_vector (6 downto 0):= std_logic_vector(to_unsigned(16,7));
	
	--Address of slave with write bit
	signal toSend0 : std_logic_vector(7 downto 0) := slaveAddress & '0'; ----'0' = write, '1' = read
	
	--dataregister to begin reading from
	--signal toSend1 : std_logic_vector (7 downto 0):= x"00";
	
	--Each bit represents the SDA output of each block, each bit is anded with its corresponding bit
	--in statusCounter to determine which block is allowed access to SDA
	signal SDASendBytes : std_logic_vector (11 downto 0) := "000000000000";
	signal doneBits : std_logic_vector (11 downto 0) := "000000000000";
	signal clk_outSendBytes : std_logic_vector(11 downto 0) := "000000000000";
	
	signal slowDownClock : Integer :=0;
	signal bufClock : std_logic:='0';
	signal forceClockHigh : std_logic := '0';
	signal SCLBuffer : std_logic;
	
	signal errorBuffer : std_logic;
	
	signal triggerGoneFromHighToLow : std_logic := '1';
	
	signal dataBuffer : std_logic_vector (15 downto 0) := (others =>'0');
	signal blockTriggers : std_logic_vector (11 downto 0) := "000000000000";
	signal orStatusCounterWhenWritingSDA : std_logic;
	signal readingFromSDA : std_logic := '1';
	signal forceSDAHigh : std_logic := '0';
	signal SDABuffer : std_logic;
	signal sendByte0ByteToSend : std_logic_vector(7 downto 0);
	signal sendByte2ByteToSend : std_logic_vector(7 downto 0);
	
	
	signal resetBuffer : std_logic := '0';
begin

		sendStart0: I2C_sendStart PORT MAP(
			clk_in => bufClock,
			trigger => blockTriggers(0),
			reset => reset,
			data_Out => SDASendBytes(0),
			clk_out => clk_outSendBytes(0), 
			done_out => doneBits(0)
		);
		
		sendRestart0: I2C_sendRestart PORT MAP(
			clk_in => bufClock,
			trigger => blockTriggers(5),
			reset => reset,
			data_Out => SDASendBytes(5),
			clk_out => clk_outSendBytes(5), 
			done_out => doneBits(5)
		); 
	
		slaveAddress <= "0010000";
		sendByte0ByteToSend <= slaveAddress  & '0';
		sendByte0 : I2C_SendOneByte port map(
			clk_in => bufClock,
			byte_in => sendByte0ByteToSend,
			trigger => blockTriggers(1),
			reset => reset,
			data_out => SDASendBytes(1),
			done_out => doneBits(1),
			clk_out => clk_outSendBytes(1)
		);
		
		sendByte1 : I2C_SendOneByte port map(
			clk_in => bufClock,
			byte_in => x"00",
			trigger => blockTriggers(3),
			reset => reset,
			data_out => SDASendBytes(3),
			done_out => doneBits(3),
			clk_out =>clk_outSendBytes(3)
		);
		
		sendByte2ByteToSend <= slaveAddress & '1';
		sendByte2 : I2C_SendOneByte port map(
			clk_in => bufClock,
			byte_in => sendByte2ByteToSend,
			trigger => blockTriggers(6),
			reset => reset,
			data_out => SDASendBytes(6),
			done_out => doneBits(6),
			clk_out =>clk_outSendBytes(6)
		);
		
		recieveAcknowledge0 :I2C_recieveAcknowledge PORT MAP(
			clk_in => bufClock,
			trigger => blockTriggers(2),
			SDA => SDA,
			reset => reset,
			clk_out => clk_outSendBytes(2),
			done_out => doneBits(2),
			error => error(0) 
		); 
			
		recieveAcknowledge1 :I2C_recieveAcknowledge PORT MAP(
			clk_in => bufClock,
			trigger => blockTriggers(4),
			SDA => SDA,
			reset => reset,
			clk_out => clk_outSendBytes(4),
			done_out => doneBits(4),
			error => error(1) 
		);
		
		recieveAcknowledge2 :I2C_recieveAcknowledge PORT MAP(
			clk_in => bufClock,
			trigger => blockTriggers(7),
			SDA => SDA,
			reset => reset,
			clk_out => clk_outSendBytes(7),
			done_out => doneBits(7),
			error => error(2) 
		);
		
		
		recieveByte0 : I2C_recieveByte PORT MAP(
			clk_in => bufClock,
			SDA => SDA,
			trigger => blockTriggers(8),
			reset => reset,
			SCL => clk_outSendBytes(8),
			dataOut => dataBuffer(7 downto 0),
			done => doneBits(8)
		);
		
--		recieveByte0: recieve_byte PORT MAP(
--			clk_in => bufClock,
--			byte_rec => dataBuffer(7 downto 0),
--			SDA => SDA,
--			status => blockTriggers(8),
--			done_job => doneBits(8),
--			SCL => clk_outSendBytes(8)
--		);
		
		sendAcknowledge0: I2C_sendAcknowledge PORT MAP(
			clk_in => bufClock,
			ack_signal => '0', --'1' = not acknowledge, '0' = acknowledge
			trigger => blockTriggers(9),
			reset => reset,
			data_out => SDASendBytes(9),
			clk_out => clk_outSendBytes(9),
			done_out => doneBits(9)
		);
		
		recieveByte1 : I2C_recieveByte PORT MAP(
			clk_in => bufClock,
			SDA => SDA,
			trigger => blockTriggers(10),
			reset => reset,
			SCL => clk_outSendBytes(10),
			dataOut => dataBuffer(15 downto 8),
			done => doneBits(10)
		);
		
		
--		recieveByte1: recieve_byte PORT MAP(
--			clk_in => bufClock,
--			byte_rec => dataBuffer(15 downto 8),
--			SDA => SDA,
--			status => blockTriggers(10),
--			done_job => doneBits(10),
--			SCL => clk_outSendBytes(10)
--		);
		
		
		Inst_I2C_sendNotAckStop: I2C_sendNotAckStop PORT MAP(
			clk_in => bufClock, 
			trigger => blockTriggers(11),
			reset => reset,
			SDA => SDASendBytes(11),
			SCL => clk_outSendBytes(11),
			done_out => doneBits(11)
		);
	
	process(bufClock, trigger, isTriggered) begin		
		if(bufClock'event and bufClock = '1') then
			if(trigger = '1' and isTriggered = '0' and triggerGoneFromHighToLow = '1') then
				statusCounter <= "000000000001";
				isTriggered <= '1';
				triggerGoneFromHighToLow <= '0';
				resetBuffer <= '0';
				error_out <= '1';
			elsif(doneBuffer = '1' and isTriggered = '1') then
				if(doneBits(11) = '1' or errorBuffer = '1') then
					if(errorBuffer = '1') then
						error_out <= '0';
					end if;
					isTriggered <= '0';
					statusCounter <= "000000000000";
					dataOut <= dataBuffer;
					resetBuffer <= '1';
				else	
					statusCounter <= std_logic_vector(shift_left(unsigned(statusCounter),1));
				end if;		
			end if;
			
			if(trigger = '0' and isTriggered = '0') then
				triggerGoneFromHighToLow <= '1';
			end if;
		end if;
	end process;
	
	
	
	--vrdi = 160 giver en frekvens p 100 kHz
	process (clk)
		begin
			if(clk'event and clk ='1') then
				if(slowDownClock<40) then 
					slowDownClock <= slowDownClock +1;
				else
					slowDownClock <= 0;
					bufClock <= not bufClock;
				end if;

			end if;
	end process;
	
	blockTriggers(0) <= statusCounter(0) and not errorBuffer;
	blockTriggers(1) <= statusCounter(1) and not errorBuffer;
	blockTriggers(2) <= statusCounter(2) and not errorBuffer;
	blockTriggers(3) <= statusCounter(3) and not errorBuffer;
	blockTriggers(4) <= statusCounter(4) and not errorBuffer;
	blockTriggers(5) <= statusCounter(5) and not errorBuffer;
	blockTriggers(6) <= statusCounter(6) and not errorBuffer;
	blockTriggers(7) <= statusCounter(7) and not errorBuffer;
	blockTriggers(8) <= statusCounter(8) and not errorBuffer;
	blockTriggers(9) <= statusCounter(9) and not errorBuffer;
	blockTriggers(10) <= statusCounter(10) and not errorBuffer;
	blockTriggers(11) <= statusCounter(11) and not errorBuffer;
	
	sdaSendBytes(2) <= '0';
	sdaSendBytes(4) <= '0';
	sdaSendBytes(7) <= '0';
	sdaSendBytes(8) <= '0';
	sdaSendBytes(10) <= '0';
	
	
	orStatusCounterWhenWritingSDA <=statusCounter(0) or statusCounter(1) or statusCounter(3) or statusCounter(5) or statusCounter(6) or statusCounter(9) or statusCounter(11); 
	readingFromSDA <= not orStatusCounterWhenWritingSDA;
	
	ready <= not isTriggered;
	
	--reset <= doneBits(11);  
	reset <= resetBuffer;

	forceSDAHigh <= doneBits(11);
	SDABuffer <= (andOrVectors(SDASendBytes, statuscounter)or forceSDAHigh) and not errorBuffer;
	SDA <= 'Z' when readingFromSDA = '1' else SDABuffer;
	
	forceClockHigh <= doneBits(11);
	SCLBuffer <= (andorvectors(clk_outSendBytes,statuscounter) or forceClockHIGH) and not errorBuffer;
	
	SCL <= SCLBuffer when isTriggered = '1' else '1';
	
	doneBuffer <= andorvectors(doneBits, statusCounter);
	
	errorBuffer <= error(0) or error(1) or error(2);--kommenteres ind ved upload, kan ikke simulere fuld sekvens hvis denne linje er med 
	--errorBuffer <= '0';--Fjernes
	
	
	-- fejlfindingsvrktjer, fjern nr frdigt
--	doneOutSendBytes_out <= doneBits;
--	statusCounter_out <= statusCounter;
	errorVector_out <= error;
	
	
	
end Behavioral;