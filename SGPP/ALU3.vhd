 library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_unsigned.ALL;

use IEEE.NUMERIC_STD.ALL;

entity ALU3 is

port(   Clk : in std_logic;

    	A,B : in unsigned(7 downto 0);

   	   student_id : in unsigned(3 downto 0);

    	Op : in unsigned(15 downto 0);

   	   Neg : out std_logic;

   	   yn : out unsigned(6 downto 0);

    	R1 : out unsigned(3 downto 0)

    	);

end ALU3;

architecture calculation3 of ALU3 is

--temporary signal declaration.

signal Reg1,Reg2,Result : unsigned(7 downto 0) := (others => '0');

signal Reg4 : unsigned(0 to 7);

begin

Reg1 <= A;

Reg2 <= B;

process(Clk, Op)

begin

	if(rising_edge(Clk)) then

   		 neg <= '0';

    	case Op is

        	when "0000000000000001" =>

            	Result <= Reg1 + Reg2;

        	when "0000000000000010" =>

   				 Result <= Reg1 - Reg2;

           	if Reg1 < Reg2 then

   					 neg <= '1';

   				 end if;

        	when "0000000000000100" =>

            	Result <= NOT Reg1;

        	when "0000000000001000" =>

            	Result <= NOT (Reg1 AND Reg2);

        	when "0000000000010000" =>

            	Result <= NOT (Reg1 OR Reg2);         	 

        	when "0000000000100000" =>

            	Result <= (Reg1 AND Reg2);

        	when "0000000001000000" =>

            	Result <= (Reg1 XOR Reg2);  

        	when "0000000010000000" =>

            	Result <= Reg1 OR Reg2;  

   			 when "0000000100000000" =>

            	Result <= NOT (Reg1 XOR Reg2);

        	when others =>

            	NULL;

    	end case;

   	 

   		 if (Reg1(3) & Reg1(2) & Reg1(1) & Reg1(0)) <= student_id or (Reg1(7) & Reg1(6) & Reg1(5) & Reg1(4)) <= student_id then

   			 yn <=  "0111011";

   		 else

   			 yn <=  "0010101";

   		 end if;

   		 

	end if;

   

end process;   

R1 <= Result( 3 downto 0);


end calculation3;