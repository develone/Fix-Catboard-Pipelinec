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
-- Submodules: 21
entity uart_serializer_serializer_in_to_out_0CLK_73702545 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 in_data : in uint1_t_8;
 in_data_valid : in unsigned(0 downto 0);
 out_data_ready : in unsigned(0 downto 0);
 return_output : out uart_serializer_serializer_in_to_out_t);
end uart_serializer_serializer_in_to_out_0CLK_73702545;
architecture arch of uart_serializer_serializer_in_to_out_0CLK_73702545 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal in_buffer : uint1_t_8 := (others => to_unsigned(0, 1));
signal in_buffer_valid : unsigned(0 downto 0) := to_unsigned(0, 1);
signal out_counter : unsigned(31 downto 0) := to_unsigned(0, 32);
signal REG_COMB_in_buffer : uint1_t_8;
signal REG_COMB_in_buffer_valid : unsigned(0 downto 0);
signal REG_COMB_out_counter : unsigned(31 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_h_l196_c588_5073]
signal BIN_OP_EQ_uart_mac_h_l196_c588_5073_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c588_5073_right : unsigned(2 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c588_5073_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l196_c570_4370]
signal BIN_OP_AND_uart_mac_h_l196_c570_4370_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l196_c570_4370_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l196_c570_4370_return_output : unsigned(0 downto 0);

-- UNARY_OP_NOT[uart_mac_h_l196_c630_56aa]
signal UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_return_output : unsigned(0 downto 0);

-- BIN_OP_OR[uart_mac_h_l196_c630_fdf7]
signal BIN_OP_OR_uart_mac_h_l196_c630_fdf7_left : unsigned(0 downto 0);
signal BIN_OP_OR_uart_mac_h_l196_c630_fdf7_right : unsigned(0 downto 0);
signal BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output : unsigned(0 downto 0);

-- in_buffer_valid_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- in_buffer_2_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- in_buffer_4_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- in_buffer_5_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- in_buffer_0_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- in_buffer_3_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- in_buffer_6_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- in_buffer_1_MUX[uart_mac_h_l196_c663_0b38]
signal in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
signal in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);

-- out_counter_MUX[uart_mac_h_l196_c663_0b38]
signal out_counter_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(31 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l196_c851_8d2a]
signal BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_left : unsigned(31 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_return_output : unsigned(32 downto 0);

-- BIN_OP_EQ[uart_mac_h_l196_c872_f6e4]
signal BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_left : unsigned(31 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_return_output : unsigned(0 downto 0);

-- in_buffer_valid_MUX[uart_mac_h_l196_c869_68da]
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_return_output : unsigned(0 downto 0);

-- in_buffer_valid_MUX[uart_mac_h_l196_c915_c767]
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_cond : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iftrue : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iffalse : unsigned(0 downto 0);
signal in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_return_output : unsigned(0 downto 0);

-- in_buffer_MUX[uart_mac_h_l196_c915_c767]
signal in_buffer_MUX_uart_mac_h_l196_c915_c767_cond : unsigned(0 downto 0);
signal in_buffer_MUX_uart_mac_h_l196_c915_c767_iftrue : uint1_t_8;
signal in_buffer_MUX_uart_mac_h_l196_c915_c767_iffalse : uint1_t_8;
signal in_buffer_MUX_uart_mac_h_l196_c915_c767_return_output : uint1_t_8;

-- out_counter_MUX[uart_mac_h_l196_c915_c767]
signal out_counter_MUX_uart_mac_h_l196_c915_c767_cond : unsigned(0 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_c767_iftrue : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_c767_iffalse : unsigned(31 downto 0);
signal out_counter_MUX_uart_mac_h_l196_c915_c767_return_output : unsigned(31 downto 0);

function CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4( ref_toks_0 : uint1_t_8;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned;
 ref_toks_3 : unsigned;
 ref_toks_4 : unsigned;
 ref_toks_5 : unsigned;
 ref_toks_6 : unsigned;
 ref_toks_7 : unsigned) return uint1_t_8 is
 
  variable base : uint1_t_8; 
  variable return_output : uint1_t_8;
begin
      base := ref_toks_0;
      base(2) := ref_toks_1;
      base(4) := ref_toks_2;
      base(5) := ref_toks_3;
      base(0) := ref_toks_4;
      base(3) := ref_toks_5;
      base(6) := ref_toks_6;
      base(1) := ref_toks_7;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned;
 ref_toks_2 : unsigned) return uart_serializer_serializer_in_to_out_t is
 
  variable base : uart_serializer_serializer_in_to_out_t; 
  variable return_output : uart_serializer_serializer_in_to_out_t;
begin
      base.out_data(0) := ref_toks_0;
      base.out_data_valid := ref_toks_1;
      base.in_data_ready := ref_toks_2;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_h_l196_c588_5073 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l196_c588_5073 : entity work.BIN_OP_EQ_uint32_t_uint3_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l196_c588_5073_left,
BIN_OP_EQ_uart_mac_h_l196_c588_5073_right,
BIN_OP_EQ_uart_mac_h_l196_c588_5073_return_output);

-- BIN_OP_AND_uart_mac_h_l196_c570_4370 : 0 clocks latency
BIN_OP_AND_uart_mac_h_l196_c570_4370 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l196_c570_4370_left,
BIN_OP_AND_uart_mac_h_l196_c570_4370_right,
BIN_OP_AND_uart_mac_h_l196_c570_4370_return_output);

