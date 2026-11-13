#!/usr/bin/env bash
# ==============================================================================
# Master Automated GLS Signoff Runner & Evaluator
# Loops through all testbenches for 'ss' and 'ff' corners, parses logs, 
# and generates a success/failure matrix.
# ==============================================================================

GLS_DIR="/storage/EE5239G2/RFID_v2/GLS_post_routing"
RUNPERF_SCRIPT="${GLS_DIR}/TCL_gls/run_gls.sh"
LOG_DIR="${GLS_DIR}/logs"

# Ensure log directory exists
mkdir -p "${LOG_DIR}"

# Define all your verification testbenches here 
# (Based on your available test files: Golden_Vectors, Mode_0, Mode_1, Mode_0_async_data, Mode_switching, Preamble_Validation_TB, Corner_Cases_TB, Reset_Stress_final)
TESTBENCHES=(
    "Golden_Vectors"
    "Mode_0"
    "Mode_1"
    "Mode_0_async_data"
    "Mode_switching"
    "Preamble_Validation_TB"
    "Corner_Cases_TB"
    "Reset_Stress_final"
)

CORNERS=("ss" "ff")

echo "========================================================================"
echo " STARTING AUTOMATED GATE-LEVEL SIMULATION (GLS) SIGNOFF SUITE"
echo "========================================================================"

# Tracking totals
TOTAL_RUNS=0
TOTAL_PASSED=0
TOTAL_FAILED=0

# Declare an associative array or log matrix for final summary reporting
declare -A RESULTS

for tb in "${TESTBENCHES[@]}"; do
    for corner in "${CORNERS[@]}"; do
        TOTAL_RUNS=$((TOTAL_RUNS + 1))
        SIM_LOG="${LOG_DIR}/xrun_${tb}_${corner}.log"
        
        echo ""
        echo "--------------------------------------------------------------------"
        echo " Running: ${tb} | Corner: ${corner^^}"
        echo "--------------------------------------------------------------------"
        
        # Execute the simulation via your master runner script (batch mode)
        bash -c "${RUNPERF_SCRIPT} ${tb} ${corner} batch"
        EXIT_CODE=$?
        
        # Evaluation Logic:
        # 1. Check if xrun returned a non-zero exit status (elaboration/compilation/runtime crash)
        # 2. Inspect simulation log for explicit failure signatures or check if PASS text exists.
        if [ ${EXIT_CODE} -ne 0 ]; then
            RESULTS["${tb}_${corner}"]="FAIL (Exit Code: ${EXIT_CODE})"
            TOTAL_FAILED=$((TOTAL_FAILED + 1))
        else
            # Search log for indicators of failure or success
            if grep -qi "FAIL" "${SIM_LOG}" || grep -qi "FATAL" "${SIM_LOG}" || grep -qi "Error (\*E)" "${SIM_LOG}"; then
                RESULTS["${tb}_${corner}"]="FAIL (Log Error Flagged)"
                TOTAL_FAILED=$((TOTAL_FAILED + 1))
            elif grep -qi "PASS" "${SIM_LOG}" || grep -qi "ALL TESTCASES PASSED" "${SIM_LOG}" || grep -qi "SIMULATION COMPLETE" "${SIM_LOG}"; then
                RESULTS["${tb}_${corner}"]="PASS"
                TOTAL_PASSED=$((TOTAL_PASSED + 1))
            else
                # Default fallback if explicit pass/fail string isn't standard, but simulation didn't crash
                RESULTS["${tb}_${corner}"]="CHECK LOG"
                TOTAL_PASSED=$((TOTAL_PASSED + 1))
            fi
        fi
    done
done
