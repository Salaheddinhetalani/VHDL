----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 	   Salaheddin Hetalani
-- 
-- Create Date:    17:11:56 05/04/2017 
-- Design Name: 
-- Module Name:    Counter
-- Project Name:   Counter
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
use ieee.std_logic_unsigned.all;


entity Counter is
port(  clk:  in std_logic;
     reset:  in std_logic;
     enable:  in std_logic;
     count:  out std_logic_vector(3 downto 0)
  );
end Counter;

architecture Behavioral of Counter is

signal pre_count: std_logic_vector(3 downto 0);

   begin
     process(clk, enable, reset)
      begin
        if reset = '1' then
          pre_count <= "0000";
        elsif (clk='1' and clk'event) then
          if enable = '1' then
            pre_count <= pre_count + "1";
          end if;
        end if;
      end process;  
      count <= pre_count;
		
end Behavioral;