-- UNARY_OP_NOT_uart_mac_h_l196_c630_56aa : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l196_c630_56aa : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_expr,
UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_return_output);

-- BIN_OP_OR_uart_mac_h_l196_c630_fdf7 : 0 clocks latency
BIN_OP_OR_uart_mac_h_l196_c630_fdf7 : entity work.BIN_OP_OR_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_OR_uart_mac_h_l196_c630_fdf7_left,
BIN_OP_OR_uart_mac_h_l196_c630_fdf7_right,
BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- in_buffer_2_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_2_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- in_buffer_4_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_4_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- in_buffer_5_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_5_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- in_buffer_0_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_0_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- in_buffer_3_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_3_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- in_buffer_6_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_6_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- in_buffer_1_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
in_buffer_1_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_cond,
in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iftrue,
in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iffalse,
in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- out_counter_MUX_uart_mac_h_l196_c663_0b38 : 0 clocks latency
out_counter_MUX_uart_mac_h_l196_c663_0b38 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
out_counter_MUX_uart_mac_h_l196_c663_0b38_cond,
out_counter_MUX_uart_mac_h_l196_c663_0b38_iftrue,
out_counter_MUX_uart_mac_h_l196_c663_0b38_iffalse,
out_counter_MUX_uart_mac_h_l196_c663_0b38_return_output);

-- BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a : entity work.BIN_OP_PLUS_uint32_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_left,
BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_right,
BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_return_output);

-- BIN_OP_EQ_uart_mac_h_l196_c872_f6e4 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l196_c872_f6e4 : entity work.BIN_OP_EQ_uint32_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_left,
BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_right,
BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c869_68da : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c869_68da : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_return_output);

-- in_buffer_valid_MUX_uart_mac_h_l196_c915_c767 : 0 clocks latency
in_buffer_valid_MUX_uart_mac_h_l196_c915_c767 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_cond,
in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iftrue,
in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iffalse,
in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_return_output);

-- in_buffer_MUX_uart_mac_h_l196_c915_c767 : 0 clocks latency
in_buffer_MUX_uart_mac_h_l196_c915_c767 : entity work.MUX_uint1_t_uint1_t_8_uint1_t_8_0CLK_de264c78 port map (
in_buffer_MUX_uart_mac_h_l196_c915_c767_cond,
in_buffer_MUX_uart_mac_h_l196_c915_c767_iftrue,
in_buffer_MUX_uart_mac_h_l196_c915_c767_iffalse,
in_buffer_MUX_uart_mac_h_l196_c915_c767_return_output);

