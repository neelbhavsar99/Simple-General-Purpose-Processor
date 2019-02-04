Library IEEE; 
USE ieee.std_logic_1164.all ; 
USE ieee.std_logic_unsigned.all; 
USE ieee.numeric_std.all; 

ENTITY ALU2 IS 
PORT (clk: IN std_logic; 
		A, B: IN unsigned (7 DOWNTO 0); 
		student_id: IN unsigned (3 DOWNTO 0); 
		OP: IN unsigned (15 DOWNTO 0);
		Neg: OUT std_logic; 
		R1: OUT unsigned (3 DOWNTO 0); 
		R2: OUT unsigned (3 DOWNTO 0));
END ALU2; 

ARCHITECTURE calculation OF ALU2 IS 
	signal Reg1, Reg2, Result: UNSIGNED (7 DOWNTO 0):= (others => '0');
	signal Reg4: UNSIGNED(0 TO 7); 

BEGIN 
Reg1 <= A; 
Reg2 <= B; 
Process (clk, OP)
BEGIN 
	IF (RISING_EDGE(clk))THEN 
	CASE OP IS 
		WHEN "0000000000000001" => 
		Result(0) <= Reg1(7);
		Result(1) <= Reg1(6);
		Result(2) <=  Reg1(5);
		Result(3) <=  Reg1(4);
		Result(4) <=  Reg1(3);
		Result(5) <=  Reg1(2);	
		Result(6) <= Reg1(1);
	   Result(7) <=  Reg1(0); 		
		Neg <= '0'; 	
		
		WHEN "0000000000000010" => 
		Result <= (Reg1 sll 4) + "11110000";
		Neg <= '0'; 
		
		WHEN "0000000000000100" =>
		Result(4) <=  NOT (Reg2(4));
		Result(5) <=  NOT (Reg2(5));	
		Result(6) <= NOT (Reg2(6));
	   Result(7) <=  NOT (Reg2(7)); 		
		Neg <= '0'; 
		
		WHEN "0000000000001000" =>
			IF Reg1 < Reg2 THEN
			Result <= Reg1; 
			ELSIF Reg2 < Reg1 THEN
			Result <= Reg2; 
			end if; 
			Neg <= '0'; 
		
		WHEN "0000000000010000" =>  Result <= 
		(((Reg1)+ (Reg2) ) + "00000100"); 
		Neg <= '0'; 
		
		WHEN "0000000000100000" =>
		Result <= ((Reg1 + "00000011")) ;
		Neg <= '0'; 
		
		WHEN "0000000001000000" =>
		Result<=Reg1;
		Result(0) <=  Reg2(0);
		Result(2) <=  Reg2(2);	
		Result(4) <= Reg2(4);
	   Result(6) <=  Reg2(6); 		
		
		
	-- replace the event bits of a with event bits of b 
	
		WHEN "0000000010000000" => 
		Result <=  ((Reg1) XNOR (Reg2) );
		Neg <= '0'; 
		
		WHEN "0000000100000000" => 
		Result <= Reg2 ROR 3; 
		Neg <= '0'; 
		
		WHEN OTHERS =>  Result <="00000000"; 
END CASE; 
END IF; 

END PROCESS; 
R1 <= Result (3 DOWNTO 0); 
R2 <= Result (7 DOWNTO 4); 

END calculation;