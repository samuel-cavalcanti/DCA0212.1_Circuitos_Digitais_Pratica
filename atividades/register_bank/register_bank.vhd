library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_bank is 

port ( index : in std_logic_vector (3 downto 0);
		input_data : in std_logic_vector (7 downto 0);
		write_option : in std_logic;
		read_option : in std_logic_vector (7 downto 0);
		output_data : out std_logic_vector (7 downto 0));

end entity;

architecture behavior of register_bank is 
signal decode_x_index : std_logic_vector(3 downto 0);
signal decode_y_index : std_logic_vector(3 downto 0);
signal registers_output : std_logic_vector (7 downto 0);
signal clock : std_logic;
type all_registers_output is array(0 to 15) of std_logic_vector(7 downto 0);
signal outputs : all_registers_output;
type four_registers is array(0 to 3) of std_logic_vector(7 downto 0);
signal output_for_ors : four_registers;
 

begin
	
	x : entity work.demux2to4(behavior)
	port map (
	s(0) => index(0),
	s(1) => index(1),
	c => decode_x_index);
	
	y : entity work.demux2to4(behavior)
	port map (
	s(0) => index(2),
	s(1) => index(3),
	c => decode_y_index);
	
	
	
	
	
	registerI : for i in 0 to 3 generate
		registerJ: for j in 0 to 3 generate
		 reg: entity work.simple_register(behavior)
		 port map (
			d => input_data,
			sx => decode_x_index(i),
			sy => decode_y_index(j),
			w => write_option,
			clock => clock,
			data_out => outputs(4*i +j));
		end generate registerJ;
		
		ors: entity work.four_ors(behavior)
		port map (
			vec1 => outputs(4*i),
			vec2 => outputs(4*i +1),
			vec3 => outputs(4*i +2),
			vec4 => outputs(4*i +3),
			output_vec => output_for_ors(i));
	
	end generate registerI;
	
	ors: entity work.four_ors(behavior)
		port map (
			vec1 => output_for_ors(0),
			vec2 => output_for_ors(1),
			vec3 => output_for_ors(2),
			vec4 => output_for_ors(3),
			output_vec => registers_output);
			
	
	output_data <= registers_output and read_option ;

	
end architecture;
