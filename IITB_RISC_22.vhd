-- Top Level Entity
library work;
use work.all;
library ieee;
use ieee.std_logic_1164.all;

entity IITB_RISC_22 is
	port (clk, rst : in std_logic;
		PC, IR : out std_logic_vector(15 downto 0);
		done : out std_logic;
		C, Z : out std_logic;
		reg0, reg1, reg2, reg3,
		reg4, reg5, reg6, reg7 : out std_logic_vector(15 downto 0));
end entity;

architecture struct of IITB_RISC_22 is

	component ALU is
		port (a, b : in std_logic_vector(15 downto 0);
			op : in std_logic;
			c : out std_logic_vector(15 downto 0);
			zero, carry : out std_logic);
	end component;

	component RegisterFile is
		port (clk, write_enable : in std_logic;
			addr1, addr2, addr3 : in std_logic_vector(2 downto 0);
			data_write3 : in std_logic_vector(15 downto 0);
			data_read1, data_read2 : out std_logic_vector(15 downto 0);
			r0, r1, r2, r3,
			r4, r5, r6, r7 : out std_logic_vector(15 downto 0));
	end component;

	component memory is
		port (addr, data_write : in std_logic_vector(15 downto 0);
			clk, write_enable : in std_logic;
			data_read : out std_logic_vector(15 downto 0));
	end component;

	component Register_1 is
		port (clk, write_enable, data_write : in std_logic;
			data_read : out std_logic);
	end component;

	component Register_16 is
		port (data_write : in std_logic_vector(15 downto 0);
			clk, write_enable : in std_logic;
			data_read : out std_logic_vector(15 downto 0));
	end component;

	component FSM is
		port (IR, T1, T2, memory : in std_logic_vector(15 downto 0);
		rst, clk, init_carry, init_zero, PC : in std_logic;
		PC_Write, memory_Write, IR_Write, Reg_Write, T3_Write, T2_Write, T1_Write,
		M1, M20, M21, M30, M31, M4,
		M5, M60, M61, M7, M80, M81,
		M90, M91, M10, M110, M111,
		carry_write, zero_write, done, alu_control : out std_logic);
	end component;
	
	component iptoop is
   port (ip : in std_logic_vector (7 downto 0);
    op_addr : out std_logic_vector (2 downto 0);
    update : out std_logic_vector (7 downto 0));
    end component;

	signal PC_out, IR_out, ALU_a, ALU_b, ALU_c, T1_out, T2_out, T3_out, memory_out, D1_out, D2_out,
	M3_out, M4_out, M5_out, M6_out, M7_out, M8_out,M9_out, M10_out, M11_out, LS1, Imm9e16, SEImm9, SEImm6 : std_logic_vector(15 downto 0);
	signal reg0_out, reg1_out, reg2_out, reg3_out, reg4_out, reg5_out, reg6_out, reg7_out : std_logic_vector(15 downto 0);
	signal M1_out, M2_out, PE_out : std_logic_vector(2 downto 0);
   	signal ip : std_logic_vector(7 downto 0);
	signal PC_Write, memory_write, IR_Write, Reg_Write, T3_Write, T1_Write, T2_Write,
   	M1, M20, M21, M30, M31, M4,M5, M60, M61, M7, M80, M81,M90, M91, M10, M110, M111, PE,
	Z_out, C_out, WC, WZ, Cr_out, Zr_out, T3_zero, alu_control : std_logic;

	signal temp1 : std_logic_vector(9 downto 0);
	signal temp2 : std_logic_vector(6 downto 0);
	constant O16 : std_logic_vector(15 downto 0) := (0 => '1', others => '0');

