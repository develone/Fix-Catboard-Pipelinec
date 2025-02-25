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
-- Submodules: 40
entity uart_rx_1b_0CLK_f4b54c86 is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 input_wire : in unsigned(0 downto 0);
 ready_for_bit_stream : in unsigned(0 downto 0);
 return_output : out uart_rx_1b_t);
end uart_rx_1b_0CLK_f4b54c86;
architecture arch of uart_rx_1b_0CLK_f4b54c86 is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : unsigned(1 downto 0) := unsigned(uart_rx_state_t_to_slv(uart_rx_state_t'left));
signal clk_counter : unsigned(15 downto 0) := to_unsigned(0, 16);
signal bit_counter : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_state : unsigned(1 downto 0);
signal REG_COMB_clk_counter : unsigned(15 downto 0);
signal REG_COMB_bit_counter : unsigned(3 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_h_l55_c6_1701]
signal BIN_OP_EQ_uart_mac_h_l55_c6_1701_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_1701_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l55_c3_404b]
signal state_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l55_c3_404b_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_404b_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l55_c3_404b_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l55_c3_404b]
signal o_bit_stream_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l55_c3_404b]
signal clk_counter_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_404b_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_404b_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l55_c3_404b_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l55_c3_404b]
signal bit_counter_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_404b_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_404b_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l55_c3_404b_return_output : unsigned(3 downto 0);

-- state_MUX[uart_mac_h_l58_c5_b4b9]
signal state_MUX_uart_mac_h_l58_c5_b4b9_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l58_c5_b4b9_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_b4b9_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l58_c5_b4b9_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l58_c5_b4b9]
signal clk_counter_MUX_uart_mac_h_l58_c5_b4b9_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l58_c5_b4b9_return_output : unsigned(15 downto 0);

-- BIN_OP_EQ[uart_mac_h_l65_c11_cc22]
signal BIN_OP_EQ_uart_mac_h_l65_c11_cc22_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_cc22_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l65_c8_24b1]
signal state_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l65_c8_24b1_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_24b1_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l65_c8_24b1_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l65_c8_24b1]
signal o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l65_c8_24b1]
signal clk_counter_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l65_c8_24b1_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l65_c8_24b1]
signal bit_counter_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l65_c8_24b1_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[uart_mac_h_l68_c8_58e6]
signal BIN_OP_EQ_uart_mac_h_l68_c8_58e6_left : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_58e6_right : unsigned(0 downto 0);
signal BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l68_c5_0485]
signal state_MUX_uart_mac_h_l68_c5_0485_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l68_c5_0485_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_0485_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l68_c5_0485_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l68_c5_0485]
signal clk_counter_MUX_uart_mac_h_l68_c5_0485_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_0485_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_0485_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l68_c5_0485_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l68_c5_0485]
signal bit_counter_MUX_uart_mac_h_l68_c5_0485_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_0485_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_0485_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l68_c5_0485_return_output : unsigned(3 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l71_c7_a048]
signal BIN_OP_PLUS_uart_mac_h_l71_c7_a048_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_a048_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l71_c7_a048_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l72_c10_8e7b]
signal BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l72_c7_1594]
signal state_MUX_uart_mac_h_l72_c7_1594_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l72_c7_1594_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_1594_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l72_c7_1594_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l72_c7_1594]
signal clk_counter_MUX_uart_mac_h_l72_c7_1594_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_1594_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_1594_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l72_c7_1594_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l72_c7_1594]
signal bit_counter_MUX_uart_mac_h_l72_c7_1594_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_1594_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_1594_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l72_c7_1594_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[uart_mac_h_l81_c11_c953]
signal BIN_OP_EQ_uart_mac_h_l81_c11_c953_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_c953_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l81_c8_8685]
signal state_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l81_c8_8685_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_8685_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l81_c8_8685_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l81_c8_8685]
signal o_bit_stream_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l81_c8_8685_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l81_c8_8685]
signal clk_counter_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_8685_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_8685_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l81_c8_8685_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l81_c8_8685]
signal bit_counter_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_8685_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_8685_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l81_c8_8685_return_output : unsigned(3 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l84_c5_0e01]
signal BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l85_c8_abdb]
signal BIN_OP_GTE_uart_mac_h_l85_c8_abdb_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_abdb_right : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l85_c5_f855]
signal state_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l85_c5_f855_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_f855_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l85_c5_f855_return_output : unsigned(1 downto 0);

-- o_bit_stream_MUX[uart_mac_h_l85_c5_f855]
signal o_bit_stream_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
signal o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iftrue : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iffalse : uint1_t_stream_t;
signal o_bit_stream_MUX_uart_mac_h_l85_c5_f855_return_output : uint1_t_stream_t;

-- clk_counter_MUX[uart_mac_h_l85_c5_f855]
signal clk_counter_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_f855_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_f855_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l85_c5_f855_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l85_c5_f855]
signal bit_counter_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_f855_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_f855_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l85_c5_f855_return_output : unsigned(3 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l93_c7_e5a7]
signal BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l96_c10_e376]
signal BIN_OP_EQ_uart_mac_h_l96_c10_e376_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_e376_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l96_c10_e376_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l96_c7_f0e2]
signal state_MUX_uart_mac_h_l96_c7_f0e2_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l96_c7_f0e2_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_f0e2_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l96_c7_f0e2_return_output : unsigned(1 downto 0);

-- UNARY_OP_NOT[uart_mac_h_l103_c38_40cf]
signal UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_return_output : unsigned(0 downto 0);

