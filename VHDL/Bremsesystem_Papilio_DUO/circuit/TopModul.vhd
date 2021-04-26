-- Dette modul skal sammenbinde alle de resterende blokke

-- external ports to be used by hardware
entity bremsesystemTopModul is
	port(

        -- rotationssensorer
        rotsens1 : in std_logic; -- Sensor 1
        rotsens2 : in std_logic; -- Sensor 2

        -- Afstandssensor
		distSCL	:	inout	std_logic; -- SCL
        distSDA	:	inout	std_logic; -- SDA
        
        -- Teststyring
        speedPin(7 downto 0) : out std_logic_vector(7 downto 0); -- speed Pins

        -- motor PWM output
        motorPwm : out std_logic;   -- PWM output
        motorDir : out std_logic;   -- Motor direction

        -- Alarm bit
        alarmBit : out std_logic    -- alarm pin

	);
end bremsesystemTopModul;

-- here all submodules will be instantiated
architecture topmodule of bremsesystemTopModul is
    --signal alarm : std_logic ;
    signal emergStop: std_logic ; 
    --signal rotSens : std_logic_vector(1 downto 0) ;
    signal wantedSpeed : unsigned (7 downto 0);
    signal 




end topmodule;