-- out_counter_MUX_uart_mac_h_l196_c915_c767 : 0 clocks latency
out_counter_MUX_uart_mac_h_l196_c915_c767 : entity work.MUX_uint1_t_uint32_t_uint32_t_0CLK_de264c78 port map (
out_counter_MUX_uart_mac_h_l196_c915_c767_cond,
out_counter_MUX_uart_mac_h_l196_c915_c767_iftrue,
out_counter_MUX_uart_mac_h_l196_c915_c767_iffalse,
out_counter_MUX_uart_mac_h_l196_c915_c767_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 in_data,
 in_data_valid,
 out_data_ready,
 -- Registers
 in_buffer,
 in_buffer_valid,
 out_counter,
 -- All submodule outputs
 BIN_OP_EQ_uart_mac_h_l196_c588_5073_return_output,
 BIN_OP_AND_uart_mac_h_l196_c570_4370_return_output,
 UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_return_output,
 BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_return_output,
 in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_return_output,
 in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_return_output,
 in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_return_output,
 in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_return_output,
 in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_return_output,
 in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_return_output,
 in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_return_output,
 out_counter_MUX_uart_mac_h_l196_c663_0b38_return_output,
 BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_return_output,
 BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_return_output,
 in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_return_output,
 in_buffer_MUX_uart_mac_h_l196_c915_c767_return_output,
 out_counter_MUX_uart_mac_h_l196_c915_c767_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_serializer_serializer_in_to_out_t;
 variable VAR_in_data : uint1_t_8;
 variable VAR_in_data_valid : unsigned(0 downto 0);
 variable VAR_out_data_ready : unsigned(0 downto 0);
 variable VAR_rv : uart_serializer_serializer_in_to_out_t;
 variable VAR_i : unsigned(31 downto 0);
 variable VAR_last_outgoing : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_right : unsigned(2 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_iftrue : unsigned(31 downto 0);
 variable VAR_out_counter_uart_mac_h_l196_c851_ceef : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_iffalse : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_return_output : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_cond : unsigned(0 downto 0);
 variable VAR_ARRAY_SHIFT_DOWN_i : unsigned(31 downto 0);
 variable VAR_FOR_uart_mac_h_l196_c713_e942_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_e8a8_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_return_output : unsigned(32 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_left : unsigned(31 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iftrue : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iffalse : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_return_output : unsigned(0 downto 0);
 variable VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_cond : unsigned(0 downto 0);
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_iftrue : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_iffalse : uint1_t_8;
 variable VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4_uart_mac_h_l196_c915_c767_return_output : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_return_output : uint1_t_8;
 variable VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_cond : unsigned(0 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_iftrue : unsigned(31 downto 0);
 variable VAR_out_counter_uart_mac_h_l196_c992_d77d : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_iffalse : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_return_output : unsigned(31 downto 0);
 variable VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_aff0_return_output : uart_serializer_serializer_in_to_out_t;
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_e027_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_9a77_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_59f9_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_5281_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_16f5_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_82d5_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_dcd6_return_output : unsigned(0 downto 0);
 -- State registers comb logic variables
variable REG_VAR_in_buffer : uint1_t_8;
variable REG_VAR_in_buffer_valid : unsigned(0 downto 0);
variable REG_VAR_out_counter : unsigned(31 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_in_buffer := in_buffer;
  REG_VAR_in_buffer_valid := in_buffer_valid;
  REG_VAR_out_counter := out_counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_out_counter_uart_mac_h_l196_c992_d77d := resize(to_unsigned(0, 1), 32);
     VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_iftrue := VAR_out_counter_uart_mac_h_l196_c992_d77d;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_right := to_unsigned(7, 3);
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_right := to_unsigned(8, 4);
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_right := to_unsigned(1, 1);
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iftrue := to_unsigned(0, 1);

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_in_data := in_data;
     VAR_in_data_valid := in_data_valid;
     VAR_out_data_ready := out_data_ready;

     -- Submodule level 0
     VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_expr := in_buffer_valid;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iffalse := in_buffer_valid;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iffalse := in_buffer_valid;
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_iftrue := VAR_in_data;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iftrue := VAR_in_data_valid;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_left := out_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_left := out_counter;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_iffalse := out_counter;
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_left := VAR_out_data_ready;
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_cond := VAR_out_data_ready;
     -- FOR_uart_mac_h_l196_c713_e942_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d[uart_mac_h_l196_c818_e8a8] LATENCY=0
     VAR_FOR_uart_mac_h_l196_c713_e942_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_e8a8_return_output := in_buffer(7);

     -- UNARY_OP_NOT[uart_mac_h_l196_c630_56aa] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_return_output := UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_59f9 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_59f9_return_output := in_buffer(2);

     -- CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_9a77 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_9a77_return_output := in_buffer(1);

     -- CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_82d5 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_82d5_return_output := in_buffer(5);

     -- BIN_OP_EQ[uart_mac_h_l196_c588_5073] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l196_c588_5073_left <= VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_left;
     BIN_OP_EQ_uart_mac_h_l196_c588_5073_right <= VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_return_output := BIN_OP_EQ_uart_mac_h_l196_c588_5073_return_output;

     -- CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_dcd6 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_dcd6_return_output := in_buffer(6);

     -- CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_e027 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_e027_return_output := in_buffer(0);

     -- CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_16f5 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_16f5_return_output := in_buffer(4);

     -- CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_5281 LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_5281_return_output := in_buffer(3);

     -- BIN_OP_PLUS[uart_mac_h_l196_c851_8d2a] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_left <= VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_left;
     BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_right <= VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_return_output := BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_return_output;

     -- Submodule level 1
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_right := VAR_BIN_OP_EQ_uart_mac_h_l196_c588_5073_return_output;
     VAR_out_counter_uart_mac_h_l196_c851_ceef := resize(VAR_BIN_OP_PLUS_uart_mac_h_l196_c851_8d2a_return_output, 32);
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_e027_return_output;
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_9a77_return_output;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_1_d41d_uart_mac_h_l196_DUPLICATE_9a77_return_output;
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_59f9_return_output;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_2_d41d_uart_mac_h_l196_DUPLICATE_59f9_return_output;
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_5281_return_output;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_3_d41d_uart_mac_h_l196_DUPLICATE_5281_return_output;
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_16f5_return_output;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_4_d41d_uart_mac_h_l196_DUPLICATE_16f5_return_output;
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_82d5_return_output;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_5_d41d_uart_mac_h_l196_DUPLICATE_82d5_return_output;
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_dcd6_return_output;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iffalse := VAR_CONST_REF_RD_uint1_t_uint1_t_8_6_d41d_uart_mac_h_l196_DUPLICATE_dcd6_return_output;
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_FOR_uart_mac_h_l196_c713_e942_ITER_6_CONST_REF_RD_uint1_t_uint1_t_8_7_d41d_uart_mac_h_l196_c818_e8a8_return_output;
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_left := VAR_UNARY_OP_NOT_uart_mac_h_l196_c630_56aa_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_left := VAR_out_counter_uart_mac_h_l196_c851_ceef;
     VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_out_counter_uart_mac_h_l196_c851_ceef;
     -- in_buffer_0_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- in_buffer_4_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- in_buffer_6_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- out_counter_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     out_counter_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_cond;
     out_counter_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     out_counter_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_return_output := out_counter_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- BIN_OP_EQ[uart_mac_h_l196_c872_f6e4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_left <= VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_left;
     BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_right <= VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_return_output := BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_return_output;

     -- BIN_OP_AND[uart_mac_h_l196_c570_4370] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l196_c570_4370_left <= VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_left;
     BIN_OP_AND_uart_mac_h_l196_c570_4370_right <= VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_return_output := BIN_OP_AND_uart_mac_h_l196_c570_4370_return_output;

     -- in_buffer_3_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- in_buffer_1_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- in_buffer_5_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- in_buffer_2_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- Submodule level 2
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_right := VAR_BIN_OP_AND_uart_mac_h_l196_c570_4370_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_cond := VAR_BIN_OP_EQ_uart_mac_h_l196_c872_f6e4_return_output;
     VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_iffalse := VAR_out_counter_MUX_uart_mac_h_l196_c663_0b38_return_output;
     -- in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4[uart_mac_h_l196_c915_c767] LATENCY=0
     VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4_uart_mac_h_l196_c915_c767_return_output := CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4(
     in_buffer,
     VAR_in_buffer_2_MUX_uart_mac_h_l196_c663_0b38_return_output,
     VAR_in_buffer_4_MUX_uart_mac_h_l196_c663_0b38_return_output,
     VAR_in_buffer_5_MUX_uart_mac_h_l196_c663_0b38_return_output,
     VAR_in_buffer_0_MUX_uart_mac_h_l196_c663_0b38_return_output,
     VAR_in_buffer_3_MUX_uart_mac_h_l196_c663_0b38_return_output,
     VAR_in_buffer_6_MUX_uart_mac_h_l196_c663_0b38_return_output,
     VAR_in_buffer_1_MUX_uart_mac_h_l196_c663_0b38_return_output);

     -- in_buffer_valid_MUX[uart_mac_h_l196_c869_68da] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_return_output;

     -- BIN_OP_OR[uart_mac_h_l196_c630_fdf7] LATENCY=0
     -- Inputs
     BIN_OP_OR_uart_mac_h_l196_c630_fdf7_left <= VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_left;
     BIN_OP_OR_uart_mac_h_l196_c630_fdf7_right <= VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_right;
     -- Outputs
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output := BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output;

     -- Submodule level 3
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output;
     VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_cond := VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output;
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_iffalse := VAR_in_buffer_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_8_uint1_t_8_a1a4_uart_mac_h_l196_c915_c767_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iftrue := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c869_68da_return_output;
     -- CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9[uart_mac_h_l196_c1018_aff0] LATENCY=0
     VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_aff0_return_output := CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9(
     VAR_CONST_REF_RD_uint1_t_uint1_t_8_0_d41d_uart_mac_h_l196_DUPLICATE_e027_return_output,
     in_buffer_valid,
     VAR_BIN_OP_OR_uart_mac_h_l196_c630_fdf7_return_output);

     -- in_buffer_valid_MUX[uart_mac_h_l196_c663_0b38] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_return_output;

     -- out_counter_MUX[uart_mac_h_l196_c915_c767] LATENCY=0
     -- Inputs
     out_counter_MUX_uart_mac_h_l196_c915_c767_cond <= VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_cond;
     out_counter_MUX_uart_mac_h_l196_c915_c767_iftrue <= VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_iftrue;
     out_counter_MUX_uart_mac_h_l196_c915_c767_iffalse <= VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_iffalse;
     -- Outputs
     VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_return_output := out_counter_MUX_uart_mac_h_l196_c915_c767_return_output;

     -- in_buffer_MUX[uart_mac_h_l196_c915_c767] LATENCY=0
     -- Inputs
     in_buffer_MUX_uart_mac_h_l196_c915_c767_cond <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_cond;
     in_buffer_MUX_uart_mac_h_l196_c915_c767_iftrue <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_iftrue;
     in_buffer_MUX_uart_mac_h_l196_c915_c767_iffalse <= VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_iffalse;
     -- Outputs
     VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_return_output := in_buffer_MUX_uart_mac_h_l196_c915_c767_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_CONST_REF_RD_uart_serializer_serializer_in_to_out_t_uart_serializer_serializer_in_to_out_t_05e9_uart_mac_h_l196_c1018_aff0_return_output;
     REG_VAR_in_buffer := VAR_in_buffer_MUX_uart_mac_h_l196_c915_c767_return_output;
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iffalse := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c663_0b38_return_output;
     REG_VAR_out_counter := VAR_out_counter_MUX_uart_mac_h_l196_c915_c767_return_output;
     -- in_buffer_valid_MUX[uart_mac_h_l196_c915_c767] LATENCY=0
     -- Inputs
     in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_cond <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_cond;
     in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iftrue <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iftrue;
     in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iffalse <= VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_iffalse;
     -- Outputs
     VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_return_output := in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_return_output;

     -- Submodule level 5
     REG_VAR_in_buffer_valid := VAR_in_buffer_valid_MUX_uart_mac_h_l196_c915_c767_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_in_buffer <= REG_VAR_in_buffer;
REG_COMB_in_buffer_valid <= REG_VAR_in_buffer_valid;
REG_COMB_out_counter <= REG_VAR_out_counter;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     in_buffer <= REG_COMB_in_buffer;
     in_buffer_valid <= REG_COMB_in_buffer_valid;
     out_counter <= REG_COMB_out_counter;
 end if;
 end if;
end process;

end arch;