-- BIN_OP_AND[uart_mac_h_l103_c16_c1d7]
signal BIN_OP_AND_uart_mac_h_l103_c16_c1d7_left : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_c1d7_right : unsigned(0 downto 0);
signal BIN_OP_AND_uart_mac_h_l103_c16_c1d7_return_output : unsigned(0 downto 0);

function CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uint1_t_stream_t is
 
  variable base : uart_rx_1b_t; 
  variable return_output : uint1_t_stream_t;
begin
      base.bit_stream.data := ref_toks_0;
      base.bit_stream.valid := ref_toks_1;

      return_output := base.bit_stream;
      return return_output; 
end function;

function CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690( ref_toks_0 : uint1_t_stream_t) return unsigned is
 
  variable base : uart_rx_1b_t; 
  variable return_output : unsigned(0 downto 0);
begin
      base.bit_stream := ref_toks_0;

      return_output := base.bit_stream.valid;
      return return_output; 
end function;

function CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe( ref_toks_0 : uint1_t_stream_t;
 ref_toks_1 : unsigned) return uart_rx_1b_t is
 
  variable base : uart_rx_1b_t; 
  variable return_output : uart_rx_1b_t;
begin
      base.bit_stream := ref_toks_0;
      base.overflow := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_h_l55_c6_1701 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l55_c6_1701 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l55_c6_1701_left,
BIN_OP_EQ_uart_mac_h_l55_c6_1701_right,
BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output);

-- state_MUX_uart_mac_h_l55_c3_404b : 0 clocks latency
state_MUX_uart_mac_h_l55_c3_404b : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l55_c3_404b_cond,
state_MUX_uart_mac_h_l55_c3_404b_iftrue,
state_MUX_uart_mac_h_l55_c3_404b_iffalse,
state_MUX_uart_mac_h_l55_c3_404b_return_output);

-- o_bit_stream_MUX_uart_mac_h_l55_c3_404b : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l55_c3_404b : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l55_c3_404b_cond,
o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iftrue,
o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iffalse,
o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output);

-- clk_counter_MUX_uart_mac_h_l55_c3_404b : 0 clocks latency
clk_counter_MUX_uart_mac_h_l55_c3_404b : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l55_c3_404b_cond,
clk_counter_MUX_uart_mac_h_l55_c3_404b_iftrue,
clk_counter_MUX_uart_mac_h_l55_c3_404b_iffalse,
clk_counter_MUX_uart_mac_h_l55_c3_404b_return_output);

-- bit_counter_MUX_uart_mac_h_l55_c3_404b : 0 clocks latency
bit_counter_MUX_uart_mac_h_l55_c3_404b : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l55_c3_404b_cond,
bit_counter_MUX_uart_mac_h_l55_c3_404b_iftrue,
bit_counter_MUX_uart_mac_h_l55_c3_404b_iffalse,
bit_counter_MUX_uart_mac_h_l55_c3_404b_return_output);

-- state_MUX_uart_mac_h_l58_c5_b4b9 : 0 clocks latency
state_MUX_uart_mac_h_l58_c5_b4b9 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l58_c5_b4b9_cond,
state_MUX_uart_mac_h_l58_c5_b4b9_iftrue,
state_MUX_uart_mac_h_l58_c5_b4b9_iffalse,
state_MUX_uart_mac_h_l58_c5_b4b9_return_output);

-- clk_counter_MUX_uart_mac_h_l58_c5_b4b9 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l58_c5_b4b9 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l58_c5_b4b9_cond,
clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iftrue,
clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iffalse,
clk_counter_MUX_uart_mac_h_l58_c5_b4b9_return_output);

-- BIN_OP_EQ_uart_mac_h_l65_c11_cc22 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l65_c11_cc22 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l65_c11_cc22_left,
BIN_OP_EQ_uart_mac_h_l65_c11_cc22_right,
BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output);

-- state_MUX_uart_mac_h_l65_c8_24b1 : 0 clocks latency
state_MUX_uart_mac_h_l65_c8_24b1 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l65_c8_24b1_cond,
state_MUX_uart_mac_h_l65_c8_24b1_iftrue,
state_MUX_uart_mac_h_l65_c8_24b1_iffalse,
state_MUX_uart_mac_h_l65_c8_24b1_return_output);

-- o_bit_stream_MUX_uart_mac_h_l65_c8_24b1 : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l65_c8_24b1 : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_cond,
o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iftrue,
o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iffalse,
o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_return_output);

-- clk_counter_MUX_uart_mac_h_l65_c8_24b1 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l65_c8_24b1 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l65_c8_24b1_cond,
clk_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue,
clk_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse,
clk_counter_MUX_uart_mac_h_l65_c8_24b1_return_output);

-- bit_counter_MUX_uart_mac_h_l65_c8_24b1 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l65_c8_24b1 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l65_c8_24b1_cond,
bit_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue,
bit_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse,
bit_counter_MUX_uart_mac_h_l65_c8_24b1_return_output);

-- BIN_OP_EQ_uart_mac_h_l68_c8_58e6 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l68_c8_58e6 : entity work.BIN_OP_EQ_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l68_c8_58e6_left,
BIN_OP_EQ_uart_mac_h_l68_c8_58e6_right,
BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output);

-- state_MUX_uart_mac_h_l68_c5_0485 : 0 clocks latency
state_MUX_uart_mac_h_l68_c5_0485 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l68_c5_0485_cond,
state_MUX_uart_mac_h_l68_c5_0485_iftrue,
state_MUX_uart_mac_h_l68_c5_0485_iffalse,
state_MUX_uart_mac_h_l68_c5_0485_return_output);

