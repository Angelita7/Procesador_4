--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:52:51 10/23/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura2017/Procesador_4/Procesador_4/ALU_TestBench.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_TestBench IS
END ALU_TestBench;
 
ARCHITECTURE behavior OF ALU_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Contenido_r1 : IN  std_logic_vector(31 downto 0);
         Contenido_r2 : IN  std_logic_vector(31 downto 0);
         Salida_UC : IN  std_logic_vector(5 downto 0);
         Salida_ALU : OUT  std_logic_vector(31 downto 0);
         carry : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Contenido_r1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Contenido_r2 : std_logic_vector(31 downto 0) := (others => '0');
   signal Salida_UC : std_logic_vector(5 downto 0) := (others => '0');
   signal carry : std_logic := '0';

 	--Outputs
   signal Salida_ALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Contenido_r1 => Contenido_r1,
          Contenido_r2 => Contenido_r2,
          Salida_UC => Salida_UC,
          Salida_ALU => Salida_ALU,
          carry => carry
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--<clock> <= '0';
	--wait for <clock>_period/2;
	--<clock> <= '1';
	--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      Contenido_r1 <= x"00000004";
		Contenido_r2 <= x"00000002";
		Salida_UC <= "000010"; 
		

      wait;
   end process;

END;
