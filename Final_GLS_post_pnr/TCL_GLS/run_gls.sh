#!/usr/bin/env bash
# ==============================================================================
# Master GLS Signoff Runner for RFID Baseband Crypto Subsystem
# Usage: ./run_gls.sh <TB_MODULE_NAME> <CORNER: ss|ff> [gui|batch]
# ==============================================================================

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <TB_NAME> <CORNER: ss|ff> [gui|batch]"
    exit 1
fi

TB_NAME=$1
CORNER=$2
RUN_MODE=${3:-batch}

# --- Optional X-Propagation Configuration ---
XPROP_ENABLED=${XPROP_ENABLED:-false}
XPROP_FILE="/storage/EE5239G2/RFID_v2/GLS_post_routing/TCL_gls/xprop.cfg"
# --------------------------------------------

GLS_DIR="/storage/EE5239G2/RFID_v2/GLS_post_routing"
PNR_OUT="/storage/EE5239G2/RFID_v2/pnr_icc2/outputs"
PDK_SIM="/storage/PDK_iitg/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/4M1IL/verilog/vcs_sim_model/tsl18fs120_scl.v"

# Auto-detect file extension (.sv or .v)
if [ -f "${GLS_DIR}/TB/${TB_NAME}.sv" ]; then
    TB_FILE="${GLS_DIR}/TB/${TB_NAME}.sv"
elif [ -f "${GLS_DIR}/TB/${TB_NAME}.v" ]; then
    TB_FILE="${GLS_DIR}/TB/${TB_NAME}.v"
else
    echo "Error: Testbench file for '${TB_NAME}' (.sv or .v) not found in TB/!"
    exit 1
fi

# Set corner-specific flags, directories, and log paths
if [ "$CORNER" == "ss" ]; then
    SDF_FILE="${GLS_DIR}/../pnr_icc2/STA_Primetime/outputs/baseband_crypto_macro_ss_signoff.sdf"
    DELAY_OPT="-maxdelays"
    MTM="MAXIMUM"
    LOG_FILE="${GLS_DIR}/logs/sdf_annotate_${TB_NAME}_ss.log"
    SDF_STATS_FILE="${GLS_DIR}/logs/sdf_stats_${TB_NAME}_ss.txt"
    WORK_DIR="${GLS_DIR}/run_ss"
elif [ "$CORNER" == "ff" ]; then
    SDF_FILE="${GLS_DIR}/../pnr_icc2/STA_Primetime/outputs/baseband_crypto_macro_ff_signoff.sdf"
    DELAY_OPT="-mindelays"
    MTM="MINIMUM"
    LOG_FILE="${GLS_DIR}/logs/sdf_annotate_${TB_NAME}_ff.log"
    SDF_STATS_FILE="${GLS_DIR}/logs/sdf_stats_${TB_NAME}_ff.txt"
    WORK_DIR="${GLS_DIR}/run_ff"
else
    echo "Error: Corner must be 'ss' or 'ff'."
    exit 1
fi

# Ensure corner work directory exists
mkdir -p ${WORK_DIR}

# Dynamically generate the valid Xcelium SDF command file
DYNAMIC_SDF_CMD="${GLS_DIR}/TCL_gls/sdf_${TB_NAME}_${CORNER}.cmd"

cat << EOF > ${DYNAMIC_SDF_CMD}
TIMESCALE = 1ps,
SDF_FILE = "${SDF_FILE}",
SCOPE = ${TB_NAME}.dut,
MTM_CONTROL = "${MTM}",
LOG_FILE = "${LOG_FILE}";
EOF

# Configure X-prop switches if enabled
XPROP_OPTS=""
if [ "$XPROP_ENABLED" == "true" ]; then
    if [ -f "$XPROP_FILE" ]; then
        XPROP_OPTS="-xprop F -xfile ${XPROP_FILE} -xlog ${GLS_DIR}/logs/xprop_${TB_NAME}_${CORNER}.log -xverbose"
        echo "X-Propagation is ENABLED for baseband_crypto_macro."
    else
        echo "Warning: XPROP_ENABLED is true, but config file not found at ${XPROP_FILE}."
    fi
else
    echo "X-Propagation is DISABLED."
fi

# Set GUI or batch flags
GUI_OPTS=""
if [ "$RUN_MODE" == "gui" ]; then
    GUI_OPTS="-gui -access +rwc"
else
    GUI_OPTS="-input ${GLS_DIR}/TCL_gls/dump_waves.tcl"
fi

cd ${WORK_DIR}

echo "========================================================================"
echo " Launching Xcelium GLS Signoff: ${TB_NAME} | Corner: ${CORNER}"
echo "========================================================================"

xrun \
  -64bit \
  ${GUI_OPTS} \
  -timescale 1ns/1ps \
  -access +rwc \
  -v ${PDK_SIM} \
  ${XPROP_OPTS} \
  ${PNR_OUT}/baseband_crypto_macro_pnr_sim.v \
  ${TB_FILE} \
  -top ${TB_NAME} \
  -sdf_cmd_file ${DYNAMIC_SDF_CMD} \
  ${DELAY_OPT} \
  +neg_tchk \
  -sdf_verbose \
  -sdf_orig_dir \
  -sdfdir ${WORK_DIR} \
  -sdfstats ${SDF_STATS_FILE} \
  -sdf_specpp \
  -log ${GLS_DIR}/logs/xrun_${TB_NAME}_${CORNER}.log

echo "Simulation finished successfully."
echo " - SDF Annotation Stats Report: ${SDF_STATS_FILE}"
if [ "$XPROP_ENABLED" == "true" ]; then
    echo " - X-Prop Log:                 ${GLS_DIR}/logs/xprop_${TB_NAME}_${CORNER}.log"
fi