-- clk_counter_MUX_uart_mac_h_l68_c5_0485 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l68_c5_0485 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l68_c5_0485_cond,
clk_counter_MUX_uart_mac_h_l68_c5_0485_iftrue,
clk_counter_MUX_uart_mac_h_l68_c5_0485_iffalse,
clk_counter_MUX_uart_mac_h_l68_c5_0485_return_output);

-- bit_counter_MUX_uart_mac_h_l68_c5_0485 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l68_c5_0485 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l68_c5_0485_cond,
bit_counter_MUX_uart_mac_h_l68_c5_0485_iftrue,
bit_counter_MUX_uart_mac_h_l68_c5_0485_iffalse,
bit_counter_MUX_uart_mac_h_l68_c5_0485_return_output);

-- BIN_OP_PLUS_uart_mac_h_l71_c7_a048 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l71_c7_a048 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l71_c7_a048_left,
BIN_OP_PLUS_uart_mac_h_l71_c7_a048_right,
BIN_OP_PLUS_uart_mac_h_l71_c7_a048_return_output);

-- BIN_OP_GTE_uart_mac_h_l72_c10_8e7b : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l72_c10_8e7b : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_left,
BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_right,
BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output);

-- state_MUX_uart_mac_h_l72_c7_1594 : 0 clocks latency
state_MUX_uart_mac_h_l72_c7_1594 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l72_c7_1594_cond,
state_MUX_uart_mac_h_l72_c7_1594_iftrue,
state_MUX_uart_mac_h_l72_c7_1594_iffalse,
state_MUX_uart_mac_h_l72_c7_1594_return_output);

-- clk_counter_MUX_uart_mac_h_l72_c7_1594 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l72_c7_1594 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l72_c7_1594_cond,
clk_counter_MUX_uart_mac_h_l72_c7_1594_iftrue,
clk_counter_MUX_uart_mac_h_l72_c7_1594_iffalse,
clk_counter_MUX_uart_mac_h_l72_c7_1594_return_output);

-- bit_counter_MUX_uart_mac_h_l72_c7_1594 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l72_c7_1594 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l72_c7_1594_cond,
bit_counter_MUX_uart_mac_h_l72_c7_1594_iftrue,
bit_counter_MUX_uart_mac_h_l72_c7_1594_iffalse,
bit_counter_MUX_uart_mac_h_l72_c7_1594_return_output);

-- BIN_OP_EQ_uart_mac_h_l81_c11_c953 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l81_c11_c953 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l81_c11_c953_left,
BIN_OP_EQ_uart_mac_h_l81_c11_c953_right,
BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output);

-- state_MUX_uart_mac_h_l81_c8_8685 : 0 clocks latency
state_MUX_uart_mac_h_l81_c8_8685 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l81_c8_8685_cond,
state_MUX_uart_mac_h_l81_c8_8685_iftrue,
state_MUX_uart_mac_h_l81_c8_8685_iffalse,
state_MUX_uart_mac_h_l81_c8_8685_return_output);

-- o_bit_stream_MUX_uart_mac_h_l81_c8_8685 : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l81_c8_8685 : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l81_c8_8685_cond,
o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iftrue,
o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iffalse,
o_bit_stream_MUX_uart_mac_h_l81_c8_8685_return_output);

-- clk_counter_MUX_uart_mac_h_l81_c8_8685 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l81_c8_8685 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l81_c8_8685_cond,
clk_counter_MUX_uart_mac_h_l81_c8_8685_iftrue,
clk_counter_MUX_uart_mac_h_l81_c8_8685_iffalse,
clk_counter_MUX_uart_mac_h_l81_c8_8685_return_output);

-- bit_counter_MUX_uart_mac_h_l81_c8_8685 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l81_c8_8685 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l81_c8_8685_cond,
bit_counter_MUX_uart_mac_h_l81_c8_8685_iftrue,
bit_counter_MUX_uart_mac_h_l81_c8_8685_iffalse,
bit_counter_MUX_uart_mac_h_l81_c8_8685_return_output);

-- BIN_OP_PLUS_uart_mac_h_l84_c5_0e01 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l84_c5_0e01 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_left,
BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_right,
BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_return_output);

-- BIN_OP_GTE_uart_mac_h_l85_c8_abdb : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l85_c8_abdb : entity work.BIN_OP_GTE_uint16_t_uint16_t_0CLK_6f2c5aad port map (
BIN_OP_GTE_uart_mac_h_l85_c8_abdb_left,
BIN_OP_GTE_uart_mac_h_l85_c8_abdb_right,
BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output);

-- state_MUX_uart_mac_h_l85_c5_f855 : 0 clocks latency
state_MUX_uart_mac_h_l85_c5_f855 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l85_c5_f855_cond,
state_MUX_uart_mac_h_l85_c5_f855_iftrue,
state_MUX_uart_mac_h_l85_c5_f855_iffalse,
state_MUX_uart_mac_h_l85_c5_f855_return_output);

-- o_bit_stream_MUX_uart_mac_h_l85_c5_f855 : 0 clocks latency
o_bit_stream_MUX_uart_mac_h_l85_c5_f855 : entity work.MUX_uint1_t_uint1_t_stream_t_uint1_t_stream_t_0CLK_de264c78 port map (
o_bit_stream_MUX_uart_mac_h_l85_c5_f855_cond,
o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iftrue,
o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iffalse,
o_bit_stream_MUX_uart_mac_h_l85_c5_f855_return_output);

