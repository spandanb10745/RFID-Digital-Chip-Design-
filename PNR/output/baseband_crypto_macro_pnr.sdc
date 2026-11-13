################################################################################
#
# Design name:  baseband_crypto_macro_filled
#
# Created by icc2 write_sdc on Mon Oct 26 22:15:40 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000
# capacitive_load_unit    : 1e-12
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: mode_func
# Corner: corner_ss
# Scenario: func_ss

# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 116
create_clock -name PCLK -period 20 -waveform {0 10} [get_ports {PCLK}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 123
create_clock -name VCLK_APB -period 20 -waveform {0 10}
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 126
create_clock -name VCLK_RF -period 20 -waveform {0 10}
set_propagated_clock [get_clocks {PCLK}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 129
set_false_path -from [get_ports {rfid_rx_bit}] -to [get_cells \
    {U_DBB/U_SYNC/flop1_reg}]
set_load -pin_load 0.02 [get_ports {PRDATA[31]}]
set_load -pin_load 0.02 [get_ports {PRDATA[30]}]
set_load -pin_load 0.02 [get_ports {PRDATA[29]}]
set_load -pin_load 0.02 [get_ports {PRDATA[28]}]
set_load -pin_load 0.02 [get_ports {PRDATA[27]}]
set_load -pin_load 0.02 [get_ports {PRDATA[26]}]
set_load -pin_load 0.02 [get_ports {PRDATA[25]}]
set_load -pin_load 0.02 [get_ports {PRDATA[24]}]
set_load -pin_load 0.02 [get_ports {PRDATA[23]}]
set_load -pin_load 0.02 [get_ports {PRDATA[22]}]
set_load -pin_load 0.02 [get_ports {PRDATA[21]}]
set_load -pin_load 0.02 [get_ports {PRDATA[20]}]
set_load -pin_load 0.02 [get_ports {PRDATA[19]}]
set_load -pin_load 0.02 [get_ports {PRDATA[18]}]
set_load -pin_load 0.02 [get_ports {PRDATA[17]}]
set_load -pin_load 0.02 [get_ports {PRDATA[16]}]
set_load -pin_load 0.02 [get_ports {PRDATA[15]}]
set_load -pin_load 0.02 [get_ports {PRDATA[14]}]
set_load -pin_load 0.02 [get_ports {PRDATA[13]}]
set_load -pin_load 0.02 [get_ports {PRDATA[12]}]
set_load -pin_load 0.02 [get_ports {PRDATA[11]}]
set_load -pin_load 0.02 [get_ports {PRDATA[10]}]
set_load -pin_load 0.02 [get_ports {PRDATA[9]}]
set_load -pin_load 0.02 [get_ports {PRDATA[8]}]
set_load -pin_load 0.02 [get_ports {PRDATA[7]}]
set_load -pin_load 0.02 [get_ports {PRDATA[6]}]
set_load -pin_load 0.02 [get_ports {PRDATA[5]}]
set_load -pin_load 0.02 [get_ports {PRDATA[4]}]
set_load -pin_load 0.02 [get_ports {PRDATA[3]}]
set_load -pin_load 0.02 [get_ports {PRDATA[2]}]
set_load -pin_load 0.02 [get_ports {PRDATA[1]}]
set_load -pin_load 0.02 [get_ports {PRDATA[0]}]
set_load -pin_load 0.02 [get_ports {PREADY}]
set_load -pin_load 0.1 [get_ports {rfid_tx_bit}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency 0.620613 [get_clocks {PCLK}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {PCLK}]
set_clock_uncertainty -setup 0.5 [get_clocks {PCLK}]
set_clock_uncertainty -hold 0.1 [get_clocks {PCLK}]
set_clock_uncertainty -setup 0.5 [get_clocks {VCLK_APB}]
set_clock_uncertainty -hold 0.1 [get_clocks {VCLK_APB}]
set_clock_uncertainty -setup 0.5 [get_clocks {VCLK_RF}]
set_clock_uncertainty -hold 0.1 [get_clocks {VCLK_RF}]
set_clock_transition 0.2 [get_clocks {PCLK}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 12
set_driving_cell -lib_cell bufbd4 [get_ports {PRESETn}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 13
set_driving_cell -lib_cell bufbd2 [get_ports {PSEL}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 14
set_driving_cell -lib_cell bufbd2 [get_ports {PENABLE}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 15
set_driving_cell -lib_cell bufbd2 [get_ports {PWRITE}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 16
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[31]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 17
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[30]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 18
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[29]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 19
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[28]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 20
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[27]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 21
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[26]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 22
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[25]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 23
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[24]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 24
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[23]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 25
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[22]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 26
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[21]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 27
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[20]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 28
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[19]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 29
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[18]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 30
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[17]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 31
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[16]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 32
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[15]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 33
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[14]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 34
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[13]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 35
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[12]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 36
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[11]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 37
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[10]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 38
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[9]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 39
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[8]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 40
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[7]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 41
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[6]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 42
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[5]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 43
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[4]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 44
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[3]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 45
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[2]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 46
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[1]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 47
set_driving_cell -lib_cell bufbd2 [get_ports {PADDR[0]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 48
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[31]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 49
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[30]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 50
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[29]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 51
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[28]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 52
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[27]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 53
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[26]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 54
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[25]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 55
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[24]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 56
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[23]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 57
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[22]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 58
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[21]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 59
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[20]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 60
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[19]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 61
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[18]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 62
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[17]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 63
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[16]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 64
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[15]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 65
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[14]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 66
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[13]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 67
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[12]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 68
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[11]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 69
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[10]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 70
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[9]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 71
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[8]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 72
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[7]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 73
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[6]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 74
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[5]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 75
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[4]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 76
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[3]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 77
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[2]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 78
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[1]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 79
set_driving_cell -lib_cell bufbd2 [get_ports {PWDATA[0]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 80
set_driving_cell -lib_cell bufbd4 [get_ports {rfid_rx_bit}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 266; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 267
set_input_delay -clock [get_clocks {PCLK}] -min 0.5 [get_ports {PRESETn}]
set_input_delay -clock [get_clocks {PCLK}] -max 6 [get_ports {PRESETn}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 132; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 133
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PSEL}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PSEL}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 134; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 135
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PENABLE}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PENABLE}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 136; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 137
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWRITE}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWRITE}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 138; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 139
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[31]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[31]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 140; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 141
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[30]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[30]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 142; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 143
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[29]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[29]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 144; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 145
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[28]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[28]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 146; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 147
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[27]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[27]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 148; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 149
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[26]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[26]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 150; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 151
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[25]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[25]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 152; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 153
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[24]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[24]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 154; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 155
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[23]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[23]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 156; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 157
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[22]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[22]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 158; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 159
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[21]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[21]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 160; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 161
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[20]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[20]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 162; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 163
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[19]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[19]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 164; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 165
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[18]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[18]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 166; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 167
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[17]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[17]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 168; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 169
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[16]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[16]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 170; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 171
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[15]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[15]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 172; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 173
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[14]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[14]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 174; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 175
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[13]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[13]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 176; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 177
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[12]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[12]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 178; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 179
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[11]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[11]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 180; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 181
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[10]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[10]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 182; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 183
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[9]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[9]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 184; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 185
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[8]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[8]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 186; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 187
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[7]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[7]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 188; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 189
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[6]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[6]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 190; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 191
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[5]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[5]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 192; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 193
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[4]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[4]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 194; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 195
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[3]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[3]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 196; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 197
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[2]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[2]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 198; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 199
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[1]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[1]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 200; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 201
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PADDR[0]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PADDR[0]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 202; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 203
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[31]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[31]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 204; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 205
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[30]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[30]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 206; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 207
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[29]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[29]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 208; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 209
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[28]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[28]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 210; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 211
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[27]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[27]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 212; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 213
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[26]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[26]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 214; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 215
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[25]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[25]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 216; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 217
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[24]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[24]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 218; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 219
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[23]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[23]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 220; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 221
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[22]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[22]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 222; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 223
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[21]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[21]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 224; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 225
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[20]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[20]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 226; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 227
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[19]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[19]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 228; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 229
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[18]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[18]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 230; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 231
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[17]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[17]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 232; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 233
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[16]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[16]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 234; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 235
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[15]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[15]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 236; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 237
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[14]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[14]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 238; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 239
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[13]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[13]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 240; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 241
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[12]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[12]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 242; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 243
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[11]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[11]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 244; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 245
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[10]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[10]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 246; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 247
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[9]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[9]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 248; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 249
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[8]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[8]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 250; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 251
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[7]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[7]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 252; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 253
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[6]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[6]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 254; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 255
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[5]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[5]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 256; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 257
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[4]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[4]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 258; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 259
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[3]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[3]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 260; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 261
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[2]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[2]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 262; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 263
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[1]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[1]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 264; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 265
set_input_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PWDATA[0]}]
set_input_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PWDATA[0]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 268; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 269
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[31]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[31]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 270; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 271
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[30]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[30]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 272; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 273
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[29]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[29]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 274; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 275
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[28]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[28]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 276; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 277
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[27]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[27]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 278; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 279
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[26]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[26]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 280; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 281
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[25]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[25]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 282; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 283
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[24]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[24]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 284; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 285
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[23]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[23]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 286; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 287
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[22]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[22]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 288; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 289
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[21]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[21]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 290; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 291
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[20]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[20]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 292; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 293
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[19]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[19]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 294; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 295
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[18]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[18]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 296; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 297
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[17]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[17]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 298; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 299
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[16]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[16]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 300; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 301
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[15]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[15]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 302; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 303
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[14]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[14]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 304; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 305
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[13]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[13]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 306; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 307
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[12]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[12]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 308; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 309
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[11]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[11]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 310; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 311
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports \
    {PRDATA[10]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[10]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 312; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 313
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[9]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[9]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 314; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 315
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[8]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[8]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 316; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 317
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[7]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[7]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 318; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 319
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[6]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[6]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 320; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 321
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[5]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[5]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 322; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 323
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[4]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[4]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 324; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 325
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[3]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[3]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 326; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 327
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[2]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[2]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 328; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 329
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[1]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[1]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 330; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 331
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PRDATA[0]}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PRDATA[0]}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 332; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 333
set_output_delay -clock [get_clocks {VCLK_APB}] -min 0.5 [get_ports {PREADY}]
set_output_delay -clock [get_clocks {VCLK_APB}] -max 6 [get_ports {PREADY}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 130; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 131
set_input_delay -clock [get_clocks {VCLK_RF}] -min 1 [get_ports {rfid_rx_bit}]
set_input_delay -clock [get_clocks {VCLK_RF}] -max 10 [get_ports {rfid_rx_bit}]
# /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 334; \
#   /storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.sdc, \
#   line 335
set_output_delay -clock [get_clocks {VCLK_RF}] -min 1 [get_ports {rfid_tx_bit}]
set_output_delay -clock [get_clocks {VCLK_RF}] -max 10 [get_ports {rfid_tx_bit}]
set_max_transition 2 [current_design]
set_max_transition 0.4 [get_clocks {PCLK}] -clock_path
set_max_capacitance 1 [current_design]
