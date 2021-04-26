-- Dette modul skal sammenbinde alle de resterende blokke

-- external ports to be used by hardware
entity bremsesystemTopModul is
	port(

        -- rotationssensorer
        rotsens_front : in std_logic; -- Sensor 1
        rotsens_rear : in std_logic; -- Sensor 2

        -- Afstandssensor
		dist_SCL	:	inout	std_logic; -- SCL
        dist_SDA	:	inout	std_logic; -- SDA
        
        -- Teststyring
        test_speed(7 downto 0) : out std_logic_vector(7 downto 0); -- speed Pins

        -- motor PWM output
        motor_PWM : out std_logic;   -- PWM output
        motor_select : out std_logic;   -- Motor direction

        -- Alarm bit
        alarm_bit : out std_logic    -- alarm pin

	);
end bremsesystemTopModul;

-- here all submodules will be instantiated
architecture topmodule of bremsesystemTopModul is

    -- Internal signals
    signal emerg_stop: std_logic; 
    signal rear_speed : std_logic_vector(7 downto 0) ;

    -- Motorstyring
    entity work./src/motorstyring/motorstyring port map (
        rotsens_front => rotsens_front,
        rotsens_rear => rotsens_rear,
        emerg_stop => emerg_stop,
        test_speed => test_speed,
        rear_speed => rear_speed,
        motor_PWM => motor_PWM,
        motor_select => motor_select
    );
    
    -- Detektionssystem
    entity work./src/detektionssystem/detektionssystem port map (
        dist_SCL => x,
        dist_SDA => x,
        alarm_bit => x,
        rear_speed => x,
        emerg_stop => x
    );

end topmodule;