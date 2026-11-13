# ==============================================================================
# 3. TIMING EXCEPTIONS (Teman Doc Section 5)
# ==============================================================================

# 3.1 Asynchronous CDC: rfid_rx_bit
# Terminates at the 2-stage synchronizer (dbb_sync); asynchronous to PCLK.
set_false_path -from [get_ports rfid_rx_bit] -to [get_cells -hier *flop1_reg*]

# ------------------------------------------------------------------------------
# 3.2 ARCHITECTURAL EXCEPTIONS AUDIT:
# - NO MULTI-CYCLE PATHS: PRESENT-80 executes 1 round per single clock cycle.
#   Relaxing paths to 32 cycles will cause silent hardware calculation corruption.
# - NO FALSE PATH ON PRESETn: Synchronous reset must have recovery/removal checks.
# - NO FALSE PATH ON SOFT RESET: ctrl_mode_changed -> DBB is a valid 1-cycle path.
# - NO MUX FALSE PATHS: Paths across loopback multiplexers are strictly single-cycle.
# ------------------------------------------------------------------------------