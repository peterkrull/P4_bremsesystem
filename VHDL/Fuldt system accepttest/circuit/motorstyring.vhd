library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Dette modul skal sammenbinde blokkene i motorstyringen
-- Disse er
--
--      Hastighedsberegner
--      Accelerator
--      ABS-styring
--      Motorbeskytter

-- external ports to be used by hardware
entity motorstyring is
	port(
	
			clk				: in std_logic; -- system clock
			
        -- rotationssensorer
        rotsens_front : in std_logic; -- Sensor 1
        rotsens_rear : in std_logic; -- Sensor 2

        -- Noedstopsignal
        emerg_stop : in std_logic;
        
        -- Teststyring
        test_speed : in std_logic_vector(7 downto 0); -- speed Pins

        -- Hjulhastighed
        rear_speed : out std_logic_vector (7 downto 0 );
        --frontSpeed : out std_logic_vector (7 downto 0 );

        -- motor PWM output
        motor_PWM : out std_logic;   -- PWM output (front)
        motor_select : out std_logic   -- PWM output (reverse)
	);
end motorstyring;

-- here all submodules will be instantiated
architecture motorstyringBehavioral of motorstyring is

    -- Internal signals

    signal front_speed_sig : std_logic_vector (7 downto 0);
    signal rear_speed_sig : std_logic_vector (7 downto 0);

    signal front_power_sig : std_logic_vector (7 downto 0);
    signal brake_power_sig : std_logic_vector (7 downto 0);

    -- All components are mapped to each other

    component hastighedsbestemmerTop port (
        clk 				: in std_logic;	
        sensor_front	 	: in std_logic;
        sensor_back			: in std_logic;
        speed_front 		: out std_logic_vector(7 downto 0);
        speed_back			: out std_logic_vector(7 downto 0)
    );
    end component;

    component absBrems port (
		clk	:	in	std_logic;
		frontSpeed	:	in	std_logic_vector(7 downto 0);
		rearSpeed	:	in	std_logic_vector(7 downto 0);
		engPower	:	out	std_logic_vector(7 downto 0)
    );
    end component;

    component Accelerator port (
		clk	:	in	std_logic;
		oensketHastighed	:	in	std_logic_vector(7 downto 0);
		forhjulHastighed	:	in	std_logic_vector(7 downto 0);
		motorkraft	: out std_logic_vector(7 downto 0)
    );
    end component;

    component Motorbeskyttelse port (
		clk						:	in 	std_logic; -- clk ind 
		PWM 						: 	out 	std_logic; -- PWM ud 
		retning 					:  out   std_logic :='0'; -- skift af retning
		noedbrems				:	in 	std_logic:='1'; -- hvis ndbremse
		Accelerator_speed 	: 	IN 	std_logic_vector(7 downto 0); -- Accerlator speed
		ABS_speed            : 	IN 	std_logic_vector(7 downto 0);
		oensketHastighed		:	in		std_logic_vector(7 downto 0)
    );
    end component;

begin

    -- Hastighedsbestemmer
    ent_hastighedsbestemmerTop: hastighedsbestemmerTop port map (
        clk => clk,
        sensor_front => rotsens_front,
        sensor_back => rotsens_rear,
        speed_front => front_speed_sig,
        speed_back => rear_speed_sig
    );

    rear_speed <= rear_speed_sig;

    -- ABS bremse
    ent_absBrems: absBrems port map ( 
        clk => clk,
        frontSpeed => front_speed_sig, 
        rearSpeed => rear_speed_sig,
        engPower => brake_power_sig
    );

    -- Accelerator
    ent_Accelerator: Accelerator port map (
        clk => clk,
        forhjulHastighed => rear_speed_sig,
        oensketHastighed => test_speed,
        motorkraft => front_power_sig
    );

    -- Motorbeskyttelse
    ent_Motorbeskyttelse: Motorbeskyttelse port map (
        clk => clk,
        PWM => motor_PWM,
        retning => motor_select,
        noedbrems => emerg_stop,
        Accelerator_speed => front_power_sig,
        ABS_speed => brake_power_sig,
        oensketHastighed => test_speed
    );

end motorstyringBehavioral;