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
-- Submodules: 41
entity uart_tx_1b_0CLK_ad3e9e5d is
port(
 clk : in std_logic;
 CLOCK_ENABLE : in unsigned(0 downto 0);
 bit_stream : in uint1_t_stream_t;
 return_output : out uart_tx_1b_t);
end uart_tx_1b_0CLK_ad3e9e5d;
architecture arch of uart_tx_1b_0CLK_ad3e9e5d is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function

-- All user state registers
signal state : unsigned(1 downto 0) := unsigned(uart_tx_state_t_to_slv(uart_tx_state_t'left));
signal clk_counter : unsigned(15 downto 0) := to_unsigned(0, 16);
signal bit_counter : unsigned(3 downto 0) := to_unsigned(0, 4);
signal REG_COMB_state : unsigned(1 downto 0);
signal REG_COMB_clk_counter : unsigned(15 downto 0);
signal REG_COMB_bit_counter : unsigned(3 downto 0);

-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
-- BIN_OP_EQ[uart_mac_h_l131_c6_9ca1]
signal BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l131_c3_9d5a]
signal state_MUX_uart_mac_h_l131_c3_9d5a_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l131_c3_9d5a_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_9d5a_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l131_c3_9d5a_return_output : unsigned(1 downto 0);

-- o_output_wire_MUX[uart_mac_h_l131_c3_9d5a]
signal o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l131_c3_9d5a]
signal clk_counter_MUX_uart_mac_h_l131_c3_9d5a_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output : unsigned(15 downto 0);

-- state_MUX[uart_mac_h_l135_c5_4d79]
signal state_MUX_uart_mac_h_l135_c5_4d79_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l135_c5_4d79_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_4d79_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l135_c5_4d79_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l135_c5_4d79]
signal clk_counter_MUX_uart_mac_h_l135_c5_4d79_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_4d79_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_4d79_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l135_c5_4d79_return_output : unsigned(15 downto 0);

-- BIN_OP_EQ[uart_mac_h_l143_c6_b862]
signal BIN_OP_EQ_uart_mac_h_l143_c6_b862_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_b862_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l143_c3_1af9]
signal state_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l143_c3_1af9_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_1af9_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l143_c3_1af9_return_output : unsigned(1 downto 0);

-- o_MUX[uart_mac_h_l143_c3_1af9]
signal o_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l143_c3_1af9_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_1af9_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l143_c3_1af9_return_output : uart_tx_1b_t;

-- clk_counter_MUX[uart_mac_h_l143_c3_1af9]
signal clk_counter_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l143_c3_1af9_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l143_c3_1af9]
signal bit_counter_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l143_c3_1af9_return_output : unsigned(3 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l147_c5_4943]
signal BIN_OP_PLUS_uart_mac_h_l147_c5_4943_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_4943_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l147_c5_4943_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l148_c8_4eb8]
signal BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l148_c5_5d37]
signal state_MUX_uart_mac_h_l148_c5_5d37_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l148_c5_5d37_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_5d37_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l148_c5_5d37_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l148_c5_5d37]
signal clk_counter_MUX_uart_mac_h_l148_c5_5d37_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l148_c5_5d37_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l148_c5_5d37]
signal bit_counter_MUX_uart_mac_h_l148_c5_5d37_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l148_c5_5d37_return_output : unsigned(3 downto 0);

-- BIN_OP_EQ[uart_mac_h_l156_c11_a4b4]
signal BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l156_c8_6b0c]
signal state_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l156_c8_6b0c_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_6b0c_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l156_c8_6b0c_return_output : unsigned(1 downto 0);

-- o_MUX[uart_mac_h_l156_c8_6b0c]
signal o_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
signal o_MUX_uart_mac_h_l156_c8_6b0c_iftrue : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_6b0c_iffalse : uart_tx_1b_t;
signal o_MUX_uart_mac_h_l156_c8_6b0c_return_output : uart_tx_1b_t;

-- clk_counter_MUX[uart_mac_h_l156_c8_6b0c]
signal clk_counter_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l156_c8_6b0c]
signal bit_counter_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output : unsigned(3 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l160_c5_d640]
signal BIN_OP_PLUS_uart_mac_h_l160_c5_d640_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_d640_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l160_c5_d640_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l161_c8_1b2d]
signal BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l161_c5_b2c0]
signal state_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(1 downto 0);

-- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_b2c0]
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(0 downto 0);
signal o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l161_c5_b2c0]
signal clk_counter_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(15 downto 0);

-- bit_counter_MUX[uart_mac_h_l161_c5_b2c0]
signal bit_counter_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(3 downto 0);
signal bit_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(3 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l168_c7_eb37]
signal BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_left : unsigned(3 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_return_output : unsigned(4 downto 0);

-- BIN_OP_EQ[uart_mac_h_l170_c10_c807]
signal BIN_OP_EQ_uart_mac_h_l170_c10_c807_left : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_c807_right : unsigned(3 downto 0);
signal BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l170_c7_c9f1]
signal state_MUX_uart_mac_h_l170_c7_c9f1_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l170_c7_c9f1_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_c9f1_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l170_c7_c9f1_return_output : unsigned(1 downto 0);

-- clk_counter_MUX[uart_mac_h_l170_c7_c9f1]
signal clk_counter_MUX_uart_mac_h_l170_c7_c9f1_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l170_c7_c9f1_return_output : unsigned(15 downto 0);

-- BIN_OP_EQ[uart_mac_h_l178_c11_2bbe]
signal BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_left : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_right : unsigned(1 downto 0);
signal BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l178_c8_e2cc]
signal state_MUX_uart_mac_h_l178_c8_e2cc_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l178_c8_e2cc_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_e2cc_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l178_c8_e2cc_return_output : unsigned(1 downto 0);

-- o_output_wire_MUX[uart_mac_h_l178_c8_e2cc]
signal o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_cond : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iftrue : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iffalse : unsigned(0 downto 0);
signal o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_return_output : unsigned(0 downto 0);

