library ieee;
use ieee.std_logic_1164.all;

entity ResetPhysical is
    port (
        ClkLocked : in  std_logic;
        ResetN      : out std_logic
    );
end entity;

architecture rtl of ResetPhysical is
begin
    ResetN <= ClkLocked;
end architecture;