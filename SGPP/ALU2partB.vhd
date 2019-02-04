library ieee;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.numeric_std.all ;
entity ALU2partB is
port (A, B : in unsigned(7 downto 0) ;
        OP : in unsigned(15 downto 0) ;
      clock : in std_logic ;
   R1 : out unsigned(3 downto 0 )  ;
    R2 : out unsigned(3 downto 0 )  ;
    NEG : out std_logic ) ;
end ALU2partB ;
architecture calculation of ALU2partB is
 signal Reg1, Reg2, Result : unsigned(7 downto 0 ) := (others => '0') ;
 signal Reg4 : unsigned ( 0 to 7 ) ;
 begin
  Reg1 <= A ;
  Reg2 <= B ;
 
 process (clock, OP)
 begin
  if(rising_edge(clock)) then
  case OP is
     when "1000000000000000" =>
	  Result(0) <=  (Reg1(4));
		Result(1) <=  (Reg1(5));	
		Result(2) <=  (Reg1(6));
	   Result(3) <=  (Reg1(7));
		Result(4) <= (Reg1(0));
		Result(5) <= (Reg1(1));	
		Result(6) <= (Reg1(2));
	   Result(7) <= (Reg1(3)); 
		Neg <= '0'; 
	 		
      when "0100000000000000" =>
		NEG <= '0';
      Result <= ( Reg1 or Reg2 ) ;
      when "0010000000000000" =>
	Result <= ((Reg2 + 5)) ;
		Neg <= '0'; 
      when "0001000000000000" =>
     NEG <= '0';
      Result <= (not Reg1) ;
     
      when "0000100000000000" => 
		Neg <= '0';
		Result(0) <= Reg1(7);
		Result(1) <= Reg1(6);
		Result(2) <=  Reg1(5);
		Result(3) <=  Reg1(4);
		Result(4) <=  Reg1(3);
		Result(5) <=  Reg1(2);	
		Result(6) <= Reg1(1);
	   Result(7) <=  Reg1(0); 		
     
      when "0000010000000000" =>
 			IF Reg1 > Reg2 THEN
			Result <= Reg1; 
			ELSIF Reg2 > Reg1 THEN
			Result <= Reg2; 
			end if; 
			Neg <= '0'; 
   
      when "0000001000000000" =>
    	if (Reg1 > Reg2) then
      Result <= ( Reg1 - Reg2 ) ;
      else
      Result <= ( Reg2 - Reg1 )  ;
      NEG <= '1';	
		 end if ;
     
      when "0000000100000000" =>
		Result <=  ((Reg1) XNOR (Reg2) );
		Neg <= '0'; 
     
      when "0000000010000000" =>
		Result <= Reg2 ROL 3; 
		Neg <= '0'; 
     
      when others =>
     
end case ;
end if ;
end process ;
    R1 <= Result(3 downto 0 ) ;
    R2 <= Result(7 downto 4 ) ;
end calculation ;    