-- clk_counter_MUX[uart_mac_h_l178_c8_e2cc]
signal clk_counter_MUX_uart_mac_h_l178_c8_e2cc_cond : unsigned(0 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iftrue : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iffalse : unsigned(15 downto 0);
signal clk_counter_MUX_uart_mac_h_l178_c8_e2cc_return_output : unsigned(15 downto 0);

-- BIN_OP_PLUS[uart_mac_h_l182_c5_8861]
signal BIN_OP_PLUS_uart_mac_h_l182_c5_8861_left : unsigned(15 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_8861_right : unsigned(0 downto 0);
signal BIN_OP_PLUS_uart_mac_h_l182_c5_8861_return_output : unsigned(16 downto 0);

-- BIN_OP_GTE[uart_mac_h_l183_c8_d2a3]
signal BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_left : unsigned(15 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_right : unsigned(7 downto 0);
signal BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_return_output : unsigned(0 downto 0);

-- state_MUX[uart_mac_h_l183_c5_58b2]
signal state_MUX_uart_mac_h_l183_c5_58b2_cond : unsigned(0 downto 0);
signal state_MUX_uart_mac_h_l183_c5_58b2_iftrue : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_58b2_iffalse : unsigned(1 downto 0);
signal state_MUX_uart_mac_h_l183_c5_58b2_return_output : unsigned(1 downto 0);

function CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0( ref_toks_0 : uart_tx_1b_t;
 ref_toks_1 : unsigned) return uart_tx_1b_t is
 
  variable base : uart_tx_1b_t; 
  variable return_output : uart_tx_1b_t;
begin
      base := ref_toks_0;
      base.output_wire := ref_toks_1;

      return_output := base;
      return return_output; 
end function;

function CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877( ref_toks_0 : unsigned;
 ref_toks_1 : unsigned) return uart_tx_1b_t is
 
  variable base : uart_tx_1b_t; 
  variable return_output : uart_tx_1b_t;
begin
      base.output_wire := ref_toks_0;
      base.ready_for_bit_stream := ref_toks_1;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_EQ_uart_mac_h_l131_c6_9ca1 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l131_c6_9ca1 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_left,
BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_right,
BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output);

-- state_MUX_uart_mac_h_l131_c3_9d5a : 0 clocks latency
state_MUX_uart_mac_h_l131_c3_9d5a : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l131_c3_9d5a_cond,
state_MUX_uart_mac_h_l131_c3_9d5a_iftrue,
state_MUX_uart_mac_h_l131_c3_9d5a_iffalse,
state_MUX_uart_mac_h_l131_c3_9d5a_return_output);

-- o_output_wire_MUX_uart_mac_h_l131_c3_9d5a : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l131_c3_9d5a : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_cond,
o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iftrue,
o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iffalse,
o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_return_output);

-- clk_counter_MUX_uart_mac_h_l131_c3_9d5a : 0 clocks latency
clk_counter_MUX_uart_mac_h_l131_c3_9d5a : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l131_c3_9d5a_cond,
clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iftrue,
clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iffalse,
clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output);

-- state_MUX_uart_mac_h_l135_c5_4d79 : 0 clocks latency
state_MUX_uart_mac_h_l135_c5_4d79 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l135_c5_4d79_cond,
state_MUX_uart_mac_h_l135_c5_4d79_iftrue,
state_MUX_uart_mac_h_l135_c5_4d79_iffalse,
state_MUX_uart_mac_h_l135_c5_4d79_return_output);

-- clk_counter_MUX_uart_mac_h_l135_c5_4d79 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l135_c5_4d79 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l135_c5_4d79_cond,
clk_counter_MUX_uart_mac_h_l135_c5_4d79_iftrue,
clk_counter_MUX_uart_mac_h_l135_c5_4d79_iffalse,
clk_counter_MUX_uart_mac_h_l135_c5_4d79_return_output);

-- BIN_OP_EQ_uart_mac_h_l143_c6_b862 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l143_c6_b862 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l143_c6_b862_left,
BIN_OP_EQ_uart_mac_h_l143_c6_b862_right,
BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output);

-- state_MUX_uart_mac_h_l143_c3_1af9 : 0 clocks latency
state_MUX_uart_mac_h_l143_c3_1af9 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l143_c3_1af9_cond,
state_MUX_uart_mac_h_l143_c3_1af9_iftrue,
state_MUX_uart_mac_h_l143_c3_1af9_iffalse,
state_MUX_uart_mac_h_l143_c3_1af9_return_output);

-- o_MUX_uart_mac_h_l143_c3_1af9 : 0 clocks latency
o_MUX_uart_mac_h_l143_c3_1af9 : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l143_c3_1af9_cond,
o_MUX_uart_mac_h_l143_c3_1af9_iftrue,
o_MUX_uart_mac_h_l143_c3_1af9_iffalse,
o_MUX_uart_mac_h_l143_c3_1af9_return_output);

-- clk_counter_MUX_uart_mac_h_l143_c3_1af9 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l143_c3_1af9 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l143_c3_1af9_cond,
clk_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue,
clk_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse,
clk_counter_MUX_uart_mac_h_l143_c3_1af9_return_output);

-- bit_counter_MUX_uart_mac_h_l143_c3_1af9 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l143_c3_1af9 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l143_c3_1af9_cond,
bit_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue,
bit_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse,
bit_counter_MUX_uart_mac_h_l143_c3_1af9_return_output);

-- BIN_OP_PLUS_uart_mac_h_l147_c5_4943 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l147_c5_4943 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l147_c5_4943_left,
BIN_OP_PLUS_uart_mac_h_l147_c5_4943_right,
BIN_OP_PLUS_uart_mac_h_l147_c5_4943_return_output);

-- BIN_OP_GTE_uart_mac_h_l148_c8_4eb8 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l148_c8_4eb8 : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_left,
BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_right,
BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output);

-- state_MUX_uart_mac_h_l148_c5_5d37 : 0 clocks latency
state_MUX_uart_mac_h_l148_c5_5d37 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l148_c5_5d37_cond,
state_MUX_uart_mac_h_l148_c5_5d37_iftrue,
state_MUX_uart_mac_h_l148_c5_5d37_iffalse,
state_MUX_uart_mac_h_l148_c5_5d37_return_output);

