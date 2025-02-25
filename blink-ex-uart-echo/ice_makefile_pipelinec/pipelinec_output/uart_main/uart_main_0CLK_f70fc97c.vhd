-- Timing params:
--   Fixed?: False
--   Pipeline Slices: []
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
use work.global_wires_pkg.all;
-- Submodules: 11
entity uart_main_0CLK_f70fc97c is
port(
 global_to_module : in uart_main_global_to_module_t;
 module_to_global : out uart_main_module_to_global_t);
end uart_main_0CLK_f70fc97c;
architecture arch of uart_main_0CLK_f70fc97c is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_GTE[top_c_l29_c6_7052]
signal BIN_OP_GTE_top_c_l29_c6_7052_left : unsigned(7 downto 0);
signal BIN_OP_GTE_top_c_l29_c6_7052_right : unsigned(7 downto 0);
signal BIN_OP_GTE_top_c_l29_c6_7052_return_output : unsigned(0 downto 0);

-- BIN_OP_LTE[top_c_l29_c24_08b7]
signal BIN_OP_LTE_top_c_l29_c24_08b7_left : unsigned(7 downto 0);
signal BIN_OP_LTE_top_c_l29_c24_08b7_right : unsigned(7 downto 0);
signal BIN_OP_LTE_top_c_l29_c24_08b7_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[top_c_l29_c6_d572]
signal BIN_OP_AND_top_c_l29_c6_d572_left : unsigned(0 downto 0);
signal BIN_OP_AND_top_c_l29_c6_d572_right : unsigned(0 downto 0);
signal BIN_OP_AND_top_c_l29_c6_d572_return_output : unsigned(0 downto 0);

-- out_char_MUX[top_c_l29_c3_cadc]
signal out_char_MUX_top_c_l29_c3_cadc_cond : unsigned(0 downto 0);
signal out_char_MUX_top_c_l29_c3_cadc_iftrue : unsigned(7 downto 0);
signal out_char_MUX_top_c_l29_c3_cadc_iffalse : unsigned(7 downto 0);
signal out_char_MUX_top_c_l29_c3_cadc_return_output : unsigned(7 downto 0);

-- BIN_OP_MINUS[top_c_l30_c16_7b26]
signal BIN_OP_MINUS_top_c_l30_c16_7b26_left : unsigned(7 downto 0);
signal BIN_OP_MINUS_top_c_l30_c16_7b26_right : unsigned(7 downto 0);
signal BIN_OP_MINUS_top_c_l30_c16_7b26_return_output : unsigned(7 downto 0);

-- BIN_OP_GTE[top_c_l31_c12_b643]
signal BIN_OP_GTE_top_c_l31_c12_b643_left : unsigned(7 downto 0);
signal BIN_OP_GTE_top_c_l31_c12_b643_right : unsigned(7 downto 0);
signal BIN_OP_GTE_top_c_l31_c12_b643_return_output : unsigned(0 downto 0);

-- BIN_OP_LTE[top_c_l31_c30_37e2]
signal BIN_OP_LTE_top_c_l31_c30_37e2_left : unsigned(7 downto 0);
signal BIN_OP_LTE_top_c_l31_c30_37e2_right : unsigned(7 downto 0);
signal BIN_OP_LTE_top_c_l31_c30_37e2_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[top_c_l31_c12_678f]
signal BIN_OP_AND_top_c_l31_c12_678f_left : unsigned(0 downto 0);
signal BIN_OP_AND_top_c_l31_c12_678f_right : unsigned(0 downto 0);
signal BIN_OP_AND_top_c_l31_c12_678f_return_output : unsigned(0 downto 0);

-- out_char_MUX[top_c_l31_c9_c1bd]
signal out_char_MUX_top_c_l31_c9_c1bd_cond : unsigned(0 downto 0);
signal out_char_MUX_top_c_l31_c9_c1bd_iftrue : unsigned(7 downto 0);
signal out_char_MUX_top_c_l31_c9_c1bd_iffalse : unsigned(7 downto 0);
signal out_char_MUX_top_c_l31_c9_c1bd_return_output : unsigned(7 downto 0);

