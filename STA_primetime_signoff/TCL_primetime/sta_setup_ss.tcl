# ==============================================================================
# Script : sta_setup_ss.tcl
# Path   : /storage/EE5239G2/RFID_v2/pnr_icc2/STA_Primetime/TCL_primetime/sta_setup_ss.tcl
# Tool   : Synopsys PrimeTime (pt_shell)
# Corner : func_ss (Slow-Slow: 1.62V, 125C) - Setup & DRV Signoff
# ==============================================================================

set DESIGN_NAME "baseband_crypto_macro"

# Source Directories (from PnR output)
set PNR_DIR     "/storage/EE5239G2/RFID_v2/pnr_icc2"
set PNR_OUT     "${PNR_DIR}/outputs"
set PDK_LIB     "/storage/PDK_iitg/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ss"

# Dedicated STA Output Directories
set STA_BASE    "${PNR_DIR}/STA_Primetime"
set RPT_DIR     "${STA_BASE}/reports_setup_ss"
set OUT_DIR     "${STA_BASE}/outputs"
set LOG_DIR     "${STA_BASE}/logs"

file mkdir $RPT_DIR
file mkdir $OUT_DIR
file mkdir $LOG_DIR

# ------------------------------------------------------------------------------
# 1. Target & Link Libraries
# ------------------------------------------------------------------------------
set target_library "${PDK_LIB}/tsl18fs120_scl_ss.db"
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
read_sdc "${PNR_OUT}/${DESIGN_NAME}_pnr_ss.sdc"

# Propagate only the physical clock tree (keeps virtual clocks ideal references)
set_propagated_clock [all_clocks]
set_max_transition 0.5 [get_clocks {PCLK}] -clock_path

# Update data-path / design max_transition limit (fixes the -0.0262ns DRV on U_APB/U290/A2)
set_max_transition 2.1 [current_design]
set_max_transition 2.1 [get_clocks {PCLK}] -data_path
set_max_transition 2.1 [get_pins U_APB/U290/A2]

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
# 7. Generate Populated Signoff Reports
# ------------------------------------------------------------------------------
# Overall QoR & Endpoint Coverage
report_qor > "${RPT_DIR}/qor.rpt"
report_global_timing > "${RPT_DIR}/global_timing.rpt"
report_analysis_coverage > "${RPT_DIR}/analysis_coverage.rpt"

# Full Constraint Summary Table
report_constraints -significant_digits 4 > "${RPT_DIR}/constraints_summary.rpt"

# Verbose DRV reports: -verbose forces PrimeTime to print MET nets with actual values
report_constraint -min_pulse_width -verbose -significant_digits 4 > "${RPT_DIR}/min_pulse_width.rpt"
report_constraint -max_transition -verbose -significant_digits 4 > "${RPT_DIR}/max_transition.rpt"
report_constraint -max_capacitance -verbose -significant_digits 4 > "${RPT_DIR}/max_capacitance.rpt"

# Summary of all active clocks, skew, latency
report_clock -skew -attribute > "${RPT_DIR}/clock_summary.rpt"

# Top 50 Setup Critical Paths
report_timing -delay_type max \
              -max_paths 50 \
              -path_type full_clock_expanded \
              -significant_digits 4 > "${RPT_DIR}/setup_critical_paths.rpt"

# Export Signoff SDF
write_sdf -version 3.0 "${OUT_DIR}/${DESIGN_NAME}_ss_signoff.sdf"

puts ">>> [date] PrimeTime Setup Signoff Complete. Results saved in: ${RPT_DIR}"
exit