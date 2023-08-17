--ALU
library work;
use work.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
  port(op: in std_logic;
      a: in std_logic_vector(15 downto 0);
      b: in std_logic_vector(15 downto 0);
      carry: out std_logic;
      zero: out std_logic;
      c: out std_logic_vector(15 downto 0));
end entity;

architecture alu_arc of ALU is

begin

  process(op, a, b)
  variable var_a, var_b : std_logic_vector(16 downto 0);
  variable var_c : std_logic_vector(16 downto 0);
  
	 begin
    
    var_a(15 downto 0) := a;
    var_a(16) := '0';
    var_b(15 downto 0) := b;
    var_b(16) := '0';

	 case (op) is
		when '0' =>
			var_c := std_logic_vector(unsigned(var_a) + unsigned(var_b));
		when '1' =>
			var_c(15 downto 0) := var_a(15 downto 0) nand var_b(15 downto 0);
			var_c(16) := '0';
		when others =>
			var_c(16 downto 0) := (others=>'0');
    end case;
    c <= var_c(15 downto 0);
    carry <= var_c(16);
    zero <= not (var_c(15) or var_c(14) or var_c(13) or var_c(12) or var_c(11) or var_c(10) or var_c(9) or var_c(8) or var_c(7) or var_c(6) or var_c(5) or var_c(4) or var_c(3) or var_c(2) or var_c(1) or var_c(0));
  end process;
end architecture alu_arc;
