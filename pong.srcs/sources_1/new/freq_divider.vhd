library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freq_divider is
    generic (
        CLK_FREQ_HZ  : integer := 25_000_000;
        TICK_FREQ_HZ : integer := 60
    );
    port (
        clk_in   : in  std_logic;
        reset    : in  std_logic;
        tick_out : out std_logic
    );
end entity;

architecture rtl of freq_divider is
    constant MAX_COUNT : integer := CLK_FREQ_HZ / TICK_FREQ_HZ - 1;
    signal counter : integer range 0 to MAX_COUNT := 0;
begin

    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if reset = '1' then
                counter  <= 0;
                tick_out <= '0';
            else
                if counter = MAX_COUNT then
                    counter  <= 0;
                    tick_out <= '1';
                else
                    counter  <= counter + 1;
                    tick_out <= '0';
                end if;
            end if;
        end if;
    end process;

end rtl;