###USER DEFINED
FREQUENCY             := 1000
PERIOD                := $(shell echo "scale=4; 1000 / ${FREQUENCY}" | bc)

LIB                   := tcbn28hpcplusbwp12t30p140ssg0p72v125c_ccs
LIBDIR                := /home/xinlai/tools/edatools/synopsys/dc_2016.03/libraries/TSMC28/TN28HPC+

ADDITIONAL_SEARCH_PATH:= ${LIBDIR}/IP/STD/tcbn28hpcplusbwp12t30p140_190a/AN61001_20190529/TSMCHOME/digital/Front_End/timing_power_noise/CCS/tcbn28hpcplusbwp12t30p140_180a

MW_REFERENCE_LIB_DIRS := ${LIBDIR}/IP/STD/tcbn28hpcplusbwp12t30p140_190a/AN61001_20190529/TSMCHOME/digital/Back_End/milkyway/tcbn28hpcplusbwp12t30p140_170a/frame_only_VHV_0d5_0/tcbn28hpcplusbwp12t30p140
TECH_FILE             := ${LIBDIR}/TF/tn28clpr002s1_1_9_1a/PRTF_ICC_28nm_Syn_V19_1a/PR_tech/Synopsys/TechFile/HVH/tsmcn28_8lm3X1Y3ZRDL.tf
TLUPLUS_MAX_FILE      := ${LIBDIR}/TF/RC_Star-RCXT_cln28hpc+_1p8m_5x2z_ut-alrdl_9corners_1.3a/RC_Star-RCXT_cln28hpc+_1p08m+ut-alrdl_5x2z_rcworst_T/cln28hpc+_1p08m+ut-alrdl_5x2z_rcworst_T.tluplus
TLUPLUS_MIN_FILE      := ${LIBDIR}/TF/RC_Star-RCXT_cln28hpc+_1p8m_5x2z_ut-alrdl_9corners_1.3a/RC_Star-RCXT_cln28hpc+_1p08m+ut-alrdl_5x2z_rcbest_T/cln28hpc+_1p08m+ut-alrdl_5x2z_rcbest_T.tluplus
MAP_FILE			  := ${LIBDIR}//TF/RC_Star-RCXT_cln28hpc+_1p8m_5x2z_ut-alrdl_9corners_1.3a/cln28hpc+.map
CELL_NAND             := ND2D0BWP12T30P140
CELL_BUF              := BUFFD0BWP12T30P140

CORE := ux607

SRC_DIR               := ../${CORE}/design



#####################

TOP                   := ${CORE}_core_top
CFG                   := ${CORE}_config

CORE_NAME = $(shell echo $(CORE) | tr a-z A-Z)
core_name = $(shell echo $(CORE) | tr A-Z a-z)


ORGS_DIR              := ${PWD}/scripts_orgs

SYN_NAME := syn_${CFG}_${FREQUENCY}MHZ_${LIB}
SYN_DIR := ${PWD}/${SYN_NAME}
BUILD_DIR := ${SYN_DIR}/builds
INSTALL_RTL := ${BUILD_DIR}/



ADDITIONAL_SEARCH_PATH += ${SYN_DIR}/results/

VSRC := $(wildcard ${SRC_DIR}/core/*.v)

all: clean install_rtl syn 

# Install RTLs
${SYN_DIR}/install_rtl.flg: $(VSRC)
	mkdir -p ${SYN_DIR}
	mkdir -p ${SYN_DIR}/logs
	mkdir -p ${BUILD_DIR}
	rm -rf ${HOME_DIR}/install_rtl.flg

	cp -rf ${ORGS_DIR}/*  ${SYN_DIR}
	cp -rf ${SRC_DIR}/* ${BUILD_DIR}
	rm -rf ${BUILD_DIR}/core/rtl.vf

	cp -rf ${ORGS_DIR}/top/${CORE}_core_top.v ${BUILD_DIR}/core/

	sed -i 's#set libdir.*#set libdir "${LIBDIR}"#g' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i '/set ADDITIONAL_SEARCH_PATH/a\append ADDITIONAL_SEARCH_PATH "${ADDITIONAL_SEARCH_PATH}"' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i 's#set TARGET_LIBRARY_FILES.*#set TARGET_LIBRARY_FILES "${LIB}.db"#g' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i 's#set MW_REFERENCE_LIB_DIRS.*#set MW_REFERENCE_LIB_DIRS "${MW_REFERENCE_LIB_DIRS}"#g' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i 's#set TECH_FILE.*#set TECH_FILE "${TECH_FILE}"#g' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i 's#set TLUPLUS_MIN_FILE.*#set TLUPLUS_MIN_FILE "${TLUPLUS_MIN_FILE}"#g' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i 's#set TLUPLUS_MAX_FILE.*#set TLUPLUS_MAX_FILE "${TLUPLUS_MAX_FILE}"#g' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i 's#set MAP_FILE.*#set MAP_FILE "${MAP_FILE}"#g' ${SYN_DIR}/rm_setup/common_setup.tcl
	sed -i 's/load_of/load_of ${LIB}\/${CELL_NAND}/g' ${SYN_DIR}/constraints/${TOP}.constraints.tcl
	sed -i 's/lib_cell/lib_cell ${CELL_BUF}/g' ${SYN_DIR}/constraints/${TOP}.constraints.tcl
	sed -i '1s/core_clk_period.*/core_clk_period ${PERIOD}/g' ${SYN_DIR}/constraints/${TOP}_dc.sdc
	sed -i 's/DESIGN_NAME.*/DESIGN_NAME ${TOP}/g' ${SYN_DIR}/rm_setup/common_setup.tcl

	touch ${SYN_DIR}/install_rtl.flg

install: ${SYN_DIR}/install_rtl.flg

syn: install
	cd ${SYN_DIR}; dc_shell-t -topo -f rm_dc_scripts/dc.tcl | tee logs/dc.syn.log &

clean:
	rm -rf syn*

.PHONY: clean all dc_syn 
