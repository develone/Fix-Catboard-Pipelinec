#include "top.h"
 
// Get clock rate constant PLL_CLK_MHZ from header written by make flow
#include "pll_clk_mhz.h"
DECL_INPUT(uint1_t, pll_clk)
CLK_MHZ(pll_clk, PLL_CLK_MHZ) 
#define N 22
#define count_t uint23_t
//clk_25p0_out <= clk_25p0;
//#pragma MAIN_MHZ blinky_main 12.0
MAIN_MHZ(blinky_main, PLL_CLK_MHZ)
void blinky_main(){
  static count_t counter;
  led_r = 1;
  led_g = counter >> N;
  led_b = 1;
  counter += 1;
}

#pragma MAIN_MHZ uart_main 12.0
void uart_main(){
  // TODO, loopback wire for now
  uart_tx = uart_rx;
  /*
  TODO UART MAC LOOPBACK
// RX side
// Globally visible ports / wires
// Inputs
uint1_t uart_rx_mac_out_ready;
// Outputs
stream(uint8_t) uart_rx_mac_word_out;
uint1_t uart_rx_mac_overflow;
// TX side
// Globally visible ports / wires
// Inputs
stream(uint8_t) uart_tx_mac_word_in;
// Outputs
uint1_t uart_tx_mac_in_ready;
*/
}