-- clk_counter_MUX_uart_mac_h_l85_c5_f855 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l85_c5_f855 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l85_c5_f855_cond,
clk_counter_MUX_uart_mac_h_l85_c5_f855_iftrue,
clk_counter_MUX_uart_mac_h_l85_c5_f855_iffalse,
clk_counter_MUX_uart_mac_h_l85_c5_f855_return_output);

-- bit_counter_MUX_uart_mac_h_l85_c5_f855 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l85_c5_f855 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l85_c5_f855_cond,
bit_counter_MUX_uart_mac_h_l85_c5_f855_iftrue,
bit_counter_MUX_uart_mac_h_l85_c5_f855_iffalse,
bit_counter_MUX_uart_mac_h_l85_c5_f855_return_output);

-- BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7 : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_left,
BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_right,
BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_return_output);

-- BIN_OP_EQ_uart_mac_h_l96_c10_e376 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l96_c10_e376 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l96_c10_e376_left,
BIN_OP_EQ_uart_mac_h_l96_c10_e376_right,
BIN_OP_EQ_uart_mac_h_l96_c10_e376_return_output);

-- state_MUX_uart_mac_h_l96_c7_f0e2 : 0 clocks latency
state_MUX_uart_mac_h_l96_c7_f0e2 : entity work.MUX_uint1_t_uart_rx_state_t_uart_rx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l96_c7_f0e2_cond,
state_MUX_uart_mac_h_l96_c7_f0e2_iftrue,
state_MUX_uart_mac_h_l96_c7_f0e2_iffalse,
state_MUX_uart_mac_h_l96_c7_f0e2_return_output);

-- UNARY_OP_NOT_uart_mac_h_l103_c38_40cf : 0 clocks latency
UNARY_OP_NOT_uart_mac_h_l103_c38_40cf : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_expr,
UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_return_output);

-- BIN_OP_AND_uart_mac_h_l103_c16_c1d7 : 0 clocks latency
BIN_OP_AND_uart_mac_h_l103_c16_c1d7 : entity work.BIN_OP_AND_uint1_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_AND_uart_mac_h_l103_c16_c1d7_left,
BIN_OP_AND_uart_mac_h_l103_c16_c1d7_right,
BIN_OP_AND_uart_mac_h_l103_c16_c1d7_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 input_wire,
 ready_for_bit_stream,
 -- Registers
 state,
 clk_counter,
 bit_counter,
 -- All submodule outputs
 BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output,
 state_MUX_uart_mac_h_l55_c3_404b_return_output,
 o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output,
 clk_counter_MUX_uart_mac_h_l55_c3_404b_return_output,
 bit_counter_MUX_uart_mac_h_l55_c3_404b_return_output,
 state_MUX_uart_mac_h_l58_c5_b4b9_return_output,
 clk_counter_MUX_uart_mac_h_l58_c5_b4b9_return_output,
 BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output,
 state_MUX_uart_mac_h_l65_c8_24b1_return_output,
 o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_return_output,
 clk_counter_MUX_uart_mac_h_l65_c8_24b1_return_output,
 bit_counter_MUX_uart_mac_h_l65_c8_24b1_return_output,
 BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output,
 state_MUX_uart_mac_h_l68_c5_0485_return_output,
 clk_counter_MUX_uart_mac_h_l68_c5_0485_return_output,
 bit_counter_MUX_uart_mac_h_l68_c5_0485_return_output,
 BIN_OP_PLUS_uart_mac_h_l71_c7_a048_return_output,
 BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output,
 state_MUX_uart_mac_h_l72_c7_1594_return_output,
 clk_counter_MUX_uart_mac_h_l72_c7_1594_return_output,
 bit_counter_MUX_uart_mac_h_l72_c7_1594_return_output,
 BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output,
 state_MUX_uart_mac_h_l81_c8_8685_return_output,
 o_bit_stream_MUX_uart_mac_h_l81_c8_8685_return_output,
 clk_counter_MUX_uart_mac_h_l81_c8_8685_return_output,
 bit_counter_MUX_uart_mac_h_l81_c8_8685_return_output,
 BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_return_output,
 BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output,
 state_MUX_uart_mac_h_l85_c5_f855_return_output,
 o_bit_stream_MUX_uart_mac_h_l85_c5_f855_return_output,
 clk_counter_MUX_uart_mac_h_l85_c5_f855_return_output,
 bit_counter_MUX_uart_mac_h_l85_c5_f855_return_output,
 BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_return_output,
 BIN_OP_EQ_uart_mac_h_l96_c10_e376_return_output,
 state_MUX_uart_mac_h_l96_c7_f0e2_return_output,
 UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_return_output,
 BIN_OP_AND_uart_mac_h_l103_c16_c1d7_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_rx_1b_t;
 variable VAR_input_wire : unsigned(0 downto 0);
 variable VAR_ready_for_bit_stream : unsigned(0 downto 0);
 variable VAR_o : uart_rx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_404b_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_b4b9_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_404b_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_24b1_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_404b_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_cond : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_b4b9_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_b4b9_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l58_c5_b4b9_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l62_c7_4423 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_24b1_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_0485_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_24b1_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_8685_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_left : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_0485_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_1594_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_0485_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l68_c5_0485_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l71_c7_cac0 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_1594_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_1594_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l72_c7_1594_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l76_c9_a5ab : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l77_c9_5a47 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_8685_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_f855_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_8685_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l84_c5_9e8c : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_right : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_f855_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_f0e2_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_f855_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iftrue : uint1_t_stream_t;
 variable VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_f855_return_output : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iffalse : uint1_t_stream_t;
 variable VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l88_c7_b631 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l93_c7_7453 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_f0e2_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_f0e2_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l96_c7_f0e2_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_123c_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_left : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_return_output : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_return_output : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_000a_return_output : uart_rx_1b_t;
 variable VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_b29a_return_output : uint1_t_stream_t;
 -- State registers comb logic variables
