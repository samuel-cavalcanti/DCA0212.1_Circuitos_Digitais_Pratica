library verilog;
use verilog.vl_types.all;
entity registrador_de_instrucao_vlg_check_tst is
    port(
        memoria         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end registrador_de_instrucao_vlg_check_tst;
