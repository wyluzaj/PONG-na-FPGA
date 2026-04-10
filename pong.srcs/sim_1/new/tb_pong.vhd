library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pong is
end entity;

architecture sim of tb_pong is

    signal Clk       : std_logic := '0';
    signal ResetN    : std_logic := '0';

    signal PosX      : std_logic_vector(9 downto 0);
    signal PosY      : std_logic_vector(9 downto 0);
    signal DE        : std_logic;
    signal HSync     : std_logic;
    signal VSync     : std_logic;

    signal R         : std_logic_vector(7 downto 0);
    signal G         : std_logic_vector(7 downto 0);
    signal B         : std_logic_vector(7 downto 0);

    signal MoveLeft  : std_logic := '0';
    signal MoveRight : std_logic := '0';

begin

    -- 25 MHz => okres 40 ns
    Clk <= not Clk after 20 ns;

    process
    begin
        ResetN <= '0';
        wait for 200 ns;
        ResetN <= '1';
        wait;
    end process;

    process
    begin
        wait until ResetN = '1';

        wait for 20 ms;
        MoveRight <= '1';
        wait for 20 ms;
        MoveRight <= '0';

        wait for 20 ms;
        MoveLeft <= '1';
        wait for 20 ms;
        MoveLeft <= '0';

        wait for 20 ms;
        MoveRight <= '1';
        wait for 10 ms;
        MoveRight <= '0';

        wait for 40 ms;
        MoveLeft <= '1';
        wait for 10 ms;
        MoveLeft <= '0';

        wait;
    end process;

    uut_timing : entity work.VideoTiming
        port map (
            Clk => Clk,
            ResetN => ResetN,
            DE     => DE,
            HSync  => HSync,
            VSync  => VSync,
            PosX   => PosX,
            PosY   => PosY
        );

    uut_img : entity work.PongImgGen
        port map (
            Clk       => Clk,
            ResetN    => ResetN,
            MoveLeft  => MoveLeft,
            MoveRight => MoveRight,
            DE        => DE,
            PosX      => PosX,
            PosY      => PosY,
            R         => R,
            G         => G,
            B         => B
        );

end architecture;