-- BIN_OP_PLUS[top_c_l32_c16_192f]
signal BIN_OP_PLUS_top_c_l32_c16_192f_left : unsigned(7 downto 0);
signal BIN_OP_PLUS_top_c_l32_c16_192f_right : unsigned(7 downto 0);
signal BIN_OP_PLUS_top_c_l32_c16_192f_return_output : unsigned(8 downto 0);

function CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_c961( ref_toks_0 : uint8_t_stream_t;
 ref_toks_1 : unsigned) return uint8_t_stream_t is
 
  variable base : uint8_t_stream_t; 
  variable return_output : uint8_t_stream_t;
begin
      base := ref_toks_0;
      base.data := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_GTE_top_c_l29_c6_7052 : 0 clocks latency
BIN_OP_GTE_top_c_l29_c6_7052 : entity work.BIN_OP_GTE_uint8_t_uint8_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_top_c_l29_c6_7052_left,
BIN_OP_GTE_top_c_l29_c6_7052_right,
BIN_OP_GTE_top_c_l29_c6_7052_return_output);

-- BIN_OP_LTE_top_c_l29_c24_08b7 : 0 clocks latency
BIN_OP_LTE_top_c_l29_c24_08b7 : entity work.BIN_OP_LTE_uint8_t_uint8_t_0CLK_6f2c5aad port map (
BIN_OP_LTE_top_c_l29_c24_08b7_left,
BIN_OP_LTE_top_c_l29_c24_08b7_right,
BIN_OP_LTE_top_c_l29_c24_08b7_return_output);

-- BIN_OP_AND_top_c_l29_c6_d572 : 0 clocks latency
BIN_OP_AND_top_c_l29_c6_d572 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_top_c_l29_c6_d572_left,
BIN_OP_AND_top_c_l29_c6_d572_right,
BIN_OP_AND_top_c_l29_c6_d572_return_output);

-- out_char_MUX_top_c_l29_c3_cadc : 0 clocks latency
out_char_MUX_top_c_l29_c3_cadc : entity work.MUX_uint1_t_char_char_0CLK_de264c78 port map (
out_char_MUX_top_c_l29_c3_cadc_cond,
out_char_MUX_top_c_l29_c3_cadc_iftrue,
out_char_MUX_top_c_l29_c3_cadc_iffalse,
out_char_MUX_top_c_l29_c3_cadc_return_output);

-- BIN_OP_MINUS_top_c_l30_c16_7b26 : 0 clocks latency
BIN_OP_MINUS_top_c_l30_c16_7b26 : entity work.BIN_OP_MINUS_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_MINUS_top_c_l30_c16_7b26_left,
BIN_OP_MINUS_top_c_l30_c16_7b26_right,
BIN_OP_MINUS_top_c_l30_c16_7b26_return_output);

-- BIN_OP_GTE_top_c_l31_c12_b643 : 0 clocks latency
BIN_OP_GTE_top_c_l31_c12_b643 : entity work.BIN_OP_GTE_uint8_t_uint8_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_top_c_l31_c12_b643_left,
BIN_OP_GTE_top_c_l31_c12_b643_right,
BIN_OP_GTE_top_c_l31_c12_b643_return_output);

-- BIN_OP_LTE_top_c_l31_c30_37e2 : 0 clocks latency
BIN_OP_LTE_top_c_l31_c30_37e2 : entity work.BIN_OP_LTE_uint8_t_uint8_t_0CLK_6f2c5aad port map (
BIN_OP_LTE_top_c_l31_c30_37e2_left,
BIN_OP_LTE_top_c_l31_c30_37e2_right,
BIN_OP_LTE_top_c_l31_c30_37e2_return_output);

-- BIN_OP_AND_top_c_l31_c12_678f : 0 clocks latency
BIN_OP_AND_top_c_l31_c12_678f : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_top_c_l31_c12_678f_left,
BIN_OP_AND_top_c_l31_c12_678f_right,
BIN_OP_AND_top_c_l31_c12_678f_return_output);