-- clk_counter_MUX_uart_mac_h_l148_c5_5d37 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l148_c5_5d37 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l148_c5_5d37_cond,
clk_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue,
clk_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse,
clk_counter_MUX_uart_mac_h_l148_c5_5d37_return_output);

-- bit_counter_MUX_uart_mac_h_l148_c5_5d37 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l148_c5_5d37 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l148_c5_5d37_cond,
bit_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue,
bit_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse,
bit_counter_MUX_uart_mac_h_l148_c5_5d37_return_output);

-- BIN_OP_EQ_uart_mac_h_l156_c11_a4b4 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l156_c11_a4b4 : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_left,
BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_right,
BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output);

-- state_MUX_uart_mac_h_l156_c8_6b0c : 0 clocks latency
state_MUX_uart_mac_h_l156_c8_6b0c : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l156_c8_6b0c_cond,
state_MUX_uart_mac_h_l156_c8_6b0c_iftrue,
state_MUX_uart_mac_h_l156_c8_6b0c_iffalse,
state_MUX_uart_mac_h_l156_c8_6b0c_return_output);

-- o_MUX_uart_mac_h_l156_c8_6b0c : 0 clocks latency
o_MUX_uart_mac_h_l156_c8_6b0c : entity work.MUX_uint1_t_uart_tx_1b_t_uart_tx_1b_t_0CLK_de264c78 port map (
o_MUX_uart_mac_h_l156_c8_6b0c_cond,
o_MUX_uart_mac_h_l156_c8_6b0c_iftrue,
o_MUX_uart_mac_h_l156_c8_6b0c_iffalse,
o_MUX_uart_mac_h_l156_c8_6b0c_return_output);

-- clk_counter_MUX_uart_mac_h_l156_c8_6b0c : 0 clocks latency
clk_counter_MUX_uart_mac_h_l156_c8_6b0c : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l156_c8_6b0c_cond,
clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue,
clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse,
clk_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output);

-- bit_counter_MUX_uart_mac_h_l156_c8_6b0c : 0 clocks latency
bit_counter_MUX_uart_mac_h_l156_c8_6b0c : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l156_c8_6b0c_cond,
bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue,
bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse,
bit_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output);

-- BIN_OP_PLUS_uart_mac_h_l160_c5_d640 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l160_c5_d640 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l160_c5_d640_left,
BIN_OP_PLUS_uart_mac_h_l160_c5_d640_right,
BIN_OP_PLUS_uart_mac_h_l160_c5_d640_return_output);

-- BIN_OP_GTE_uart_mac_h_l161_c8_1b2d : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l161_c8_1b2d : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_left,
BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_right,
BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output);

-- state_MUX_uart_mac_h_l161_c5_b2c0 : 0 clocks latency
state_MUX_uart_mac_h_l161_c5_b2c0 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l161_c5_b2c0_cond,
state_MUX_uart_mac_h_l161_c5_b2c0_iftrue,
state_MUX_uart_mac_h_l161_c5_b2c0_iffalse,
state_MUX_uart_mac_h_l161_c5_b2c0_return_output);

-- o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0 : 0 clocks latency
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0 : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_cond,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iftrue,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iffalse,
o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_return_output);

-- clk_counter_MUX_uart_mac_h_l161_c5_b2c0 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l161_c5_b2c0 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l161_c5_b2c0_cond,
clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue,
clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse,
clk_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output);

-- bit_counter_MUX_uart_mac_h_l161_c5_b2c0 : 0 clocks latency
bit_counter_MUX_uart_mac_h_l161_c5_b2c0 : entity work.MUX_uint1_t_uint4_t_uint4_t_0CLK_de264c78 port map (
bit_counter_MUX_uart_mac_h_l161_c5_b2c0_cond,
bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue,
bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse,
bit_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output);

-- BIN_OP_PLUS_uart_mac_h_l168_c7_eb37 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l168_c7_eb37 : entity work.BIN_OP_PLUS_uint4_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_left,
BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_right,
BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_return_output);

-- BIN_OP_EQ_uart_mac_h_l170_c10_c807 : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l170_c10_c807 : entity work.BIN_OP_EQ_uint4_t_uint4_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l170_c10_c807_left,
BIN_OP_EQ_uart_mac_h_l170_c10_c807_right,
BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output);

-- state_MUX_uart_mac_h_l170_c7_c9f1 : 0 clocks latency
state_MUX_uart_mac_h_l170_c7_c9f1 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l170_c7_c9f1_cond,
state_MUX_uart_mac_h_l170_c7_c9f1_iftrue,
state_MUX_uart_mac_h_l170_c7_c9f1_iffalse,
state_MUX_uart_mac_h_l170_c7_c9f1_return_output);

-- clk_counter_MUX_uart_mac_h_l170_c7_c9f1 : 0 clocks latency
clk_counter_MUX_uart_mac_h_l170_c7_c9f1 : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l170_c7_c9f1_cond,
clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iftrue,
clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iffalse,
clk_counter_MUX_uart_mac_h_l170_c7_c9f1_return_output);

-- BIN_OP_EQ_uart_mac_h_l178_c11_2bbe : 0 clocks latency
BIN_OP_EQ_uart_mac_h_l178_c11_2bbe : entity work.BIN_OP_EQ_uint2_t_uint2_t_0CLK_de264c78 port map (
BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_left,
BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_right,
BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output);

-- state_MUX_uart_mac_h_l178_c8_e2cc : 0 clocks latency
state_MUX_uart_mac_h_l178_c8_e2cc : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l178_c8_e2cc_cond,
state_MUX_uart_mac_h_l178_c8_e2cc_iftrue,
state_MUX_uart_mac_h_l178_c8_e2cc_iffalse,
state_MUX_uart_mac_h_l178_c8_e2cc_return_output);

-- o_output_wire_MUX_uart_mac_h_l178_c8_e2cc : 0 clocks latency
o_output_wire_MUX_uart_mac_h_l178_c8_e2cc : entity work.MUX_uint1_t_uint1_t_uint1_t_0CLK_de264c78 port map (
o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_cond,
o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iftrue,
o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iffalse,
o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_return_output);

