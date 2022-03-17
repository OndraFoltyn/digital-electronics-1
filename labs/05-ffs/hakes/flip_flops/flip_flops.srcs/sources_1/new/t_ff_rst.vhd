----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2022 01:37:51 PM
-- Design Name: 
-- Module Name: t_ff_rst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity t_ff_rst is
    Port ( clk   : in STD_LOGIC;
           rst   : in STD_LOGIC;
           t     : in STD_LOGIC;
           q     : out STD_LOGIC;
           q_bar : out STD_LOGIC
           );
end t_ff_rst;

architecture Behavioral of t_ff_rst is
    signal q_n    : std_logic;
begin
    --------------------------------------------------------
    -- p_t_ff_rst:
    -- T type flip-flop with a high-active sync reset,
    -- rising-edge clk.
    -- q(n+1) = t./q(n) + /t.q(n)
    --------------------------------------------------------
    p_t_ff_rst : process(clk) --sensitivity list (v zavorce)
    begin
        if rising_edge(clk) then  -- Synchronous process
            if (rst = '1') then-- USE HIGH-ACTIVE RESET HERE
                q     <= '0';
                q_bar <= '1';
                q_n   <= '0';
            else
                q_n   <= (t and (not q_n)) or ((not t) and q_n);
                q     <= q_n;
                q_bar <= not q_n;
                
                --q_1 <= (t and (not q_n)) or ((not t) and q_n);
                --q_1_bar <= not((t and (not q_n)) or ((not t) and q_n));
            end if; 
        end if;
    end process p_t_ff_rst;
end architecture Behavioral;
