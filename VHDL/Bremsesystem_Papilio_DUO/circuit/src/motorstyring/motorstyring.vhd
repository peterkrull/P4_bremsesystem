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

        -- rotationssensorer
        rotsens_front : in std_logic; -- Sensor 1
        rotsens_rear : in std_logic; -- Sensor 2

        -- Noedstopsignal
        emerg_stop : in std_logic;
        
        -- Teststyring
        test_speed(7 downto 0) : in std_logic_vector(7 downto 0); -- speed Pins

        -- Hjulhastighed
        rear_speed : out std_logic_vector (7 downto 0 );
        --frontSpeed : out std_logic_vector (7 downto 0 );

        -- motor PWM output
        motor_PWM : out std_logic;   -- PWM output (front)
        motor_select : out std_logic;   -- PWM output (reverse)
	);
end motorstyring;

-- here all submodules will be instantiated
architecture motorstyringBehavioral of motorstyring is

    -- Internal signals

    signal front_speed_sig : std_logic_vector (7 downto 0);
    signal front_power_sig : std_logic_vector (7 downto 0);

    signal rear_speed_sig : std_logic_vector (7 downto 0);
    signal brake_power_sig : std_logic_vector (7 downto 0);

    -- All components are mapped to each other

    entity work.hastighedsbestemmer port map (
        rotsens_front => sensor_front,
        rotsens_rear => sensor_back,
        front_speed_sig => speed_front,
        rear_speed_sig => speed_back
    );

    rear_speed <= rear_speed_sig;

    entity work.absBremse port map ( 
        front_speed_sig => forhjulHastighed, 
        rear_speed_sig => baghjulHastighed,
        brake_power_sig => motorkraft,
        emerg_stop => nordbrems
    );

    entity work.Accelerator port map (
        front_speed_sig => ForhjulHastighed,
        test_speed => oensketHastighed,
        front_power_sig => motorkraft
    );

    entity work.Motorbeskyttelse port map (
        motor_PWM => PWM,
        motor_select => retning,
        emerg_stop => noedbrems,
        front_power_sig => Accelerator_speed,
        brake_power_sig => ABS_speed,
        test_speed => oensketHastighed
    );

end motorstyringBehavioral;