# ==============================================================================
# run_formality.tcl - Synopsys Formality Formal Equivalence Script
# Design: baseband_crypto_macro
# ==============================================================================

# 1. Load the SVF File (CRITICAL: Must be done before reading designs)
# Make sure default.svf is actually in this folder. If it is in the folder
# where you ran your synthesis script, update this path to match.
set_svf "/storage/EE5239G2/RFID_v2/default.svf"

# 2. Load the Target Technology Library
set target_library "/storage/PDK_iitg/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ss/tsl18fs120_scl_ss.db"
read_db $target_library

# 3. Read Reference Design (Golden RTL)
set RTL_DIR "/storage/EE5239G2/RFID_v2/RTL"
# Removed -v2001 flag (Formality handles Verilog-2001 natively)
read_verilog -container r -libname WORK [list \
    ${RTL_DIR}/sbox.v \
    ${RTL_DIR}/sub_layer.v \
    ${RTL_DIR}/perm_layer.v \
    ${RTL_DIR}/key_schedule.v \
    ${RTL_DIR}/present_top.v \
    ${RTL_DIR}/dbb_sync.v \
    ${RTL_DIR}/dbb_oversampler.v \
    ${RTL_DIR}/dbb_voter.v \
    ${RTL_DIR}/dbb_manchester_fsm.v \
    ${RTL_DIR}/dbb_framer.v \
    ${RTL_DIR}/dbb_top.v \
    ${RTL_DIR}/loopback_mux.v \
    ${RTL_DIR}/apb_wrapper.v \
    ${RTL_DIR}/baseband_crypto_macro.v \
]
set_top r:/WORK/baseband_crypto_macro

# 4. Read Implementation Design (Revised Synthesized Netlist)
set NETLIST "/storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.v"
read_verilog -container i -libname WORK $NETLIST
set_top i:/WORK/baseband_crypto_macro

# 5. Match State Elements (Compare Points)
match

# 6. Verify Equivalence
verify

# 7. Report Results
report_matched_points > formality_matched.rpt
report_failing_points > formality_failing.rpt

# 8. Save a graphical debug session if it fails
if { [get_verify_status] == "FAILED" } {
    save_session formality_failed_debug.fss
    puts "\n[ERROR]: Verification FAILED. Run Formality GUI and open formality_failed_debug.fss to debug."
} else {
    puts "\n[SUCCESS]: Verification PASSED! RTL matches Gate-Level Netlist."
}

exit