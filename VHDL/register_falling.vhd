library ieee;
use ieee.std_logic_1164.all;

entity register_falling is
    port ( 
      clk : in  std_logic;
      rst : in  std_logic;
      en  : in  std_logic;
      d   : in  std_logic_vector(15 downto 0);
      q   : out std_logic_vector(15 downto 0)
    );
end entity register_falling;

architecture a_register_falling of register_falling is
  begin
    process(clk , rst , en)
      begin
        if(rst = '1') then
           q <= (others => '0');
        elsif (clk'event and clk = '0') then -- falling edge
          if en = '1' then     
            q <= d;
          end if;
        end if;
    end process;
end a_register_falling;