-- clk_counter_MUX_uart_mac_h_l178_c8_e2cc : 0 clocks latency
clk_counter_MUX_uart_mac_h_l178_c8_e2cc : entity work.MUX_uint1_t_uint16_t_uint16_t_0CLK_de264c78 port map (
clk_counter_MUX_uart_mac_h_l178_c8_e2cc_cond,
clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iftrue,
clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iffalse,
clk_counter_MUX_uart_mac_h_l178_c8_e2cc_return_output);

-- BIN_OP_PLUS_uart_mac_h_l182_c5_8861 : 0 clocks latency
BIN_OP_PLUS_uart_mac_h_l182_c5_8861 : entity work.BIN_OP_PLUS_uint16_t_uint1_t_0CLK_de264c78 port map (
BIN_OP_PLUS_uart_mac_h_l182_c5_8861_left,
BIN_OP_PLUS_uart_mac_h_l182_c5_8861_right,
BIN_OP_PLUS_uart_mac_h_l182_c5_8861_return_output);

-- BIN_OP_GTE_uart_mac_h_l183_c8_d2a3 : 0 clocks latency
BIN_OP_GTE_uart_mac_h_l183_c8_d2a3 : entity work.BIN_OP_GTE_uint16_t_uint8_t_0CLK_e595f783 port map (
BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_left,
BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_right,
BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_return_output);

-- state_MUX_uart_mac_h_l183_c5_58b2 : 0 clocks latency
state_MUX_uart_mac_h_l183_c5_58b2 : entity work.MUX_uint1_t_uart_tx_state_t_uart_tx_state_t_0CLK_de264c78 port map (
state_MUX_uart_mac_h_l183_c5_58b2_cond,
state_MUX_uart_mac_h_l183_c5_58b2_iftrue,
state_MUX_uart_mac_h_l183_c5_58b2_iffalse,
state_MUX_uart_mac_h_l183_c5_58b2_return_output);



