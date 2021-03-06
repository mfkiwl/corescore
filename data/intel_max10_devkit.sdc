# Main system clock (25 Mhz)
create_clock -name "clk" -period 20.000 [get_ports {clk50}]

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
derive_clock_uncertainty
