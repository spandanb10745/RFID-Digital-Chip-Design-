# ==============================================================================
# Script : sta_hold_ff.tcl
# Path   : /storage/EE5239G2/RFID_v2/pnr_icc2/STA_Primetime/TCL_primetime/sta_hold_ff.tcl
# Tool   : Synopsys PrimeTime (pt_shell)
# Corner : func_ff (Fast-Fast: 1.98V, -40C/0C) - Hold & Min Pulse Width Signoff
# ==============================================================================

set DESIGN_NAME "baseband_crypto_macro"

# Source Directories (from PnR output)
set PNR_DIR     "/storage/EE5239G2/RFID_v2/pnr_icc2"
set PNR_OUT     "${PNR_DIR}/outputs"
set PDK_LIB     "/storage/PDK_iitg/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ff"

# Dedicated STA Output Directories
set STA_BASE    "${PNR_DIR}/STA_Primetime"
set RPT_DIR     "${STA_BASE}/reports_hold_ff"
set OUT_DIR     "${STA_BASE}/outputs"
set LOG_DIR     "${STA_BASE}/logs"

file mkdir $RPT_DIR
file mkdir $OUT_DIR
file mkdir $LOG_DIR

# ------------------------------------------------------------------------------
# 1. Target & Link Libraries
# ------------------------------------------------------------------------------
set target_library "${PDK_LIB}/tsl18fs120_scl_ff.db"
set link_library   "* ${target_library}"

# ------------------------------------------------------------------------------
# 2. Ingest Gate-Level Netlist
# ------------------------------------------------------------------------------
read_verilog "${PNR_OUT}/${DESIGN_NAME}_pnr_sim.v"
current_design $DESIGN_NAME
link

# ------------------------------------------------------------------------------
# 3. Read SDC Timing Constraints & Setup Clock Architecture
# ------------------------------------------------------------------------------
read_sdc "${PNR_OUT}/${DESIGN_NAME}_pnr_ff.sdc"

# Propagate only the physical clock tree (keeps virtual clocks ideal references)
set_propagated_clock [get_clocks PCLK]
set_max_transition 0.45 [get_clocks {PCLK}] -clock_path

# ------------------------------------------------------------------------------
# 4. Ingest Extracted Interconnect Parasitics (SPEF)
# ------------------------------------------------------------------------------
read_parasitics -format spef "${PNR_OUT}/${DESIGN_NAME}_spef.TYPICAL_RC_125.spef"
complete_net_parasitics

# ------------------------------------------------------------------------------
# 5. Enable Signal Integrity (Crosstalk Delta Delay)
# ------------------------------------------------------------------------------
set si_enable_analysis true
set timing_save_pin_arrival_and_slack true

# ------------------------------------------------------------------------------
# 6. Sanity Checks & Timing Analysis
# ------------------------------------------------------------------------------
check_timing -verbose > "${RPT_DIR}/check_timing.rpt"
update_timing -full

# ------------------------------------------------------------------------------
# 7. Generate Full Signoff Reports (Mirrored from Setup Suite)
# ------------------------------------------------------------------------------
# Overall QoR & Global Timing
report_qor > "${RPT_DIR}/qor.rpt"
report_global_timing > "${RPT_DIR}/global_timing.rpt"

# Coverage & Clock Network Architecture
report_analysis_coverage > "${RPT_DIR}/analysis_coverage.rpt"
report_clock -skew -attribute > "${RPT_DIR}/clock_summary.rpt"

# Full Constraint Summary Table
report_constraints -significant_digits 4 > "${RPT_DIR}/constraints_summary.rpt"

# Design Rule & Min Pulse Width Checks (with -verbose to show actuals & slacks)
report_constraint -min_pulse_width -verbose -significant_digits 4 > "${RPT_DIR}/min_pulse_width.rpt"
report_constraint -max_transition -verbose -significant_digits 4 > "${RPT_DIR}/max_transition.rpt"
report_constraint -max_capacitance -verbose -significant_digits 4 > "${RPT_DIR}/max_capacitance.rpt"

# Top 50 Critical Hold Paths
report_timing -delay_type min \
              -max_paths 50 \
              -path_type full_clock_expanded \
              -significant_digits 4 > "${RPT_DIR}/hold_critical_paths.rpt"

# Export Fast Corner Signoff SDF for Gate-Level Simulation (GLS)
write_sdf -version 3.0 "${OUT_DIR}/${DESIGN_NAME}_ff_signoff.sdf"

puts ">>> [date] PrimeTime Hold Signoff Complete. Results saved in: ${RPT_DIR}"
exit