variable REG_VAR_state : unsigned(1 downto 0);
variable REG_VAR_clk_counter : unsigned(15 downto 0);
variable REG_VAR_bit_counter : unsigned(3 downto 0);
begin

  -- STATE REGS
  -- Default read regs into vars
  REG_VAR_state := state;
  REG_VAR_clk_counter := clk_counter;
  REG_VAR_bit_counter := bit_counter;
 -- Constants and things derived from constants alone
     -- Submodule level 0
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_right := to_unsigned(217, 16);
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_right := to_unsigned(1, 1);
     VAR_clk_counter_uart_mac_h_l88_c7_b631 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_iftrue := VAR_clk_counter_uart_mac_h_l88_c7_b631;
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_right := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_right := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_right := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_state_MUX_uart_mac_h_l96_c7_f0e2_iftrue := unsigned(uart_rx_state_t_to_slv(IDLE));
     VAR_clk_counter_uart_mac_h_l62_c7_4423 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iftrue := VAR_clk_counter_uart_mac_h_l62_c7_4423;
     VAR_clk_counter_uart_mac_h_l76_c9_a5ab := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_iftrue := VAR_clk_counter_uart_mac_h_l76_c9_a5ab;
     VAR_state_MUX_uart_mac_h_l58_c5_b4b9_iftrue := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_right := to_unsigned(0, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_right := to_unsigned(8, 4);
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_right := unsigned(uart_rx_state_t_to_slv(WAIT_START));
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_right := to_unsigned(108, 16);
     VAR_state_MUX_uart_mac_h_l72_c7_1594_iftrue := unsigned(uart_rx_state_t_to_slv(RECEIVE));
     VAR_bit_counter_uart_mac_h_l77_c9_5a47 := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_iftrue := VAR_bit_counter_uart_mac_h_l77_c9_5a47;
     -- CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_b29a LATENCY=0
     VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_b29a_return_output := uart_rx_1b_t_NULL.bit_stream;

     -- Submodule level 1
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_b29a_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iffalse := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_b29a_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_b29a_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iftrue := VAR_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_d41d_uart_mac_h_l55_l85_l65_l81_DUPLICATE_b29a_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_input_wire := input_wire;
     VAR_ready_for_bit_stream := ready_for_bit_stream;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_iftrue := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_iffalse := bit_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_left := clk_counter;
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_left := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_left := VAR_input_wire;
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_cond := VAR_input_wire;
     VAR_state_MUX_uart_mac_h_l58_c5_b4b9_cond := VAR_input_wire;
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_expr := VAR_ready_for_bit_stream;
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_left := state;
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_left := state;
     VAR_state_MUX_uart_mac_h_l58_c5_b4b9_iffalse := state;
     VAR_state_MUX_uart_mac_h_l68_c5_0485_iffalse := state;
     VAR_state_MUX_uart_mac_h_l72_c7_1594_iffalse := state;
     VAR_state_MUX_uart_mac_h_l81_c8_8685_iffalse := state;
     VAR_state_MUX_uart_mac_h_l85_c5_f855_iffalse := state;
     VAR_state_MUX_uart_mac_h_l96_c7_f0e2_iffalse := state;
     -- BIN_OP_EQ[uart_mac_h_l55_c6_1701] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l55_c6_1701_left <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_left;
     BIN_OP_EQ_uart_mac_h_l55_c6_1701_right <= VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output := BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output;

     -- clk_counter_MUX[uart_mac_h_l58_c5_b4b9] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l58_c5_b4b9_cond <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_cond;
     clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iftrue;
     clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_return_output := clk_counter_MUX_uart_mac_h_l58_c5_b4b9_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l84_c5_0e01] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_left <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_left;
     BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_right <= VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_return_output := BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_return_output;

     -- BIN_OP_EQ[uart_mac_h_l68_c8_58e6] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l68_c8_58e6_left <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_left;
     BIN_OP_EQ_uart_mac_h_l68_c8_58e6_right <= VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output := BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output;

     -- state_MUX[uart_mac_h_l58_c5_b4b9] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l58_c5_b4b9_cond <= VAR_state_MUX_uart_mac_h_l58_c5_b4b9_cond;
     state_MUX_uart_mac_h_l58_c5_b4b9_iftrue <= VAR_state_MUX_uart_mac_h_l58_c5_b4b9_iftrue;
     state_MUX_uart_mac_h_l58_c5_b4b9_iffalse <= VAR_state_MUX_uart_mac_h_l58_c5_b4b9_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l58_c5_b4b9_return_output := state_MUX_uart_mac_h_l58_c5_b4b9_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l71_c7_a048] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l71_c7_a048_left <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_left;
     BIN_OP_PLUS_uart_mac_h_l71_c7_a048_right <= VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_return_output := BIN_OP_PLUS_uart_mac_h_l71_c7_a048_return_output;

     -- o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6[uart_mac_h_l85_c5_f855] LATENCY=0
     VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_f855_return_output := CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6(
     VAR_input_wire,
     to_unsigned(1, 1));

     -- BIN_OP_EQ[uart_mac_h_l81_c11_c953] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l81_c11_c953_left <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_left;
     BIN_OP_EQ_uart_mac_h_l81_c11_c953_right <= VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output := BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output;

     -- BIN_OP_EQ[uart_mac_h_l65_c11_cc22] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l65_c11_cc22_left <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_left;
     BIN_OP_EQ_uart_mac_h_l65_c11_cc22_right <= VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output := BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l93_c7_e5a7] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_left <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_left;
     BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_right <= VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_return_output := BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_return_output;

     -- UNARY_OP_NOT[uart_mac_h_l103_c38_40cf] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_expr <= VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_return_output := UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_return_output;

     -- Submodule level 1
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_404b_cond := VAR_BIN_OP_EQ_uart_mac_h_l55_c6_1701_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_24b1_cond := VAR_BIN_OP_EQ_uart_mac_h_l65_c11_cc22_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_0485_cond := VAR_BIN_OP_EQ_uart_mac_h_l68_c8_58e6_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_8685_cond := VAR_BIN_OP_EQ_uart_mac_h_l81_c11_c953_return_output;
     VAR_clk_counter_uart_mac_h_l71_c7_cac0 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l71_c7_a048_return_output, 16);
     VAR_clk_counter_uart_mac_h_l84_c5_9e8c := resize(VAR_BIN_OP_PLUS_uart_mac_h_l84_c5_0e01_return_output, 16);
     VAR_bit_counter_uart_mac_h_l93_c7_7453 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l93_c7_e5a7_return_output, 4);
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_right := VAR_UNARY_OP_NOT_uart_mac_h_l103_c38_40cf_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_iftrue := VAR_clk_counter_MUX_uart_mac_h_l58_c5_b4b9_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iftrue := VAR_o_bit_stream_TRUE_INPUT_MUX_CONST_REF_RD_uint1_t_stream_t_uart_rx_1b_t_bit_stream_21b6_uart_mac_h_l85_c5_f855_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_404b_iftrue := VAR_state_MUX_uart_mac_h_l58_c5_b4b9_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_left := VAR_bit_counter_uart_mac_h_l93_c7_7453;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_iftrue := VAR_bit_counter_uart_mac_h_l93_c7_7453;
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_left := VAR_clk_counter_uart_mac_h_l71_c7_cac0;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_iffalse := VAR_clk_counter_uart_mac_h_l71_c7_cac0;
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_left := VAR_clk_counter_uart_mac_h_l84_c5_9e8c;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_iffalse := VAR_clk_counter_uart_mac_h_l84_c5_9e8c;
     -- BIN_OP_GTE[uart_mac_h_l72_c10_8e7b] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_left <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_left;
     BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_right <= VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output := BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output;

     -- BIN_OP_EQ[uart_mac_h_l96_c10_e376] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l96_c10_e376_left <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_left;
     BIN_OP_EQ_uart_mac_h_l96_c10_e376_right <= VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_return_output := BIN_OP_EQ_uart_mac_h_l96_c10_e376_return_output;

     -- BIN_OP_GTE[uart_mac_h_l85_c8_abdb] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l85_c8_abdb_left <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_left;
     BIN_OP_GTE_uart_mac_h_l85_c8_abdb_right <= VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output := BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output;

     -- Submodule level 2
     VAR_state_MUX_uart_mac_h_l96_c7_f0e2_cond := VAR_BIN_OP_EQ_uart_mac_h_l96_c10_e376_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output;
     VAR_state_MUX_uart_mac_h_l72_c7_1594_cond := VAR_BIN_OP_GTE_uart_mac_h_l72_c10_8e7b_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_f855_cond := VAR_BIN_OP_GTE_uart_mac_h_l85_c8_abdb_return_output;
     -- bit_counter_MUX[uart_mac_h_l72_c7_1594] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l72_c7_1594_cond <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_cond;
     bit_counter_MUX_uart_mac_h_l72_c7_1594_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_iftrue;
     bit_counter_MUX_uart_mac_h_l72_c7_1594_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_return_output := bit_counter_MUX_uart_mac_h_l72_c7_1594_return_output;

     -- clk_counter_MUX[uart_mac_h_l85_c5_f855] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l85_c5_f855_cond <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_cond;
     clk_counter_MUX_uart_mac_h_l85_c5_f855_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_iftrue;
     clk_counter_MUX_uart_mac_h_l85_c5_f855_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_return_output := clk_counter_MUX_uart_mac_h_l85_c5_f855_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l85_c5_f855] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l85_c5_f855_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_cond;
     o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iftrue;
     o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_return_output := o_bit_stream_MUX_uart_mac_h_l85_c5_f855_return_output;

     -- state_MUX[uart_mac_h_l96_c7_f0e2] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l96_c7_f0e2_cond <= VAR_state_MUX_uart_mac_h_l96_c7_f0e2_cond;
     state_MUX_uart_mac_h_l96_c7_f0e2_iftrue <= VAR_state_MUX_uart_mac_h_l96_c7_f0e2_iftrue;
     state_MUX_uart_mac_h_l96_c7_f0e2_iffalse <= VAR_state_MUX_uart_mac_h_l96_c7_f0e2_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l96_c7_f0e2_return_output := state_MUX_uart_mac_h_l96_c7_f0e2_return_output;

     -- state_MUX[uart_mac_h_l72_c7_1594] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l72_c7_1594_cond <= VAR_state_MUX_uart_mac_h_l72_c7_1594_cond;
     state_MUX_uart_mac_h_l72_c7_1594_iftrue <= VAR_state_MUX_uart_mac_h_l72_c7_1594_iftrue;
     state_MUX_uart_mac_h_l72_c7_1594_iffalse <= VAR_state_MUX_uart_mac_h_l72_c7_1594_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l72_c7_1594_return_output := state_MUX_uart_mac_h_l72_c7_1594_return_output;

     -- bit_counter_MUX[uart_mac_h_l85_c5_f855] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l85_c5_f855_cond <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_cond;
     bit_counter_MUX_uart_mac_h_l85_c5_f855_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_iftrue;
     bit_counter_MUX_uart_mac_h_l85_c5_f855_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_return_output := bit_counter_MUX_uart_mac_h_l85_c5_f855_return_output;

     -- clk_counter_MUX[uart_mac_h_l72_c7_1594] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l72_c7_1594_cond <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_cond;
     clk_counter_MUX_uart_mac_h_l72_c7_1594_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_iftrue;
     clk_counter_MUX_uart_mac_h_l72_c7_1594_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_return_output := clk_counter_MUX_uart_mac_h_l72_c7_1594_return_output;

     -- Submodule level 3
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_iftrue := VAR_bit_counter_MUX_uart_mac_h_l72_c7_1594_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_iftrue := VAR_bit_counter_MUX_uart_mac_h_l85_c5_f855_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_iftrue := VAR_clk_counter_MUX_uart_mac_h_l72_c7_1594_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_iftrue := VAR_clk_counter_MUX_uart_mac_h_l85_c5_f855_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iftrue := VAR_o_bit_stream_MUX_uart_mac_h_l85_c5_f855_return_output;
     VAR_state_MUX_uart_mac_h_l68_c5_0485_iftrue := VAR_state_MUX_uart_mac_h_l72_c7_1594_return_output;
     VAR_state_MUX_uart_mac_h_l85_c5_f855_iftrue := VAR_state_MUX_uart_mac_h_l96_c7_f0e2_return_output;
     -- state_MUX[uart_mac_h_l68_c5_0485] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l68_c5_0485_cond <= VAR_state_MUX_uart_mac_h_l68_c5_0485_cond;
     state_MUX_uart_mac_h_l68_c5_0485_iftrue <= VAR_state_MUX_uart_mac_h_l68_c5_0485_iftrue;
     state_MUX_uart_mac_h_l68_c5_0485_iffalse <= VAR_state_MUX_uart_mac_h_l68_c5_0485_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l68_c5_0485_return_output := state_MUX_uart_mac_h_l68_c5_0485_return_output;

     -- bit_counter_MUX[uart_mac_h_l68_c5_0485] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l68_c5_0485_cond <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_cond;
     bit_counter_MUX_uart_mac_h_l68_c5_0485_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_iftrue;
     bit_counter_MUX_uart_mac_h_l68_c5_0485_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_return_output := bit_counter_MUX_uart_mac_h_l68_c5_0485_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l81_c8_8685] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l81_c8_8685_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_cond;
     o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iftrue;
     o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_return_output := o_bit_stream_MUX_uart_mac_h_l81_c8_8685_return_output;

     -- clk_counter_MUX[uart_mac_h_l68_c5_0485] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l68_c5_0485_cond <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_cond;
     clk_counter_MUX_uart_mac_h_l68_c5_0485_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_iftrue;
     clk_counter_MUX_uart_mac_h_l68_c5_0485_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_return_output := clk_counter_MUX_uart_mac_h_l68_c5_0485_return_output;

     -- clk_counter_MUX[uart_mac_h_l81_c8_8685] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l81_c8_8685_cond <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_cond;
     clk_counter_MUX_uart_mac_h_l81_c8_8685_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_iftrue;
     clk_counter_MUX_uart_mac_h_l81_c8_8685_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_return_output := clk_counter_MUX_uart_mac_h_l81_c8_8685_return_output;

     -- state_MUX[uart_mac_h_l85_c5_f855] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l85_c5_f855_cond <= VAR_state_MUX_uart_mac_h_l85_c5_f855_cond;
     state_MUX_uart_mac_h_l85_c5_f855_iftrue <= VAR_state_MUX_uart_mac_h_l85_c5_f855_iftrue;
     state_MUX_uart_mac_h_l85_c5_f855_iffalse <= VAR_state_MUX_uart_mac_h_l85_c5_f855_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l85_c5_f855_return_output := state_MUX_uart_mac_h_l85_c5_f855_return_output;

     -- bit_counter_MUX[uart_mac_h_l81_c8_8685] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l81_c8_8685_cond <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_cond;
     bit_counter_MUX_uart_mac_h_l81_c8_8685_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_iftrue;
     bit_counter_MUX_uart_mac_h_l81_c8_8685_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_return_output := bit_counter_MUX_uart_mac_h_l81_c8_8685_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue := VAR_bit_counter_MUX_uart_mac_h_l68_c5_0485_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse := VAR_bit_counter_MUX_uart_mac_h_l81_c8_8685_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue := VAR_clk_counter_MUX_uart_mac_h_l68_c5_0485_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse := VAR_clk_counter_MUX_uart_mac_h_l81_c8_8685_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l81_c8_8685_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_24b1_iftrue := VAR_state_MUX_uart_mac_h_l68_c5_0485_return_output;
     VAR_state_MUX_uart_mac_h_l81_c8_8685_iftrue := VAR_state_MUX_uart_mac_h_l85_c5_f855_return_output;
     -- clk_counter_MUX[uart_mac_h_l65_c8_24b1] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l65_c8_24b1_cond <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_cond;
     clk_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue;
     clk_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_return_output := clk_counter_MUX_uart_mac_h_l65_c8_24b1_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l65_c8_24b1] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_cond;
     o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iftrue;
     o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_return_output := o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_return_output;

     -- state_MUX[uart_mac_h_l81_c8_8685] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l81_c8_8685_cond <= VAR_state_MUX_uart_mac_h_l81_c8_8685_cond;
     state_MUX_uart_mac_h_l81_c8_8685_iftrue <= VAR_state_MUX_uart_mac_h_l81_c8_8685_iftrue;
     state_MUX_uart_mac_h_l81_c8_8685_iffalse <= VAR_state_MUX_uart_mac_h_l81_c8_8685_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l81_c8_8685_return_output := state_MUX_uart_mac_h_l81_c8_8685_return_output;

     -- bit_counter_MUX[uart_mac_h_l65_c8_24b1] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l65_c8_24b1_cond <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_cond;
     bit_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_iftrue;
     bit_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_return_output := bit_counter_MUX_uart_mac_h_l65_c8_24b1_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_iffalse := VAR_bit_counter_MUX_uart_mac_h_l65_c8_24b1_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_iffalse := VAR_clk_counter_MUX_uart_mac_h_l65_c8_24b1_return_output;
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iffalse := VAR_o_bit_stream_MUX_uart_mac_h_l65_c8_24b1_return_output;
     VAR_state_MUX_uart_mac_h_l65_c8_24b1_iffalse := VAR_state_MUX_uart_mac_h_l81_c8_8685_return_output;
     -- state_MUX[uart_mac_h_l65_c8_24b1] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l65_c8_24b1_cond <= VAR_state_MUX_uart_mac_h_l65_c8_24b1_cond;
     state_MUX_uart_mac_h_l65_c8_24b1_iftrue <= VAR_state_MUX_uart_mac_h_l65_c8_24b1_iftrue;
     state_MUX_uart_mac_h_l65_c8_24b1_iffalse <= VAR_state_MUX_uart_mac_h_l65_c8_24b1_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l65_c8_24b1_return_output := state_MUX_uart_mac_h_l65_c8_24b1_return_output;

     -- o_bit_stream_MUX[uart_mac_h_l55_c3_404b] LATENCY=0
     -- Inputs
     o_bit_stream_MUX_uart_mac_h_l55_c3_404b_cond <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_cond;
     o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iftrue <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iftrue;
     o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iffalse <= VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_iffalse;
     -- Outputs
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output := o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output;

     -- clk_counter_MUX[uart_mac_h_l55_c3_404b] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l55_c3_404b_cond <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_cond;
     clk_counter_MUX_uart_mac_h_l55_c3_404b_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_iftrue;
     clk_counter_MUX_uart_mac_h_l55_c3_404b_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_return_output := clk_counter_MUX_uart_mac_h_l55_c3_404b_return_output;

     -- bit_counter_MUX[uart_mac_h_l55_c3_404b] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l55_c3_404b_cond <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_cond;
     bit_counter_MUX_uart_mac_h_l55_c3_404b_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_iftrue;
     bit_counter_MUX_uart_mac_h_l55_c3_404b_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_return_output := bit_counter_MUX_uart_mac_h_l55_c3_404b_return_output;

     -- Submodule level 6
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l55_c3_404b_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l55_c3_404b_return_output;
     VAR_state_MUX_uart_mac_h_l55_c3_404b_iffalse := VAR_state_MUX_uart_mac_h_l65_c8_24b1_return_output;
     -- state_MUX[uart_mac_h_l55_c3_404b] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l55_c3_404b_cond <= VAR_state_MUX_uart_mac_h_l55_c3_404b_cond;
     state_MUX_uart_mac_h_l55_c3_404b_iftrue <= VAR_state_MUX_uart_mac_h_l55_c3_404b_iftrue;
     state_MUX_uart_mac_h_l55_c3_404b_iffalse <= VAR_state_MUX_uart_mac_h_l55_c3_404b_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l55_c3_404b_return_output := state_MUX_uart_mac_h_l55_c3_404b_return_output;

     -- CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690[uart_mac_h_l103_c16_123c] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_123c_return_output := CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output);

     -- Submodule level 7
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_left := VAR_CONST_REF_RD_uint1_t_uart_rx_1b_t_bit_stream_valid_5690_uart_mac_h_l103_c16_123c_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l55_c3_404b_return_output;
     -- BIN_OP_AND[uart_mac_h_l103_c16_c1d7] LATENCY=0
     -- Inputs
     BIN_OP_AND_uart_mac_h_l103_c16_c1d7_left <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_left;
     BIN_OP_AND_uart_mac_h_l103_c16_c1d7_right <= VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_right;
     -- Outputs
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_return_output := BIN_OP_AND_uart_mac_h_l103_c16_c1d7_return_output;

     -- Submodule level 8
     -- CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe[uart_mac_h_l104_c10_000a] LATENCY=0
     VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_000a_return_output := CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe(
     VAR_o_bit_stream_MUX_uart_mac_h_l55_c3_404b_return_output,
     VAR_BIN_OP_AND_uart_mac_h_l103_c16_c1d7_return_output);

     -- Submodule level 9
     VAR_return_output := VAR_CONST_REF_RD_uart_rx_1b_t_uart_rx_1b_t_e2fe_uart_mac_h_l104_c10_000a_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

-- Write regs vars to comb logic
REG_COMB_state <= REG_VAR_state;
REG_COMB_clk_counter <= REG_VAR_clk_counter;
REG_COMB_bit_counter <= REG_VAR_bit_counter;
end process;

-- Register comb signals
process(clk) is
begin
 if rising_edge(clk) then
 if clk_en_internal='1' then
     state <= REG_COMB_state;
     clk_counter <= REG_COMB_clk_counter;
     bit_counter <= REG_COMB_bit_counter;
 end if;
 end if;
end process;

end arch;
