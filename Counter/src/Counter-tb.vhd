--------------------------------------------------------------------------------
-- Company: 
-- Engineer:       Salaheddin Hetalani
--
-- Create Date:    17:19:04 05/04/2017
-- Design Name:   
-- Module Name:    Counter-tb
-- Project Name:   Counter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Counter_tb IS
END Counter_tb;
 
ARCHITECTURE behavior OF Counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         enable : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   -- Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';

 	-- Outputs
   signal count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   
	constant clk_period : time := 1 ns;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter PORT MAP (
          clk => clk,
          reset => reset,
          enable => enable,
          count => count
        );

   -- Clock process definitions
   clk_process :process
   begin
		wait for 1 ns; clk  <= not clk;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 5 ns; reset  <= '1';
      wait for 4 ns; reset  <= '0';
      wait for 4 ns; enable <= '1';
      wait; 

   end process;

END;
