-- Moduł: pong_core
-- Opis :
--   Główna logika gry Pong.
--   Odpowiada za ruch piłki, sterowanie paletką oraz detekcję kolizji.

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pong_core is
    generic (
        FIELD_W  : integer := 64;
        FIELD_H  : integer := 32;
        PADDLE_W : integer := 12;
        PADDLE_Y : integer := 30
    );
    port (
        clk        : in  std_logic;
        reset      : in  std_logic;--reset gry
        tick       : in  std_logic;
        move_left  : in  std_logic;
        move_right : in  std_logic;

        ball_x     : out integer range 0 to FIELD_W-1;
        ball_y     : out integer range 0 to FIELD_H-1;
        paddle_x   : out integer range 0 to FIELD_W-1
    );
end pong_core;

architecture Behavioral of pong_core is
    signal ball_x_reg   : integer range 0 to FIELD_W-1 := FIELD_W/2;
    signal ball_y_reg   : integer range 0 to FIELD_H-1 := FIELD_H/2;
    signal paddle_x_reg : integer range 0 to FIELD_W-1 := (FIELD_W - PADDLE_W)/2;

    signal dx : integer range -1 to 1 := 1;
    signal dy : integer range -1 to 1 := -1;
begin
-- wystawienie wartości z rejestrów wewnętrznych na porty wyjściowe modułu
    ball_x   <= ball_x_reg;
    ball_y   <= ball_y_reg;
    paddle_x <= paddle_x_reg;

    process(clk)
        variable next_x : integer;
        variable next_y : integer;
        variable new_dx : integer range -1 to 1;
        variable new_dy : integer range -1 to 1;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                ball_x_reg   <= FIELD_W/2;
                ball_y_reg   <= FIELD_H/2;
                paddle_x_reg <= (FIELD_W - PADDLE_W)/2;
                -- początkowo ruch piłki prawo i do góry
                dx <= 1;
                dy <= -1;

            elsif tick = '1' then

                if move_left = '1' and paddle_x_reg > 0 then
                    paddle_x_reg <= paddle_x_reg - 1;
                elsif move_right = '1' and paddle_x_reg < FIELD_W - PADDLE_W then
                    paddle_x_reg <= paddle_x_reg + 1;
                end if;

                next_x := ball_x_reg + dx;-- wyznaczenie kolejnej pozycji piłki w osi X
                next_y := ball_y_reg + dy;-- wyznaczenie kolejnej pozycji piłki w osi Y
                new_dx := dx;-- zachowaj kierunek X
                new_dy := dy;-- zachowaj kierunek Y

                if next_x <= 0 then --kolizja z lewą ścianą
                    new_dx := 1;--dalszy ruch w prawo
                elsif next_x >= FIELD_W - 1 then--kolizja z prawą ścianą
                    new_dx := -1; -- dalszy ruch w lewo
                end if;

                if next_y <= 0 then -- kolizja z górną ścianą
                    new_dy := 1; --  dalszy ruch w dół
                end if;
                -- sprawdzenie, czy piłka dochodzi do linii paletki podczas ruchu w dół
                if next_y = PADDLE_Y and new_dy = 1 then  
                -- sprawdzenie, czy piłka trafia w obszar paletki
                    if next_x >= paddle_x_reg and next_x < paddle_x_reg + PADDLE_W then
                        new_dy := -1; -- odbicie od paletki: ruch w górę
                    end if;
                end if;
                -- sprawdzenie, czy piłka spadła poniżej obszaru gry
                if next_y >= FIELD_H - 1 then
                    ball_x_reg <= FIELD_W/2; -- restart pozycji piłki w osi X
                    ball_y_reg <= FIELD_H/2; -- restart pozycji piłki w osi Y
                    dx <= 1; -- przywrócenie początkowego kierunku X
                    dy <= -1;
                else
                -- zapis nowej pozycji piłki
                    ball_x_reg <= ball_x_reg + new_dx;
                    ball_y_reg <= ball_y_reg + new_dy;
                    dx <= new_dx;
                    dy <= new_dy;
                end if;
            end if;
        end if;
    end process;

end Behavioral;