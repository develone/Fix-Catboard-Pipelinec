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
-- Submodules: 4
entity BIN_OP_GTE_uint8_t_uint8_t_0CLK_6f2c5aad is
port(
 left : in unsigned(7 downto 0);
 right : in unsigned(7 downto 0);
 return_output : out unsigned(0 downto 0));
end BIN_OP_GTE_uint8_t_uint8_t_0CLK_6f2c5aad;
architecture arch of BIN_OP_GTE_uint8_t_uint8_t_0CLK_6f2c5aad is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Each function instance gets signals
-- BIN_OP_MINUS[BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2]
signal BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_left : signed(8 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_right : signed(8 downto 0);
signal BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_return_output : signed(9 downto 0);

-- UNARY_OP_NOT[BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914]
signal UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_expr : unsigned(0 downto 0);
signal UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_return_output : unsigned(0 downto 0);

function CAST_TO_int9_t_uint8_t( rhs : unsigned) return signed is

  --variable rhs : unsigned(7 downto 0);
  variable return_output : signed(8 downto 0);

begin

      return_output := signed(std_logic_vector(resize(rhs,9)));
    return return_output;
end function;

function int9_8_8( x : signed) return unsigned is
--variable x : signed(8 downto 0);
  variable return_output : unsigned(0 downto 0);
begin
for i in 0 to return_output'length-1 loop
        return_output(i) := x(8- i);
      end loop;
return return_output;
end function;


begin

-- SUBMODULE INSTANCES 
-- BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2 : 0 clocks latency
BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2 : entity work.BIN_OP_MINUS_int9_t_int9_t_0CLK_de264c78 port map (
BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_left,
BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_right,
BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_return_output);

-- UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914 : 0 clocks latency
UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914 : entity work.UNARY_OP_NOT_uint1_t_0CLK_de264c78 port map (
UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_expr,
UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_return_output);



-- Combinatorial process for pipeline stages
process (
 -- Inputs
 left,
 right,
 -- All submodule outputs
 BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_return_output,
 UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_return_output)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_left : unsigned(7 downto 0);
 variable VAR_right : unsigned(7 downto 0);
 variable VAR_return_output : unsigned(0 downto 0);
 variable VAR_left_bot : unsigned(7 downto 0);
 variable VAR_right_bot : unsigned(7 downto 0);
 variable VAR_right_bot_BIN_OP_GTE_uint8_t_uint8_t_c_l10_c13_2b6a_0 : unsigned(7 downto 0);
 variable VAR_rv : unsigned(0 downto 0);
 variable VAR_sub : signed(8 downto 0);
 variable VAR_sub_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c12_1161_0 : signed(8 downto 0);
 variable VAR_CAST_TO_int9_t_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_d8b6_return_output : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_left : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_right : signed(8 downto 0);
 variable VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_return_output : signed(9 downto 0);
 variable VAR_lt_zero : unsigned(0 downto 0);
 variable VAR_int9_8_8_BIN_OP_GTE_uint8_t_uint8_t_c_l15_c23_146b_return_output : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_expr : unsigned(0 downto 0);
 variable VAR_UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_return_output : unsigned(0 downto 0);
begin

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in inputs
     VAR_left := left;
     VAR_right := right;

     -- Submodule level 0
     VAR_right_bot_BIN_OP_GTE_uint8_t_uint8_t_c_l10_c13_2b6a_0 := VAR_right;
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_right := signed(std_logic_vector(resize(VAR_right_bot_BIN_OP_GTE_uint8_t_uint8_t_c_l10_c13_2b6a_0, 9)));
     -- CAST_TO_int9_t[BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_d8b6] LATENCY=0
     VAR_CAST_TO_int9_t_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_d8b6_return_output := CAST_TO_int9_t_uint8_t(
     VAR_left);

     -- Submodule level 1
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_left := VAR_CAST_TO_int9_t_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_d8b6_return_output;
     -- BIN_OP_MINUS[BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2] LATENCY=0
     -- Inputs
     BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_left <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_left;
     BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_right <= VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_right;
     -- Outputs
     VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_return_output := BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_return_output;

     -- Submodule level 2
     VAR_sub_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c12_1161_0 := resize(VAR_BIN_OP_MINUS_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c18_4db2_return_output, 9);
     -- int9_8_8[BIN_OP_GTE_uint8_t_uint8_t_c_l15_c23_146b] LATENCY=0
     VAR_int9_8_8_BIN_OP_GTE_uint8_t_uint8_t_c_l15_c23_146b_return_output := int9_8_8(
     VAR_sub_BIN_OP_GTE_uint8_t_uint8_t_c_l14_c12_1161_0);

     -- Submodule level 3
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_expr := VAR_int9_8_8_BIN_OP_GTE_uint8_t_uint8_t_c_l15_c23_146b_return_output;
     -- UNARY_OP_NOT[BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914] LATENCY=0
     -- Inputs
     UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_expr <= VAR_UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_expr;
     -- Outputs
     VAR_UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_return_output := UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_return_output;

     -- Submodule level 4
     VAR_return_output := VAR_UNARY_OP_NOT_BIN_OP_GTE_uint8_t_uint8_t_c_l16_c11_f914_return_output;
     -- Last stage of pipeline return wire to return port/reg
     return_output <= VAR_return_output;
   end if;
 end loop;

end process;

end arch;
