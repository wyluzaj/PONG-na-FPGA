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
        reset      : in  std_logic; -- reset gry
        tick       : in  std_logic; -- tempo animacji piłki
        move_left  : in  std_logic; -- sygnał z enkodera
        move_right : in  std_logic; -- sygnał z enkodera

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
    -- wystawienie wartości na porty wyjściowe
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
                dx <= 1;
                dy <= -1;
            else
                -- 1. STEROWANIE PALETKĄ (sprawdzane w każdym cyklu zegara, poza blokiem tick)
                -- Dzięki temu nie przegapimy krótkich impulsów z enkodera
                if move_left = '1' and paddle_x_reg > 0 then
                    paddle_x_reg <= paddle_x_reg - 1;
                elsif move_right = '1' and paddle_x_reg < FIELD_W - PADDLE_W then
                    paddle_x_reg <= paddle_x_reg + 1;
                end if;

                -- 2. LOGIKA PIŁKI (wykonywana tylko gdy tick = '1')
                if tick = '1' then
                    next_x := ball_x_reg + dx;
                    next_y := ball_y_reg + dy;
                    new_dx := dx;
                    new_dy := dy;

                    -- Kolizje ze ścianami bocznymi
                    if next_x <= 0 then 
                        new_dx := 1;
                    elsif next_x >= FIELD_W - 1 then
                        new_dx := -1;
                    end if;

                    -- Kolizja z górną ścianą
                    if next_y <= 0 then 
                        new_dy := 1;
                    end if;

                    -- Kolizja z paletką
                    if next_y = PADDLE_Y and dy = 1 then  
                        if next_x >= paddle_x_reg and next_x < paddle_x_reg + PADDLE_W then
                            new_dy := -1;
                        end if;
                    end if;

                    -- Sprawdzenie wypadnięcia piłki (dół ekranu)
                    if next_y >= FIELD_H - 1 then
                        ball_x_reg <= FIELD_W/2;
                        ball_y_reg <= FIELD_H/2;
                        dx <= 1;
                        dy <= -1;
                    else
                        -- Aktualizacja stanu piłki
                        ball_x_reg <= ball_x_reg + new_dx;
                        ball_y_reg <= ball_y_reg + new_dy;
                        dx <= new_dx;
                        dy <= new_dy;
                    end if;
                end if; -- koniec bloku tick
            end if; -- koniec bloku reset
        end if; -- koniec rising_edge
    end process;

end Behavioral;