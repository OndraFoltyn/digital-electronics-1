------------------------------------------------------------
--
-- Example of 2-bit binary comparator using the when/else
-- assignments.
-- EDA Playground
--
-- Copyright (c) 2020-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 2-bit binary comparator
------------------------------------------------------------
entity multiplexer is
    port(
		a_i				: in  std_logic_vector(3 - 1 downto 0);
		b_i				: in  std_logic_vector(3 - 1 downto 0);
		c_i				: in  std_logic_vector(3 - 1 downto 0);
		d_i				: in  std_logic_vector(3 - 1 downto 0);
		sel_i			: in  std_logic_vector(3 - 1 downto 0);
		
        -- COMPLETE THE ENTITY DECLARATION
        f_o             : out std_logic_vector
);
end entity multiplexer;

------------------------------------------------------------
-- Architecture body for 2-bit binary comparator
------------------------------------------------------------
architecture Behavioral of multiplexer is
begin

f_o <= a_i when (sel_i = "010") else  
       b_i when (sel_i = "111") else
       c_i when (sel_i = "101") else
       d_i;

end architecture Behavioral;