-- out_char_MUX_top_c_l31_c9_c1bd : 0 clocks latency
out_char_MUX_top_c_l31_c9_c1bd : entity work.MUX_uint1_t_char_char_0CLK_de264c78 port map (
out_char_MUX_top_c_l31_c9_c1bd_cond,
out_char_MUX_top_c_l31_c9_c1bd_iftrue,
out_char_MUX_top_c_l31_c9_c1bd_iffalse,
out_char_MUX_top_c_l31_c9_c1bd_return_output);

-- BIN_OP_PLUS_top_c_l32_c16_192f : 0 clocks latency
BIN_OP_PLUS_top_c_l32_c16_192f : entity work.BIN_OP_PLUS_uint8_t_uint8_t_0CLK_de264c78 port map (
BIN_OP_PLUS_top_c_l32_c16_192f_left,
BIN_OP_PLUS_top_c_l32_c16_192f_right,
BIN_OP_PLUS_top_c_l32_c16_192f_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Clock cross input
 global_to_module,
 -- All submodule outputs
 BIN_OP_GTE_top_c_l29_c6_7052_return_output,
 BIN_OP_LTE_top_c_l29_c24_08b7_return_output,
 BIN_OP_AND_top_c_l29_c6_d572_return_output,
 out_char_MUX_top_c_l29_c3_cadc_return_output,
 BIN_OP_MINUS_top_c_l30_c16_7b26_return_output,
 BIN_OP_GTE_top_c_l31_c12_b643_return_output,
 BIN_OP_LTE_top_c_l31_c30_37e2_return_output,
 BIN_OP_AND_top_c_l31_c12_678f_return_output,
 out_char_MUX_top_c_l31_c9_c1bd_return_output,
 BIN_OP_PLUS_top_c_l32_c16_192f_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_uart_tx_mac_word_in : uint8_t_stream_t;
 variable VAR_uart_rx_mac_word_out : uint8_t_stream_t;
 variable VAR_uart_rx_mac_out_ready : unsigned(0 downto 0);
 variable VAR_uart_tx_mac_in_ready : unsigned(0 downto 0);
 variable VAR_in_char : unsigned(7 downto 0);
 variable VAR_in_char_top_c_l26_c8_9268_0 : unsigned(7 downto 0);
 variable VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_top_c_l26_c18_4614_return_output : unsigned(7 downto 0);
 variable VAR_out_char : unsigned(7 downto 0);
 variable VAR_case_diff : unsigned(7 downto 0);
 variable VAR_case_diff_top_c_l28_c11_1d16_0 : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_top_c_l29_c6_7052_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_top_c_l29_c6_7052_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_top_c_l29_c6_7052_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_top_c_l29_c6_d572_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LTE_top_c_l29_c24_08b7_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_LTE_top_c_l29_c24_08b7_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_LTE_top_c_l29_c24_08b7_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_top_c_l29_c6_d572_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_top_c_l29_c6_d572_return_output : unsigned(0 downto 0);
 variable VAR_out_char_MUX_top_c_l29_c3_cadc_iftrue : unsigned(7 downto 0);
 variable VAR_out_char_top_c_l30_c5_b98a : unsigned(7 downto 0);
 variable VAR_out_char_MUX_top_c_l29_c3_cadc_iffalse : unsigned(7 downto 0);
 variable VAR_out_char_MUX_top_c_l31_c9_c1bd_return_output : unsigned(7 downto 0);
 variable VAR_out_char_MUX_top_c_l29_c3_cadc_return_output : unsigned(7 downto 0);
 variable VAR_out_char_MUX_top_c_l29_c3_cadc_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_return_output : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_top_c_l31_c12_b643_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_top_c_l31_c12_b643_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_top_c_l31_c12_b643_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_top_c_l31_c12_678f_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_LTE_top_c_l31_c30_37e2_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_LTE_top_c_l31_c30_37e2_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_LTE_top_c_l31_c30_37e2_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_top_c_l31_c12_678f_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_top_c_l31_c12_678f_return_output : unsigned(0 downto 0);
 variable VAR_out_char_MUX_top_c_l31_c9_c1bd_iftrue : unsigned(7 downto 0);
 variable VAR_out_char_top_c_l32_c5_8536 : unsigned(7 downto 0);
 variable VAR_out_char_MUX_top_c_l31_c9_c1bd_iffalse : unsigned(7 downto 0);
 variable VAR_out_char_MUX_top_c_l31_c9_c1bd_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_top_c_l32_c16_192f_left : unsigned(7 downto 0);
 variable VAR_BIN_OP_PLUS_top_c_l32_c16_192f_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_PLUS_top_c_l32_c16_192f_return_output : unsigned(8 downto 0);
 variable VAR_uart_tx_mac_word_in_data_top_c_l34_c3_ea16 : unsigned(7 downto 0);
 variable VAR_uart_tx_mac_word_in_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_c961_top_c_l20_c6_9578_return_output : uint8_t_stream_t;
begin
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_GTE_top_c_l31_c12_b643_right := to_unsigned(65, 8);
     VAR_BIN_OP_GTE_top_c_l29_c6_7052_right := to_unsigned(97, 8);
     VAR_BIN_OP_LTE_top_c_l31_c30_37e2_right := to_unsigned(90, 8);
     VAR_case_diff_top_c_l28_c11_1d16_0 := resize(to_unsigned(32, 6), 8);
     VAR_BIN_OP_PLUS_top_c_l32_c16_192f_right := VAR_case_diff_top_c_l28_c11_1d16_0;
     VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_right := VAR_case_diff_top_c_l28_c11_1d16_0;
     VAR_BIN_OP_LTE_top_c_l29_c24_08b7_right := to_unsigned(122, 8);
 -- Reads from global variables
     VAR_uart_rx_mac_word_out := global_to_module.uart_rx_mac_word_out;
     VAR_uart_tx_mac_in_ready := global_to_module.uart_tx_mac_in_ready;
     -- Submodule level 0
     VAR_uart_rx_mac_out_ready := VAR_uart_tx_mac_in_ready;
     -- CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d[top_c_l26_c18_4614] LATENCY=0
     VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_top_c_l26_c18_4614_return_output := VAR_uart_rx_mac_word_out.data;

     -- Submodule level 1
     VAR_in_char_top_c_l26_c8_9268_0 := VAR_CONST_REF_RD_uint8_t_uint8_t_stream_t_data_d41d_top_c_l26_c18_4614_return_output;
     VAR_out_char_MUX_top_c_l31_c9_c1bd_iffalse := VAR_in_char_top_c_l26_c8_9268_0;
     VAR_BIN_OP_LTE_top_c_l31_c30_37e2_left := VAR_in_char_top_c_l26_c8_9268_0;
     VAR_BIN_OP_LTE_top_c_l29_c24_08b7_left := VAR_in_char_top_c_l26_c8_9268_0;
     VAR_BIN_OP_GTE_top_c_l29_c6_7052_left := VAR_in_char_top_c_l26_c8_9268_0;
     VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_left := VAR_in_char_top_c_l26_c8_9268_0;
     VAR_BIN_OP_GTE_top_c_l31_c12_b643_left := VAR_in_char_top_c_l26_c8_9268_0;
     VAR_BIN_OP_PLUS_top_c_l32_c16_192f_left := VAR_in_char_top_c_l26_c8_9268_0;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then

     -- Submodule level 0
     -- BIN_OP_MINUS[top_c_l30_c16_7b26] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_top_c_l30_c16_7b26_left <= VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_left;
     BIN_OP_MINUS_top_c_l30_c16_7b26_right <= VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_right;
     -- Outputs
     VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_return_output := BIN_OP_MINUS_top_c_l30_c16_7b26_return_output;

     -- BIN_OP_LTE[top_c_l29_c24_08b7] LATENCY=0
     -- Inputs
     BIN_OP_LTE_top_c_l29_c24_08b7_left <= VAR_BIN_OP_LTE_top_c_l29_c24_08b7_left;
     BIN_OP_LTE_top_c_l29_c24_08b7_right <= VAR_BIN_OP_LTE_top_c_l29_c24_08b7_right;
     -- Outputs
     VAR_BIN_OP_LTE_top_c_l29_c24_08b7_return_output := BIN_OP_LTE_top_c_l29_c24_08b7_return_output;

     -- BIN_OP_GTE[top_c_l31_c12_b643] LATENCY=0
     -- Inputs
     BIN_OP_GTE_top_c_l31_c12_b643_left <= VAR_BIN_OP_GTE_top_c_l31_c12_b643_left;
     BIN_OP_GTE_top_c_l31_c12_b643_right <= VAR_BIN_OP_GTE_top_c_l31_c12_b643_right;
     -- Outputs
     VAR_BIN_OP_GTE_top_c_l31_c12_b643_return_output := BIN_OP_GTE_top_c_l31_c12_b643_return_output;

     -- BIN_OP_GTE[top_c_l29_c6_7052] LATENCY=0
     -- Inputs
     BIN_OP_GTE_top_c_l29_c6_7052_left <= VAR_BIN_OP_GTE_top_c_l29_c6_7052_left;
     BIN_OP_GTE_top_c_l29_c6_7052_right <= VAR_BIN_OP_GTE_top_c_l29_c6_7052_right;
     -- Outputs
     VAR_BIN_OP_GTE_top_c_l29_c6_7052_return_output := BIN_OP_GTE_top_c_l29_c6_7052_return_output;

     -- BIN_OP_LTE[top_c_l31_c30_37e2] LATENCY=0
     -- Inputs
     BIN_OP_LTE_top_c_l31_c30_37e2_left <= VAR_BIN_OP_LTE_top_c_l31_c30_37e2_left;
     BIN_OP_LTE_top_c_l31_c30_37e2_right <= VAR_BIN_OP_LTE_top_c_l31_c30_37e2_right;
     -- Outputs
     VAR_BIN_OP_LTE_top_c_l31_c30_37e2_return_output := BIN_OP_LTE_top_c_l31_c30_37e2_return_output;

     -- BIN_OP_PLUS[top_c_l32_c16_192f] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_top_c_l32_c16_192f_left <= VAR_BIN_OP_PLUS_top_c_l32_c16_192f_left;
     BIN_OP_PLUS_top_c_l32_c16_192f_right <= VAR_BIN_OP_PLUS_top_c_l32_c16_192f_right;
     -- Outputs
     VAR_BIN_OP_PLUS_top_c_l32_c16_192f_return_output := BIN_OP_PLUS_top_c_l32_c16_192f_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_top_c_l29_c6_d572_left := VAR_BIN_OP_GTE_top_c_l29_c6_7052_return_output;
     VAR_BIN_OP_AND_top_c_l31_c12_678f_left := VAR_BIN_OP_GTE_top_c_l31_c12_b643_return_output;
     VAR_BIN_OP_AND_top_c_l29_c6_d572_right := VAR_BIN_OP_LTE_top_c_l29_c24_08b7_return_output;
     VAR_BIN_OP_AND_top_c_l31_c12_678f_right := VAR_BIN_OP_LTE_top_c_l31_c30_37e2_return_output;
     VAR_out_char_top_c_l30_c5_b98a := VAR_BIN_OP_MINUS_top_c_l30_c16_7b26_return_output;
     VAR_out_char_top_c_l32_c5_8536 := resize(VAR_BIN_OP_PLUS_top_c_l32_c16_192f_return_output, 8);
     VAR_out_char_MUX_top_c_l29_c3_cadc_iftrue := VAR_out_char_top_c_l30_c5_b98a;
     VAR_out_char_MUX_top_c_l31_c9_c1bd_iftrue := VAR_out_char_top_c_l32_c5_8536;
     -- BIN_OP_AND[top_c_l31_c12_678f] LATENCY=0
     -- Inputs
     BIN_OP_AND_top_c_l31_c12_678f_left <= VAR_BIN_OP_AND_top_c_l31_c12_678f_left;
     BIN_OP_AND_top_c_l31_c12_678f_right <= VAR_BIN_OP_AND_top_c_l31_c12_678f_right;
     -- Outputs
     VAR_BIN_OP_AND_top_c_l31_c12_678f_return_output := BIN_OP_AND_top_c_l31_c12_678f_return_output;

     -- BIN_OP_AND[top_c_l29_c6_d572] LATENCY=0
     -- Inputs
     BIN_OP_AND_top_c_l29_c6_d572_left <= VAR_BIN_OP_AND_top_c_l29_c6_d572_left;
     BIN_OP_AND_top_c_l29_c6_d572_right <= VAR_BIN_OP_AND_top_c_l29_c6_d572_right;
     -- Outputs
     VAR_BIN_OP_AND_top_c_l29_c6_d572_return_output := BIN_OP_AND_top_c_l29_c6_d572_return_output;

     -- Submodule level 2
     VAR_out_char_MUX_top_c_l29_c3_cadc_cond := VAR_BIN_OP_AND_top_c_l29_c6_d572_return_output;
     VAR_out_char_MUX_top_c_l31_c9_c1bd_cond := VAR_BIN_OP_AND_top_c_l31_c12_678f_return_output;
     -- out_char_MUX[top_c_l31_c9_c1bd] LATENCY=0
     -- Inputs
     out_char_MUX_top_c_l31_c9_c1bd_cond <= VAR_out_char_MUX_top_c_l31_c9_c1bd_cond;
     out_char_MUX_top_c_l31_c9_c1bd_iftrue <= VAR_out_char_MUX_top_c_l31_c9_c1bd_iftrue;
     out_char_MUX_top_c_l31_c9_c1bd_iffalse <= VAR_out_char_MUX_top_c_l31_c9_c1bd_iffalse;
     -- Outputs
     VAR_out_char_MUX_top_c_l31_c9_c1bd_return_output := out_char_MUX_top_c_l31_c9_c1bd_return_output;

     -- Submodule level 3
     VAR_out_char_MUX_top_c_l29_c3_cadc_iffalse := VAR_out_char_MUX_top_c_l31_c9_c1bd_return_output;
     -- out_char_MUX[top_c_l29_c3_cadc] LATENCY=0
     -- Inputs
     out_char_MUX_top_c_l29_c3_cadc_cond <= VAR_out_char_MUX_top_c_l29_c3_cadc_cond;
     out_char_MUX_top_c_l29_c3_cadc_iftrue <= VAR_out_char_MUX_top_c_l29_c3_cadc_iftrue;
     out_char_MUX_top_c_l29_c3_cadc_iffalse <= VAR_out_char_MUX_top_c_l29_c3_cadc_iffalse;
     -- Outputs
     VAR_out_char_MUX_top_c_l29_c3_cadc_return_output := out_char_MUX_top_c_l29_c3_cadc_return_output;

     -- Submodule level 4
     VAR_uart_tx_mac_word_in_data_top_c_l34_c3_ea16 := VAR_out_char_MUX_top_c_l29_c3_cadc_return_output;
     -- uart_tx_mac_word_in_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_c961[top_c_l20_c6_9578] LATENCY=0
     VAR_uart_tx_mac_word_in_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_c961_top_c_l20_c6_9578_return_output := CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_c961(
     VAR_uart_rx_mac_word_out,
     VAR_uart_tx_mac_word_in_data_top_c_l34_c3_ea16);

     -- Submodule level 5
     VAR_uart_tx_mac_word_in := VAR_uart_tx_mac_word_in_CONST_REF_RD_uint8_t_stream_t_uint8_t_stream_t_c961_top_c_l20_c6_9578_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
module_to_global.uart_tx_mac_word_in <= VAR_uart_tx_mac_word_in;
module_to_global.uart_rx_mac_out_ready <= VAR_uart_rx_mac_out_ready;
end process;

end arch;
