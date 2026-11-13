# ==============================================================================
# File: synth.tcl
# Design: baseband_crypto_macro (RFID_v2)
# Tool: Synopsys Design Compiler (dc_shell / design_vision)
# Description: Production Batch Synthesis Script with Clean Dependency Linking
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. ENVIRONMENT INITIALIZATION & PATHS
# ------------------------------------------------------------------------------
# Reset Design Compiler memory to prevent stale intermediate design conflicts
remove_design -designs

set TOP_DESIGN  "baseband_crypto_macro"

# Absolute Paths
set RTL_DIR     "/storage/EE5239G2/RFID_v2/RTL"
set SDC_DIR     "/storage/EE5239G2/RFID_v2/sdc_final"
set REPORT_DIR  "/storage/EE5239G2/RFID_v2/sdc_final/report_synthesis_tool"
set OUTPUT_DIR  "/storage/EE5239G2/RFID_v2/sdc_final/outputs"

# Target Standard Cell Library (SCL 180nm - Slow-Slow Corner for Setup Signoff)
set target_library "/storage/PDK_iitg/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/4M1IL/liberty/lib_flow_ss/tsl18fs120_scl_ss.db"
set link_library   "* $target_library"

# Ensure output directories exist
file mkdir $REPORT_DIR
file mkdir $OUTPUT_DIR

puts "\n=================================================================="
puts "  STARTING SYNTHESIS: $TOP_DESIGN"
puts "  Reports Directory: $REPORT_DIR"
puts "==================================================================\n"


# ------------------------------------------------------------------------------
# 2. READ & ANALYZE RTL (Strict Bottom-Up Dependency Order)
# ------------------------------------------------------------------------------
puts "--> Analyzing Verilog source files in bottom-up order..."

# Leaf modules first (sbox must be analyzed before sub_layer / key_schedule)
analyze -format verilog [list \
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


# ------------------------------------------------------------------------------
# 3. ELABORATE & RESOLVE HIERARCHY
# ------------------------------------------------------------------------------
puts "--> Elaborating top-level design: $TOP_DESIGN..."
elaborate $TOP_DESIGN
current_design $TOP_DESIGN

puts "--> Resolving design hierarchy and linking library..."
if {[link] == 0} {
    puts "\n\[ERROR\]: Link failed! Unresolved references exist in design."
    exit 1
}

# Pre-synthesis structural check
check_design > ${REPORT_DIR}/check_design_pre_synth.rpt


# ------------------------------------------------------------------------------
# 4. LOAD ALL SDC TIMING CONSTRAINTS
# ------------------------------------------------------------------------------
puts "--> Searching for SDC timing constraints in: $SDC_DIR..."

# Use glob to safely grab all .sdc files in the directory
set SDC_FILES [glob -nocomplain ${SDC_DIR}/*.sdc]

if {[llength $SDC_FILES] == 0} {
    puts "\n\[ERROR\]: No SDC files found in $SDC_DIR!"
    exit 1
}

# Source each file individually
foreach sdc_file $SDC_FILES {
    puts "--> Sourcing: $sdc_file"
    read_sdc $sdc_file
}

# Verify that all endpoints and ports have timing constraints
puts "--> Checking timing constraints coverage..."
check_timing > ${REPORT_DIR}/check_timing.rpt


# ------------------------------------------------------------------------------
# 5. COMPILE & OPTIMIZE (LOGIC SYNTHESIS)
# ------------------------------------------------------------------------------
puts "\n=================================================================="
puts "  MAPPING LOGIC TO SCL 180nm GATES..."
puts "==================================================================\n"

compile -map_effort high -area_effort high


# ------------------------------------------------------------------------------
# 6. GENERATE SIGNOFF REPORTS
# ------------------------------------------------------------------------------
puts "--> Generating signoff reports in $REPORT_DIR..."

# 6.1 Setup (Max Delay) Timing Report
report_timing -delay_type max -max_paths 10 > ${REPORT_DIR}/timing_setup_max.rpt

# 6.2 Hold (Min Delay) Timing Report
report_timing -delay_type min -max_paths 10 > ${REPORT_DIR}/timing_hold_min.rpt

# 6.3 Area Breakdown Report
report_area -hierarchy                      > ${REPORT_DIR}/area.rpt

# 6.4 Power Dissipation Report
report_power                                > ${REPORT_DIR}/power.rpt

# 6.5 Constraint & DRC Violations Report
report_constraint -all_violators            > ${REPORT_DIR}/violations.rpt

# 6.6 Quality of Results (QoR) Summary
report_qor                                  > ${REPORT_DIR}/qor.rpt


# ------------------------------------------------------------------------------
# 7. EXPORT NETLIST & DATABASE FOR PLACE & ROUTE
# ------------------------------------------------------------------------------
puts "--> Exporting synthesized gate-level files to $OUTPUT_DIR..."

# 7.1 Gate-Level Verilog Netlist
write -format verilog -hierarchy -output "${OUTPUT_DIR}/${TOP_DESIGN}_syn.v"

# 7.2 Post-Synthesis SDC
write_sdc "${OUTPUT_DIR}/${TOP_DESIGN}_syn.sdc"

# 7.3 Synopsys DDC Database
write -format ddc -hierarchy -output "${OUTPUT_DIR}/${TOP_DESIGN}_syn.ddc"

puts "\n=================================================================="
puts "  SYNTHESIS COMPLETED CLEANLY!"
puts "  Check all generated reports in:"
puts "  $REPORT_DIR"
puts "==================================================================\n"

exit