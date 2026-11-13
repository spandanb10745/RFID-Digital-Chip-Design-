# ==============================================================================
# 5. STATIC CASE ANALYSIS (Optional: Mode-Specific Optimization)
# Keep ALL commented out for default all-mode synthesis.
# ==============================================================================
# MODE 0: Normal RF -> DBB -> PRESENT -> rfid_tx_bit (ctrl_mode = 2'b00)
# set_case_analysis 0 [get_pins {U_APB/ctrl_mode_reg[1]/Q}]
# set_case_analysis 0 [get_pins {U_APB/ctrl_mode_reg[0]/Q}]

# MODE 1: DBB Loopback Test, 432-bit vector into DBB (ctrl_mode = 2'b01)
# set_case_analysis 0 [get_pins {U_APB/ctrl_mode_reg[1]/Q}]
# set_case_analysis 1 [get_pins {U_APB/ctrl_mode_reg[0]/Q}]

# MODE 2: Crypto-Only Test, APB vector directly to PRESENT (ctrl_mode = 2'b10)
# set_case_analysis 1 [get_pins {U_APB/ctrl_mode_reg[1]/Q}]
# set_case_analysis 0 [get_pins {U_APB/ctrl_mode_reg[0]/Q}]