begin
	PE_R : iptoop
   port map(
	  ip => IR_out(7 downto 0),
	 op_addr => PE_out, update => ip
   );
	
	PE <= not( ip(7) or ip(6) or ip(5) or ip(4) or ip(3) or ip(2) or ip(1) or ip(0));

	FSM_R : FSM
	port map(IR => IR_out, T1 => M6_out, T2 => M7_out, memory => memory_out,
		rst => rst, clk => clk, init_carry => Cr_out, init_zero => Zr_out, PC => PE,
		PC_Write => PC_Write, memory_write => memory_write, IR_Write => IR_Write, Reg_Write => Reg_Write, T3_Write => T3_Write, T2_Write => T2_Write, T1_Write => T1_Write,
		M1 => M1, M20 => M20, M21=>M21, M30 =>M30, M31 =>M31, M4 => M4, M5 => M5, M60 => M60, M61 => M61, M7 =>M7, 
		M80 => M80, M81 => M81, M90 => M90, M91 => M91, M10 => M10, M110 => M110, M111 => M111,
		carry_write => WC, zero_write => WZ, done => done, alu_control => alu_control);


	PC_R : Register_16
	port map(data_write => M4_out, clk => clk,
		write_enable => PC_Write,
		data_read => PC_out);

	memory_R : memory
	port map(addr => M11_out, data_write => M10_out, clk => clk,
		write_enable =>memory_write,
		data_read => memory_out);

	IR_R : Register_16
	port map(data_write => memory_out, clk => clk,
		write_enable => IR_Write,
		data_read => IR_out);
   LS1 <= D2_out(14 downto 0) & "0";
	Imm9e16 <= IR_out(8 downto 0) & "0000000";
	temp1 <= (others => IR_out(5));
	SEImm6 <= temp1 & IR_out(5 downto 0);
	temp2 <= (others => IR_out(8));
	SEImm9 <= temp2 & IR_out(8 downto 0);
	RF_R : RegisterFile
	port map(addr1 => M1_out, addr2 => IR_out(8 downto 6), addr3 => M2_out,
		data_write3 => M3_out, clk => clk,
		write_enable => Reg_Write,
		data_read1 => D1_out, data_read2 => D2_out,
		r0 => reg0_out, r1 => reg1_out, r2 => reg2_out, r3 => reg3_out,
		r4 => reg4_out, r5 => reg5_out, r6 => reg6_out, r7 => reg7_out);

	T1_R : Register_16
	port map(data_write => M5_out, clk => clk,
		write_enable => T1_Write,
		data_read => T1_out);

	T2_R : Register_16
	port map(data_write => M6_out, clk => clk,
		write_enable => T2_Write,
		data_read => T2_out);

	T3_R : Register_16
	port map(data_write => M7_out, clk => clk,
		write_enable => T3_Write,
		data_read => T3_out);

	C_R : Register_1
	port map(data_write => C_out,
		clk        => clk,
		write_enable => WC,
		data_read => Cr_out);

	Z_R : Register_1
	port map(data_write => Z_out,
		clk        => clk,
		write_enable => WZ,
		data_read => Zr_out);


	ALU_en : ALU
	port map(a => ALU_a, b => ALU_b,
		op => alu_control,
		c => ALU_c,
		zero => Z_out, carry => C_out);

	process(M1) is
	begin
	case M1 is
		when '0' =>
			M1_out <= IR_out(11 downto 9);
		when others =>
			M1_out <= PE_out;
   end case;
	
	case (M21) is
		when '0' =>
			case (M20) is
				when '0' =>
					M2_out <= IR_out(5 downto 3);
				when '1' =>
					M2_out <= IR_out(8 downto 6);
			end case;
			
		when '1' =>
			case (M20) is
				when '0' =>
					M2_out <= IR_out(11 downto 9);
				when '1' =>
					M2_out <= PE_out;
			end case;
			
    end case;

	 case (M31) is
		when '0' =>
			case (M30) is
				when '0' =>
					M3_out <= T3_out;
				when '1' =>
					M3_out <= Imm9e16;
			end case;
			
		when '1' =>
			case (M30) is
				when '0' =>
					M3_out <= T2_out;
				when '1' =>
					M3_out <= PC_out;
			end case;
			
    end case;

    case (M4) is
		when '0' =>
			M4_out <= Alu_c;
		when '1' =>
			M4_out <= T2_out;
    end case;
	 
	 case (M5) is
		when '0' =>
			M5_out <= D1_out;
		when '1' =>
			M5_out <= ALU_c;
    end case;

    case (M61) is
		when '0' =>
			case (M60) is
				when '0' =>
					M6_out <= D2_out;
				when '1' =>
					M6_out <= LS1;
			end case;
			
		when '1' =>
			case (M60) is
				when '0' =>
					M6_out <= D1_out;
				when '1' =>
					M6_out <= memory_out;
			end case;
			
    end case;

    case (M7) is
		when '0' =>
			M7_out <= memory_out;
		when '1' =>
			M7_out <= ALU_c;
    end case;
	
    case (M81) is
		when '0' =>
			case (M80) is
				when '0' =>
					M8_out <= T1_out;
				when '1' =>
					M8_out <= PC_out;
			end case;
			
		when '1' =>
			case (M80) is
				when '0' =>
					M8_out <= T2_out;
				when '1' =>
					M8_out <= D1_out;
			end case;
			
    end case;
	 
	  case (M91) is
		when '0' =>
			case (M90) is
				when '0' =>
					ALU_b <= T2_out;
				when '1' =>
					ALU_b <= O16;
			end case;
			
		when '1' =>
			case (M90) is
				when '0' =>
					ALU_b <= SEImm6;
				when '1' =>
					ALU_b <= SEImm9;
			end case;
			
    end case;

	 case (M10) is
			when '0' =>
				ALU_a <= T1_out;
			when '1' =>
				ALU_a <= T2_out;
	end case;

	
	case (M111) is
		when '0' =>
			case (M110) is
				when '0' =>
					M11_out <= PC_out;
				when '1' =>
					M11_out <= T3_out;
			end case;
			
		when '1' =>
			case (M110) is
				when '0' =>
					M11_out <= ALU_c;
				when '1' =>
					M11_out <= T1_out;
			end case;
			
    end case;
    end process;
	PC <= PC_out;
	IR <= IR_out;
	C <= Cr_out;
	Z <= Zr_out;
	reg0 <= reg0_out;
	reg1 <= reg1_out;
	reg2 <= reg2_out;
	reg3 <= reg3_out;
	reg4 <= reg4_out;
	reg5 <= reg5_out;
	reg6 <= reg6_out;
	reg7 <= reg7_out;
end struct;
