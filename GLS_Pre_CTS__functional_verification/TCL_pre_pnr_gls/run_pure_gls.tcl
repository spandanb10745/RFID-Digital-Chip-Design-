#!/usr/bin/env tclsh
# ==============================================================================
# File: run_simple_gls.tcl
# Description: Simple batch execution of Pure GLS testbenches in Xcelium
# Output Directory: /storage/EE5239G2/RFID_v2/TB_GLS_v2
# ==============================================================================

set PDK_LIB  "/storage/PDK_iitg/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/4M1IL/verilog/vcs_sim_model/tsl18fs120_scl.v"
set NETLIST  "/storage/EE5239G2/RFID_v2/sdc_final/outputs/baseband_crypto_macro_syn.v"
set OUT_DIR  "/storage/EE5239G2/RFID_v2/TB_GLS_v2_reports"
set TB_DIR   "/storage/EE5239G2/RFID_v2/TB_GLS_v2/TB"

if {![file exists $TB_DIR]} {
    set TB_DIR "/storage/EE5239G2/RFID_v2/TB"
}

file mkdir $OUT_DIR

# 8 Testbenches
set test_list [list \
    "Corner_Cases_TB.sv" \
    "Golden_Vectors.sv" \
    "Mode_0.sv" \
    "Mode_0_async_data.v" \
    "Mode_1.sv" \
    "Mode_switching.sv" \
    "Preamble_Validation_TB.sv" \
    "Reset_Stress_final.sv" \
]

puts "=================================================================="
puts "  STARTING PURE GLS SIMULATIONS (Cadence Xcelium)"
puts "  Saving individual logs to: $OUT_DIR"
puts "==================================================================\n"

set i 1
set total [llength $test_list]

foreach tb $test_list {
    set test_name [file rootname $tb]
    set tb_path   "${TB_DIR}/${tb}"
    set log_file  "${OUT_DIR}/${test_name}.log"

    puts "\[$i/$total\] Running: $test_name ..."
    puts "      Log file -> $log_file"

    # Pure GLS command: no timing bypass switches
    catch {
        exec xrun -64bit -sv -access +rwc \
                  -timescale 1ns/1ps \
                  -clean \
		  -access +rwc \
                  -v $PDK_LIB \
                  $tb_path \
                  $NETLIST \
                  -top $test_name \
                  -log $log_file
    }

    puts "      Done!\n"
    incr i
}

puts "=================================================================="
puts "  ALL SIMULATIONS COMPLETED."
puts "  Check individual logs in: $OUT_DIR"
puts "=================================================================="

exit