# ==============================================================================
# 1. CLOCK DEFINITIONS & MARGINS (Teman Doc Section 3)
# ==============================================================================
# 1.1 Parameterized Clock Period (50 MHz = 20.0 ns)
set CLK_PERIOD          20.0
set CLK_HALF_PERIOD     [expr {$CLK_PERIOD / 2.0}]

# 1.2 Primary Physical Master Clock
create_clock -name "PCLK" \
             -period $CLK_PERIOD \
             -waveform [list 0.0 $CLK_HALF_PERIOD] \
             [get_ports PCLK]

# 1.3 Virtual Clocks for Boundary Decoupling (Teman Doc Section 3.1.2 & 4.1.1)
create_clock -name "VCLK_APB" -period $CLK_PERIOD -waveform [list 0.0 $CLK_HALF_PERIOD]
create_clock -name "VCLK_RF"  -period $CLK_PERIOD -waveform [list 0.0 $CLK_HALF_PERIOD]

# 1.4 Pre-CTS Clock Uncertainty (Jitter + Skew Margin, Teman Doc Section 3.4)
set_clock_uncertainty -setup 0.5 [get_clocks PCLK]
set_clock_uncertainty -hold  0.1 [get_clocks PCLK]
set_clock_uncertainty -setup 0.5 [get_clocks {VCLK_APB VCLK_RF}]
set_clock_uncertainty -hold 0.1 [get_clocks {VCLK_APB VCLK_RF}]

# 1.5 Pre-CTS Clock Transition / Slew (Teman Doc Section 3.6.1)
set_clock_transition 0.2 [get_clocks PCLK]

# 1.6 High-Fanout Ideal Networks Pre-CTS (Teman Doc Section 3.5)
# Prevents synthesis from inserting unplaced, bloated buffer trees on PCLK/PRESETn.
set_ideal_network [get_ports PCLK]

# This reset is synchronous and feeds the flops' D-side logic. 
# It also fans out to every flop and into the PRESETn & ~ctrl_mode_changed AND gate. 
# An ideal network skips buffering and delay on it, which conflicts with your set_max_fanout 20. 
# The ideal network can also propagate through that AND gate and make the soft-reset path look ideal. 
# Keep set_ideal_network on PCLK only, and remove it after CTS.
# set_ideal_network [get_ports PRESETn]