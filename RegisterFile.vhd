--Register File
library work;
use work.all;
library ieee;
use ieee.std_logic_1164.all;

use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RegisterFile is
	port (
		clk, write_enable        : in std_logic;
		addr1, addr2, addr3    : in std_logic_vector(2 downto 0);
		data_write3            : in std_logic_vector(15 downto 0);
		data_read1, data_read2 : out std_logic_vector(15 downto 0);
		r0, r1, r2, r3,
		r4, r5, r6, r7 : out std_logic_vector(15 downto 0)
	);
end entity;

architecture arch of RegisterFile is

	type RegisterArray is array(7 downto 0) of std_logic_vector(15 downto 0);
	signal registers : RegisterArray := (others => x"0000");

begin
	data_read1 <= registers(conv_integer(addr1));
	data_read2 <= registers(conv_integer(addr2));

	proc_write : process (write_enable, data_write3, addr3, clk)
	begin
		if (write_enable = '1') then
			if (rising_edge(clk)) then
				registers(conv_integer(addr3)) <= data_write3;
			end if;
		end if;
	end process;

	r0 <= registers(0);
	r1 <= registers(1);
	r2 <= registers(2);
	r3 <= registers(3);
	r4 <= registers(4);
	r5 <= registers(5);
	r6 <= registers(6);
	r7 <= registers(7);

end architecture;
