library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_freq_divider is
end entity;

architecture test of tb_freq_divider is
    signal clk_in   : std_logic := '0';
    signal reset    : std_logic := '1';
    signal tick_out : std_logic;

    constant CLK_PERIOD : time := 10 ns;
begin

    uut : entity work.freq_divider
        generic map (
            CLK_FREQ_HZ  => 1000,
            TICK_FREQ_HZ => 100
        )
        port map (
            clk_in   => clk_in,
            reset    => reset,
            tick_out => tick_out
        );

    clk_gen : process
    begin
        while true loop
            clk_in <= '0';
            wait for CLK_PERIOD / 2;
            clk_in <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    stimulus : process
    begin
        wait for 100 ns;
        reset <= '0';

        wait for 2 us;

        reset <= '1';
        wait for 100 ns;
        reset <= '0';

        wait for 2 us;

        wait;
    end process;

end architecture;