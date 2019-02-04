LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY MOD_Segment IS
PORT ( bcd: IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
        leds: out STD_LOGIC_VECTOR(0 TO 6));
		 
END MOD_Segment ;

ARCHITECTURE Behavior OF MOD_Segment IS
BEGIN
PROCESS (bcd)
BEGIN
CASE bcd IS --            abcdefg
WHEN "0000" => leds <= not "0100101" ;
WHEN "0001" => leds <= not "0101111" ;
end case;

END PROCESS ;
END Behavior ;