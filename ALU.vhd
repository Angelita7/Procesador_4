----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:49:08 10/23/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Contenido_r1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Contenido_r2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Salida_UC : in  STD_LOGIC_VECTOR (5 downto 0);
           Salida_ALU : out  STD_LOGIC_VECTOR (31 downto 0);
           carry : in  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin

process (Contenido_r1,Contenido_r2,Salida_UC,carry)

	begin
	
		case (Salida_UC) is
		
		when "000000" => Salida_ALU <= Contenido_r1 + Contenido_r2;--Add
		when "010000" => Salida_ALU <= Contenido_r1 + Contenido_r2;--Addcc
		when "001000" => Salida_ALU <= Contenido_r1 + Contenido_r2 + carry;--Addx
		when "011000" => Salida_ALU<= Contenido_r1 + Contenido_r2 + carry;--Addxc
			
		
		when "000100" => Salida_ALU <= Contenido_r1 - Contenido_r2;--Sub
		when "010100" => Salida_ALU <= Contenido_r1 - Contenido_r2;--Subcc
		when "001100" => Salida_ALU <= Contenido_r1 - Contenido_r2 - carry;--Subx
		when "011100" => Salida_ALU<= Contenido_r1 - Contenido_r1 - carry;--Subxcc
			
			
		when "000001" => Salida_ALU <= Contenido_r1 and Contenido_r2;--And
		when "010001" => Salida_ALU <= Contenido_r1 and Contenido_r2;--Andcc
		when "000101" => Salida_ALU <= Contenido_r1 nand Contenido_r2;--AndN
		when "010101" => Salida_ALU <= Contenido_r1 nand Contenido_r2;--AndNcc
			
		when "000010" => Salida_ALU <= Contenido_r1 or Contenido_r2;--Or
		when "010010" => Salida_ALU <= Contenido_r1 or Contenido_r2;--Orcc
			
		when "000110" => Salida_ALU <= Contenido_r1 nor Contenido_r2;--OrN
		when "010110" => Salida_ALU <= Contenido_r1 nor Contenido_r2;--OrNcc
			
		when "000011" => Salida_ALU <= Contenido_r1 xor Contenido_r2;--Xor
		when "010011" => Salida_ALU <= Contenido_r1 xor Contenido_r2;--Xorcc
			
		when "000111" => Salida_ALU <= Contenido_r1 xnor Contenido_r2;--Xnor
		when "010111" => Salida_ALU <= Contenido_r1 xnor Contenido_r2;--Xnorcc	
				
		when others =>		
		 Salida_ALU <= (others=>'0');
		 
		 
		end case;
			end process;


end Behavioral;




