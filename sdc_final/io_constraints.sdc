# ==============================================================================
# 2. I/O INTERFACE TIMING & ELECTRICAL MODELING (Teman Doc Section 4)
# ==============================================================================

# ------------------------------------------------------------------------------
# 2.1 APB Bus Matrix (Internal SoC Interconnect)
# ------------------------------------------------------------------------------
set_input_delay  -clock VCLK_APB -max 6.0 [get_ports {PSEL PENABLE PWRITE PADDR[*] PWDATA[*]}]
set_input_delay  -clock VCLK_APB -min 0.5 [get_ports {PSEL PENABLE PWRITE PADDR[*] PWDATA[*]}]

set_output_delay -clock VCLK_APB -max  6.0 [get_ports {PRDATA[*] PREADY}]
set_output_delay -clock VCLK_APB -min 0.5 [get_ports {PRDATA[*] PREADY}]

set_driving_cell -lib_cell bufbd2 [get_ports {PSEL PENABLE PWRITE PADDR[*] PWDATA[*]}]
set_load 0.02 [get_ports {PRDATA[*] PREADY}]

# ------------------------------------------------------------------------------
# 2.2 RF Analog Front-End (External Pad Ring Boundary)
# ------------------------------------------------------------------------------
set_input_delay  -clock VCLK_RF -max 10.0 [get_ports rfid_rx_bit]
set_input_delay  -clock VCLK_RF -min  1.0 [get_ports rfid_rx_bit]

set_output_delay -clock VCLK_RF -max  10.0 [get_ports rfid_tx_bit]
set_output_delay -clock VCLK_RF -min  1.0 [get_ports rfid_tx_bit]

set_driving_cell -lib_cell bufbd4 [get_ports rfid_rx_bit]
set_load 0.10 [get_ports rfid_tx_bit]

# ------------------------------------------------------------------------------
# 2.3 System Reset: PRESETn
# ------------------------------------------------------------------------------
# Enforces real recovery (setup) and removal (hold) checks on reset deassertion.
set_input_delay  -clock PCLK -max 6.0 [get_ports PRESETn]
set_input_delay  -clock PCLK -min 0.5 [get_ports PRESETn]
set_driving_cell -lib_cell bufbd4     [get_ports PRESETn]