-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Inputs
 bit_stream,
 -- Registers
 state,
 clk_counter,
 bit_counter,
 -- All submodule outputs
 BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output,
 state_MUX_uart_mac_h_l131_c3_9d5a_return_output,
 o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_return_output,
 clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output,
 state_MUX_uart_mac_h_l135_c5_4d79_return_output,
 clk_counter_MUX_uart_mac_h_l135_c5_4d79_return_output,
 BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output,
 state_MUX_uart_mac_h_l143_c3_1af9_return_output,
 o_MUX_uart_mac_h_l143_c3_1af9_return_output,
 clk_counter_MUX_uart_mac_h_l143_c3_1af9_return_output,
 bit_counter_MUX_uart_mac_h_l143_c3_1af9_return_output,
 BIN_OP_PLUS_uart_mac_h_l147_c5_4943_return_output,
 BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output,
 state_MUX_uart_mac_h_l148_c5_5d37_return_output,
 clk_counter_MUX_uart_mac_h_l148_c5_5d37_return_output,
 bit_counter_MUX_uart_mac_h_l148_c5_5d37_return_output,
 BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output,
 state_MUX_uart_mac_h_l156_c8_6b0c_return_output,
 o_MUX_uart_mac_h_l156_c8_6b0c_return_output,
 clk_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output,
 bit_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output,
 BIN_OP_PLUS_uart_mac_h_l160_c5_d640_return_output,
 BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output,
 state_MUX_uart_mac_h_l161_c5_b2c0_return_output,
 o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_return_output,
 clk_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output,
 bit_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output,
 BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_return_output,
 BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output,
 state_MUX_uart_mac_h_l170_c7_c9f1_return_output,
 clk_counter_MUX_uart_mac_h_l170_c7_c9f1_return_output,
 BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output,
 state_MUX_uart_mac_h_l178_c8_e2cc_return_output,
 o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_return_output,
 clk_counter_MUX_uart_mac_h_l178_c8_e2cc_return_output,
 BIN_OP_PLUS_uart_mac_h_l182_c5_8861_return_output,
 BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_return_output,
 state_MUX_uart_mac_h_l183_c5_58b2_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_return_output : uart_tx_1b_t;
 variable VAR_bit_stream : uint1_t_stream_t;
 variable VAR_o : uart_tx_1b_t;
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_9d5a_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_4d79_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_9d5a_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l131_c3_9d5a_cond : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_9d5a_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_c361_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_4d79_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_4d79_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l135_c5_4d79_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l139_c7_534b : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_1af9_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_5d37_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_1af9_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_6b0c_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_1af9_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l143_c3_1af9_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_1af9_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_1af9_iffalse : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_6b0c_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_1af9_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l147_c5_bd3d : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_5d37_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_5d37_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l148_c5_5d37_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l152_c7_8a53 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l153_c7_210a : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_6b0c_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_6b0c_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_e2cc_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
 variable VAR_o_MUX_uart_mac_h_l156_c8_6b0c_iftrue : uart_tx_1b_t;
 variable VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_6b0c_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_6b0c_iffalse : uart_tx_1b_t;
 variable VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_6b0c_return_output : uart_tx_1b_t;
 variable VAR_o_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_cond : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_f62d_return_output : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l160_c5_81a4 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_c9f1_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_b2c0_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_return_output : unsigned(0 downto 0);
 variable VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_return_output : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue : unsigned(3 downto 0);
 variable VAR_bit_counter_uart_mac_h_l168_c7_cf42 : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse : unsigned(3 downto 0);
 variable VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_uart_mac_h_l167_c7_9e18 : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_return_output : unsigned(4 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_left : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_right : unsigned(3 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_c9f1_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_c9f1_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l170_c7_c9f1_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l174_c9_cb33 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_left : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_right : unsigned(1 downto 0);
 variable VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_e2cc_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_58b2_return_output : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_e2cc_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l178_c8_e2cc_cond : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iftrue : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iffalse : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_return_output : unsigned(0 downto 0);
 variable VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_cond : unsigned(0 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iftrue : unsigned(15 downto 0);
 variable VAR_clk_counter_uart_mac_h_l182_c5_00c8 : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iffalse : unsigned(15 downto 0);
 variable VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_cond : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_right : unsigned(0 downto 0);
 variable VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_return_output : unsigned(16 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_left : unsigned(15 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_right : unsigned(7 downto 0);
 variable VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_return_output : unsigned(0 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_58b2_iftrue : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_58b2_iffalse : unsigned(1 downto 0);
 variable VAR_state_MUX_uart_mac_h_l183_c5_58b2_cond : unsigned(0 downto 0);
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
     VAR_clk_counter_uart_mac_h_l167_c7_9e18 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iffalse := VAR_clk_counter_uart_mac_h_l167_c7_9e18;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iftrue := to_unsigned(1, 1);
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iftrue := to_unsigned(1, 1);
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iftrue := to_unsigned(1, 1);
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_right := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_clk_counter_uart_mac_h_l139_c7_534b := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_iftrue := VAR_clk_counter_uart_mac_h_l139_c7_534b;
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_right := to_unsigned(216, 8);
     VAR_state_MUX_uart_mac_h_l148_c5_5d37_iftrue := unsigned(uart_tx_state_t_to_slv(TRANSMIT));
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_right := to_unsigned(1, 1);
     VAR_clk_counter_uart_mac_h_l152_c7_8a53 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue := VAR_clk_counter_uart_mac_h_l152_c7_8a53;
     VAR_state_MUX_uart_mac_h_l135_c5_4d79_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_right := unsigned(uart_tx_state_t_to_slv(SEND_START));
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_right := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_state_MUX_uart_mac_h_l170_c7_c9f1_iftrue := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_state_MUX_uart_mac_h_l183_c5_58b2_iftrue := unsigned(uart_tx_state_t_to_slv(IDLE));
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_right := unsigned(uart_tx_state_t_to_slv(SEND_STOP));
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_right := to_unsigned(8, 4);
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_right := to_unsigned(1, 1);
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_right := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_right := to_unsigned(215, 8);
     VAR_clk_counter_uart_mac_h_l174_c9_cb33 := resize(to_unsigned(0, 1), 16);
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iftrue := VAR_clk_counter_uart_mac_h_l174_c9_cb33;
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_right := to_unsigned(1, 1);
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_right := to_unsigned(216, 8);
     VAR_bit_counter_uart_mac_h_l153_c7_210a := resize(to_unsigned(0, 1), 4);
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue := VAR_bit_counter_uart_mac_h_l153_c7_210a;
     -- o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d[uart_mac_h_l161_c5_b2c0] LATENCY=0
     VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_b2c0_return_output := uart_tx_1b_t_NULL.ready_for_bit_stream;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l143_c3_1af9] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_1af9_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     to_unsigned(0, 1));

     -- o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d[uart_mac_h_l131_c3_9d5a] LATENCY=0
     VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_9d5a_return_output := uart_tx_1b_t_NULL.output_wire;

     -- Submodule level 1
     VAR_o_MUX_uart_mac_h_l143_c3_1af9_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l143_c3_1af9_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iffalse := VAR_o_output_wire_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_output_wire_d41d_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iffalse := VAR_o_ready_for_bit_stream_FALSE_INPUT_MUX_CONST_REF_RD_uint1_t_uart_tx_1b_t_ready_for_bit_stream_d41d_uart_mac_h_l161_c5_b2c0_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;
     -- Mux in inputs
     VAR_bit_stream := bit_stream;

     -- Submodule level 0
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_left := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse := bit_counter;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse := bit_counter;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iffalse := clk_counter;
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_iffalse := clk_counter;
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_left := state;
     VAR_state_MUX_uart_mac_h_l131_c3_9d5a_iffalse := state;
     VAR_state_MUX_uart_mac_h_l135_c5_4d79_iffalse := state;
     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d[uart_mac_h_l135_c8_c361] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_c361_return_output := VAR_bit_stream.valid;

     -- CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d[uart_mac_h_l159_c21_f62d] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_f62d_return_output := VAR_bit_stream.data;

     -- BIN_OP_EQ[uart_mac_h_l131_c6_9ca1] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_left <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_left;
     BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_right <= VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output := BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l168_c7_eb37] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_left <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_left;
     BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_right <= VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_return_output := BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_return_output;

     -- Submodule level 1
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_9d5a_cond := VAR_BIN_OP_EQ_uart_mac_h_l131_c6_9ca1_return_output;
     VAR_bit_counter_uart_mac_h_l168_c7_cf42 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l168_c7_eb37_return_output, 4);
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_c361_return_output;
     VAR_state_MUX_uart_mac_h_l135_c5_4d79_cond := VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_valid_d41d_uart_mac_h_l135_c8_c361_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_left := VAR_bit_counter_uart_mac_h_l168_c7_cf42;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue := VAR_bit_counter_uart_mac_h_l168_c7_cf42;
     -- o_output_wire_MUX[uart_mac_h_l131_c3_9d5a] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_cond <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_cond;
     o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iftrue;
     o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_return_output := o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_return_output;

     -- clk_counter_MUX[uart_mac_h_l135_c5_4d79] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l135_c5_4d79_cond <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_cond;
     clk_counter_MUX_uart_mac_h_l135_c5_4d79_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_iftrue;
     clk_counter_MUX_uart_mac_h_l135_c5_4d79_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_return_output := clk_counter_MUX_uart_mac_h_l135_c5_4d79_return_output;

     -- BIN_OP_EQ[uart_mac_h_l170_c10_c807] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l170_c10_c807_left <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_left;
     BIN_OP_EQ_uart_mac_h_l170_c10_c807_right <= VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output := BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output;

     -- state_MUX[uart_mac_h_l135_c5_4d79] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l135_c5_4d79_cond <= VAR_state_MUX_uart_mac_h_l135_c5_4d79_cond;
     state_MUX_uart_mac_h_l135_c5_4d79_iftrue <= VAR_state_MUX_uart_mac_h_l135_c5_4d79_iftrue;
     state_MUX_uart_mac_h_l135_c5_4d79_iffalse <= VAR_state_MUX_uart_mac_h_l135_c5_4d79_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l135_c5_4d79_return_output := state_MUX_uart_mac_h_l135_c5_4d79_return_output;

     -- Submodule level 2
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_c9f1_cond := VAR_BIN_OP_EQ_uart_mac_h_l170_c10_c807_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iftrue := VAR_clk_counter_MUX_uart_mac_h_l135_c5_4d79_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iffalse := VAR_o_output_wire_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_state_MUX_uart_mac_h_l131_c3_9d5a_iftrue := VAR_state_MUX_uart_mac_h_l135_c5_4d79_return_output;
     -- state_MUX[uart_mac_h_l131_c3_9d5a] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l131_c3_9d5a_cond <= VAR_state_MUX_uart_mac_h_l131_c3_9d5a_cond;
     state_MUX_uart_mac_h_l131_c3_9d5a_iftrue <= VAR_state_MUX_uart_mac_h_l131_c3_9d5a_iftrue;
     state_MUX_uart_mac_h_l131_c3_9d5a_iffalse <= VAR_state_MUX_uart_mac_h_l131_c3_9d5a_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output := state_MUX_uart_mac_h_l131_c3_9d5a_return_output;

     -- clk_counter_MUX[uart_mac_h_l170_c7_c9f1] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l170_c7_c9f1_cond <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_cond;
     clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iftrue;
     clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_return_output := clk_counter_MUX_uart_mac_h_l170_c7_c9f1_return_output;

     -- clk_counter_MUX[uart_mac_h_l131_c3_9d5a] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l131_c3_9d5a_cond <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_cond;
     clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iftrue;
     clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output := clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output;

     -- Submodule level 3
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_left := VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iffalse := VAR_clk_counter_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue := VAR_clk_counter_MUX_uart_mac_h_l170_c7_c9f1_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_left := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_left := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_left := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_5d37_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_b2c0_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_state_MUX_uart_mac_h_l170_c7_c9f1_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_e2cc_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_58b2_iffalse := VAR_state_MUX_uart_mac_h_l131_c3_9d5a_return_output;
     -- BIN_OP_EQ[uart_mac_h_l143_c6_b862] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l143_c6_b862_left <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_left;
     BIN_OP_EQ_uart_mac_h_l143_c6_b862_right <= VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output := BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output;

     -- state_MUX[uart_mac_h_l170_c7_c9f1] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l170_c7_c9f1_cond <= VAR_state_MUX_uart_mac_h_l170_c7_c9f1_cond;
     state_MUX_uart_mac_h_l170_c7_c9f1_iftrue <= VAR_state_MUX_uart_mac_h_l170_c7_c9f1_iftrue;
     state_MUX_uart_mac_h_l170_c7_c9f1_iffalse <= VAR_state_MUX_uart_mac_h_l170_c7_c9f1_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l170_c7_c9f1_return_output := state_MUX_uart_mac_h_l170_c7_c9f1_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l182_c5_8861] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l182_c5_8861_left <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_left;
     BIN_OP_PLUS_uart_mac_h_l182_c5_8861_right <= VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_return_output := BIN_OP_PLUS_uart_mac_h_l182_c5_8861_return_output;

     -- BIN_OP_EQ[uart_mac_h_l156_c11_a4b4] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_left <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_left;
     BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_right <= VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output := BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output;

     -- BIN_OP_EQ[uart_mac_h_l178_c11_2bbe] LATENCY=0
     -- Inputs
     BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_left <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_left;
     BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_right <= VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_right;
     -- Outputs
     VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output := BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l147_c5_4943] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l147_c5_4943_left <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_left;
     BIN_OP_PLUS_uart_mac_h_l147_c5_4943_right <= VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_return_output := BIN_OP_PLUS_uart_mac_h_l147_c5_4943_return_output;

     -- BIN_OP_PLUS[uart_mac_h_l160_c5_d640] LATENCY=0
     -- Inputs
     BIN_OP_PLUS_uart_mac_h_l160_c5_d640_left <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_left;
     BIN_OP_PLUS_uart_mac_h_l160_c5_d640_right <= VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_right;
     -- Outputs
     VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_return_output := BIN_OP_PLUS_uart_mac_h_l160_c5_d640_return_output;

     -- Submodule level 4
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_1af9_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_1af9_cond := VAR_BIN_OP_EQ_uart_mac_h_l143_c6_b862_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_6b0c_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_6b0c_cond := VAR_BIN_OP_EQ_uart_mac_h_l156_c11_a4b4_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output;
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_e2cc_cond := VAR_BIN_OP_EQ_uart_mac_h_l178_c11_2bbe_return_output;
     VAR_clk_counter_uart_mac_h_l147_c5_bd3d := resize(VAR_BIN_OP_PLUS_uart_mac_h_l147_c5_4943_return_output, 16);
     VAR_clk_counter_uart_mac_h_l160_c5_81a4 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l160_c5_d640_return_output, 16);
     VAR_clk_counter_uart_mac_h_l182_c5_00c8 := resize(VAR_BIN_OP_PLUS_uart_mac_h_l182_c5_8861_return_output, 16);
     VAR_state_MUX_uart_mac_h_l161_c5_b2c0_iftrue := VAR_state_MUX_uart_mac_h_l170_c7_c9f1_return_output;
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_left := VAR_clk_counter_uart_mac_h_l147_c5_bd3d;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse := VAR_clk_counter_uart_mac_h_l147_c5_bd3d;
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_left := VAR_clk_counter_uart_mac_h_l160_c5_81a4;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse := VAR_clk_counter_uart_mac_h_l160_c5_81a4;
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_left := VAR_clk_counter_uart_mac_h_l182_c5_00c8;
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iftrue := VAR_clk_counter_uart_mac_h_l182_c5_00c8;
     -- clk_counter_MUX[uart_mac_h_l178_c8_e2cc] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l178_c8_e2cc_cond <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_cond;
     clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iftrue;
     clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_return_output := clk_counter_MUX_uart_mac_h_l178_c8_e2cc_return_output;

     -- BIN_OP_GTE[uart_mac_h_l183_c8_d2a3] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_left <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_left;
     BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_right <= VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_return_output := BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_return_output;

     -- BIN_OP_GTE[uart_mac_h_l148_c8_4eb8] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_left <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_left;
     BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_right <= VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output := BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output;

     -- BIN_OP_GTE[uart_mac_h_l161_c8_1b2d] LATENCY=0
     -- Inputs
     BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_left <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_left;
     BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_right <= VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_right;
     -- Outputs
     VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output := BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output;

     -- o_output_wire_MUX[uart_mac_h_l178_c8_e2cc] LATENCY=0
     -- Inputs
     o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_cond <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_cond;
     o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iftrue <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iftrue;
     o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iffalse <= VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_iffalse;
     -- Outputs
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_return_output := o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_return_output;

     -- Submodule level 5
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output;
     VAR_state_MUX_uart_mac_h_l148_c5_5d37_cond := VAR_BIN_OP_GTE_uart_mac_h_l148_c8_4eb8_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output;
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output;
     VAR_state_MUX_uart_mac_h_l161_c5_b2c0_cond := VAR_BIN_OP_GTE_uart_mac_h_l161_c8_1b2d_return_output;
     VAR_state_MUX_uart_mac_h_l183_c5_58b2_cond := VAR_BIN_OP_GTE_uart_mac_h_l183_c8_d2a3_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse := VAR_clk_counter_MUX_uart_mac_h_l178_c8_e2cc_return_output;
     -- state_MUX[uart_mac_h_l183_c5_58b2] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l183_c5_58b2_cond <= VAR_state_MUX_uart_mac_h_l183_c5_58b2_cond;
     state_MUX_uart_mac_h_l183_c5_58b2_iftrue <= VAR_state_MUX_uart_mac_h_l183_c5_58b2_iftrue;
     state_MUX_uart_mac_h_l183_c5_58b2_iffalse <= VAR_state_MUX_uart_mac_h_l183_c5_58b2_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l183_c5_58b2_return_output := state_MUX_uart_mac_h_l183_c5_58b2_return_output;

     -- bit_counter_MUX[uart_mac_h_l161_c5_b2c0] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l161_c5_b2c0_cond <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_cond;
     bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue;
     bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output := bit_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output;

     -- clk_counter_MUX[uart_mac_h_l148_c5_5d37] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l148_c5_5d37_cond <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_cond;
     clk_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue;
     clk_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_return_output := clk_counter_MUX_uart_mac_h_l148_c5_5d37_return_output;

     -- o_ready_for_bit_stream_MUX[uart_mac_h_l161_c5_b2c0] LATENCY=0
     -- Inputs
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_cond <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_cond;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iftrue <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iftrue;
     o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iffalse <= VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_iffalse;
     -- Outputs
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_return_output := o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_return_output;

     -- bit_counter_MUX[uart_mac_h_l148_c5_5d37] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l148_c5_5d37_cond <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_cond;
     bit_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_iftrue;
     bit_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_return_output := bit_counter_MUX_uart_mac_h_l148_c5_5d37_return_output;

     -- clk_counter_MUX[uart_mac_h_l161_c5_b2c0] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l161_c5_b2c0_cond <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_cond;
     clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iftrue;
     clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output := clk_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output;

     -- state_MUX[uart_mac_h_l161_c5_b2c0] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l161_c5_b2c0_cond <= VAR_state_MUX_uart_mac_h_l161_c5_b2c0_cond;
     state_MUX_uart_mac_h_l161_c5_b2c0_iftrue <= VAR_state_MUX_uart_mac_h_l161_c5_b2c0_iftrue;
     state_MUX_uart_mac_h_l161_c5_b2c0_iffalse <= VAR_state_MUX_uart_mac_h_l161_c5_b2c0_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l161_c5_b2c0_return_output := state_MUX_uart_mac_h_l161_c5_b2c0_return_output;

     -- o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0[uart_mac_h_l156_c8_6b0c] LATENCY=0
     VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_6b0c_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0(
     uart_tx_1b_t_NULL,
     VAR_o_output_wire_MUX_uart_mac_h_l178_c8_e2cc_return_output);

     -- state_MUX[uart_mac_h_l148_c5_5d37] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l148_c5_5d37_cond <= VAR_state_MUX_uart_mac_h_l148_c5_5d37_cond;
     state_MUX_uart_mac_h_l148_c5_5d37_iftrue <= VAR_state_MUX_uart_mac_h_l148_c5_5d37_iftrue;
     state_MUX_uart_mac_h_l148_c5_5d37_iffalse <= VAR_state_MUX_uart_mac_h_l148_c5_5d37_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l148_c5_5d37_return_output := state_MUX_uart_mac_h_l148_c5_5d37_return_output;

     -- Submodule level 6
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue := VAR_bit_counter_MUX_uart_mac_h_l148_c5_5d37_return_output;
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue := VAR_bit_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue := VAR_clk_counter_MUX_uart_mac_h_l148_c5_5d37_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue := VAR_clk_counter_MUX_uart_mac_h_l161_c5_b2c0_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_6b0c_iffalse := VAR_o_FALSE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_26c0_uart_mac_h_l156_c8_6b0c_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_1af9_iftrue := VAR_state_MUX_uart_mac_h_l148_c5_5d37_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_6b0c_iftrue := VAR_state_MUX_uart_mac_h_l161_c5_b2c0_return_output;
     VAR_state_MUX_uart_mac_h_l178_c8_e2cc_iftrue := VAR_state_MUX_uart_mac_h_l183_c5_58b2_return_output;
     -- clk_counter_MUX[uart_mac_h_l156_c8_6b0c] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l156_c8_6b0c_cond <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_cond;
     clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue;
     clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output := clk_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output;

     -- bit_counter_MUX[uart_mac_h_l156_c8_6b0c] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l156_c8_6b0c_cond <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_cond;
     bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iftrue;
     bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output := bit_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output;

     -- o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877[uart_mac_h_l156_c8_6b0c] LATENCY=0
     VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_6b0c_return_output := CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877(
     VAR_CONST_REF_RD_uint1_t_uint1_t_stream_t_data_d41d_uart_mac_h_l159_c21_f62d_return_output,
     VAR_o_ready_for_bit_stream_MUX_uart_mac_h_l161_c5_b2c0_return_output);

     -- state_MUX[uart_mac_h_l178_c8_e2cc] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l178_c8_e2cc_cond <= VAR_state_MUX_uart_mac_h_l178_c8_e2cc_cond;
     state_MUX_uart_mac_h_l178_c8_e2cc_iftrue <= VAR_state_MUX_uart_mac_h_l178_c8_e2cc_iftrue;
     state_MUX_uart_mac_h_l178_c8_e2cc_iffalse <= VAR_state_MUX_uart_mac_h_l178_c8_e2cc_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l178_c8_e2cc_return_output := state_MUX_uart_mac_h_l178_c8_e2cc_return_output;

     -- Submodule level 7
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse := VAR_bit_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output;
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse := VAR_clk_counter_MUX_uart_mac_h_l156_c8_6b0c_return_output;
     VAR_o_MUX_uart_mac_h_l156_c8_6b0c_iftrue := VAR_o_TRUE_INPUT_MUX_CONST_REF_RD_uart_tx_1b_t_uart_tx_1b_t_f877_uart_mac_h_l156_c8_6b0c_return_output;
     VAR_state_MUX_uart_mac_h_l156_c8_6b0c_iffalse := VAR_state_MUX_uart_mac_h_l178_c8_e2cc_return_output;
     -- bit_counter_MUX[uart_mac_h_l143_c3_1af9] LATENCY=0
     -- Inputs
     bit_counter_MUX_uart_mac_h_l143_c3_1af9_cond <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_cond;
     bit_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue;
     bit_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse <= VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse;
     -- Outputs
     VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_return_output := bit_counter_MUX_uart_mac_h_l143_c3_1af9_return_output;

     -- state_MUX[uart_mac_h_l156_c8_6b0c] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l156_c8_6b0c_cond <= VAR_state_MUX_uart_mac_h_l156_c8_6b0c_cond;
     state_MUX_uart_mac_h_l156_c8_6b0c_iftrue <= VAR_state_MUX_uart_mac_h_l156_c8_6b0c_iftrue;
     state_MUX_uart_mac_h_l156_c8_6b0c_iffalse <= VAR_state_MUX_uart_mac_h_l156_c8_6b0c_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l156_c8_6b0c_return_output := state_MUX_uart_mac_h_l156_c8_6b0c_return_output;

     -- o_MUX[uart_mac_h_l156_c8_6b0c] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l156_c8_6b0c_cond <= VAR_o_MUX_uart_mac_h_l156_c8_6b0c_cond;
     o_MUX_uart_mac_h_l156_c8_6b0c_iftrue <= VAR_o_MUX_uart_mac_h_l156_c8_6b0c_iftrue;
     o_MUX_uart_mac_h_l156_c8_6b0c_iffalse <= VAR_o_MUX_uart_mac_h_l156_c8_6b0c_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l156_c8_6b0c_return_output := o_MUX_uart_mac_h_l156_c8_6b0c_return_output;

     -- clk_counter_MUX[uart_mac_h_l143_c3_1af9] LATENCY=0
     -- Inputs
     clk_counter_MUX_uart_mac_h_l143_c3_1af9_cond <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_cond;
     clk_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_iftrue;
     clk_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse <= VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_iffalse;
     -- Outputs
     VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_return_output := clk_counter_MUX_uart_mac_h_l143_c3_1af9_return_output;

     -- Submodule level 8
     REG_VAR_bit_counter := VAR_bit_counter_MUX_uart_mac_h_l143_c3_1af9_return_output;
     REG_VAR_clk_counter := VAR_clk_counter_MUX_uart_mac_h_l143_c3_1af9_return_output;
     VAR_o_MUX_uart_mac_h_l143_c3_1af9_iffalse := VAR_o_MUX_uart_mac_h_l156_c8_6b0c_return_output;
     VAR_state_MUX_uart_mac_h_l143_c3_1af9_iffalse := VAR_state_MUX_uart_mac_h_l156_c8_6b0c_return_output;
     -- state_MUX[uart_mac_h_l143_c3_1af9] LATENCY=0
     -- Inputs
     state_MUX_uart_mac_h_l143_c3_1af9_cond <= VAR_state_MUX_uart_mac_h_l143_c3_1af9_cond;
     state_MUX_uart_mac_h_l143_c3_1af9_iftrue <= VAR_state_MUX_uart_mac_h_l143_c3_1af9_iftrue;
     state_MUX_uart_mac_h_l143_c3_1af9_iffalse <= VAR_state_MUX_uart_mac_h_l143_c3_1af9_iffalse;
     -- Outputs
     VAR_state_MUX_uart_mac_h_l143_c3_1af9_return_output := state_MUX_uart_mac_h_l143_c3_1af9_return_output;

     -- o_MUX[uart_mac_h_l143_c3_1af9] LATENCY=0
     -- Inputs
     o_MUX_uart_mac_h_l143_c3_1af9_cond <= VAR_o_MUX_uart_mac_h_l143_c3_1af9_cond;
     o_MUX_uart_mac_h_l143_c3_1af9_iftrue <= VAR_o_MUX_uart_mac_h_l143_c3_1af9_iftrue;
     o_MUX_uart_mac_h_l143_c3_1af9_iffalse <= VAR_o_MUX_uart_mac_h_l143_c3_1af9_iffalse;
     -- Outputs
     VAR_o_MUX_uart_mac_h_l143_c3_1af9_return_output := o_MUX_uart_mac_h_l143_c3_1af9_return_output;

     -- Submodule level 9
     VAR_return_output := VAR_o_MUX_uart_mac_h_l143_c3_1af9_return_output;
     REG_VAR_state := VAR_state_MUX_uart_mac_h_l143_c3_1af9_return_output;
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
