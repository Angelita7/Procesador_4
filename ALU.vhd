----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:23 10/08/2017 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

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
           Salida_ALU : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin

process (Contenido_r1,Contenido_r2,Salida_UC)

	begin
	
		case (Salida_UC) is
		
		   when "000000" => Salida_ALU <= Contenido_r1 + Contenido_r2;--ADD
			when "000001" => Salida_ALU <= Contenido_r1 and Contenido_r2;--SUB
			when "000010" => Salida_ALU <= Contenido_r1 or Contenido_r2;--OR
			when "000011" => Salida_ALU <= Contenido_r1 xor Contenido_r2;--XOR
			when "000100" => Salida_ALU <= Contenido_r1 - Contenido_r2;--SUB
			when "000101" => Salida_ALU <= Contenido_r1 nand Contenido_r2;--ANDN
			when "000110" => Salida_ALU <= Contenido_r1 nor Contenido_r2;--ORN
			when "000111" => Salida_ALU <= Contenido_r1 xnor Contenido_r2;--XORN
			when others => 
				Salida_ALU <= (others=>'0');
				
		end case;
		
  end process;

end Behavioral;

