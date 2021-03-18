SIM_DIR     := ${PWD}
RUN_DIR      := ${PWD}/run
ISADIR        := ${RUN_DIR}/../../riscv-tests/isa/
ENVDIR        := ${RUN_DIR}/../../riscv-tests/env/
RVTDIR        := ${RUN_DIR}/../../riscv-tests
TESTFLIS_FILE := ${RUN_DIR}/tests_flist
ENVFLIS_FILE := ${RUN_DIR}/env_flist
DUMPWAVE     := 1
FORCE_ECC	 := 0
FORCE_IRQ    := 0
FORCE_DELAY  := 0
WFI_FORCE_IRQ    := 1
CORE := ux607
INSTALL_TESTS := 1
N600        := n600

XLEN		:= 64

TESTNAME     := rv${XLEN}ui-p-lb
TESTCASE     := ${RUN_DIR}/../../riscv-tests/isa/generated/${TESTNAME}
#TESTNAME     := dhrystone
#TESTCASE     := ${RUN_DIR}/../../riscv-tools/n200-sim-sdk/software/dhrystone/${TESTNAME}

SEED       := $(shell date +%Y%m%d%H%M%S)
COVERAGE    := 0

CORE_NAME = $(shell echo $(CORE) | tr a-z A-Z)
core_name = $(shell echo $(CORE) | tr A-Z a-z)

all: run_test

${CORE}_defines.h: ${SIM_DIR}/../${core_name}/design/core/${CORE}_defines.v
	python bin/v2h.py $< $@

install: ${RUN_DIR} ${CORE}_defines.h
	mkdir -p ${SIM_DIR}/install/tb
	cp ${SIM_DIR}/../tb/* ${SIM_DIR}/install/tb/ -rf
	find ${SIM_DIR}/../${core_name}/design -name *.v >& ${RUN_DIR}/rtlonly_flist
	find ${SIM_DIR}/../${core_name}/design/core/ -name *.v >& ${RUN_DIR}/core_flist

ifeq ($(INSTALL_TESTS),1) 
	cd  ${RVTDIR}; bash prepare.sh

ifeq ($(XLEN),64)
		sed -i "s/riscv_test/riscv_test64/g" ${RVTDIR}/env/*/*
		sed -i "s/riscv_test/riscv_test64/g" ${RVTDIR}/isa/rv64*/*
		sed -i "s/test_register/test_register64/g" ${RVTDIR}/env/*/*
		sed -i "s/test_register/test_register64/g" ${RVTDIR}/isa/rv64*/*
endif 
	ls -1 ${RUN_DIR}/../../riscv-tests/isa/rv*/* >& ${RUN_DIR}/tests_flist
	ls -1 ${RUN_DIR}/../../riscv-tests/isa/Makefile >> ${RUN_DIR}/tests_flist
	ls -1 ${RUN_DIR}/../../riscv-tests/isa/macros/scalar/* >> ${RUN_DIR}/tests_flist
	ls -1 ${RUN_DIR}/../../riscv-tests/env/*.h  >& ${RUN_DIR}/env_flist
	ls -1 ${RUN_DIR}/../../riscv-tests/env/p/*  >> ${RUN_DIR}/env_flist
	ls -1 ${RUN_DIR}/../../riscv-tests/env/pm/*  >> ${RUN_DIR}/env_flist
	ls -1 ${RUN_DIR}/../../riscv-tests/env/pt/*  >> ${RUN_DIR}/env_flist
	ls -1 ${RUN_DIR}/../../riscv-tests/env/v/*  >> ${RUN_DIR}/env_flist
	cd ${ISADIR}; mkdir generated; make -C generated -f ../Makefile src_dir=../ XLEN=${XLEN}
endif

${RUN_DIR}:
	mkdir -p ${RUN_DIR}
	rm -f ${RUN_DIR}/Makefile
	ln -s ${SIM_DIR}/bin/run.makefile ${RUN_DIR}/Makefile

verilog: ${RUN_DIR}
	make verilog RUN_DIR=${RUN_DIR} -C ${RUN_DIR} 

verilog_rtlonly: ${RUN_DIR}
	make verilog_rtlonly RUN_DIR=${RUN_DIR} -C ${RUN_DIR} 

compile_rtlonly: ${RUN_DIR}
	make compile_rtlonly RUN_DIR=${RUN_DIR} -C ${RUN_DIR} 

verilog_core: ${RUN_DIR}
	make verilog_core RUN_DIR=${RUN_DIR} -C ${RUN_DIR}

compile_core: ${RUN_DIR}
	make compile_core RUN_DIR=${RUN_DIR} -C ${RUN_DIR}

compile: ${RUN_DIR}
	make compile CORE=${CORE} RUN_DIR=${RUN_DIR} -C ${RUN_DIR} TESTCASE=${TESTCASE} COVERAGE=${COVERAGE}

simlog: ${RUN_DIR}
	make simlog TESTCASE=${TESTCASE} RUN_DIR=${RUN_DIR} -C ${RUN_DIR}

wave: ${RUN_DIR}
	make wave CORE=${CORE} TESTCASE=${TESTCASE} RUN_DIR=${RUN_DIR} -C ${RUN_DIR} 

run_test: compile
	make run CORE=${CORE} WFI_FORCE_IRQ=${WFI_FORCE_IRQ} FORCE_DELAY=${FORCE_DELAY} FORCE_IRQ=${FORCE_IRQ} FORCE_ECC=${FORCE_ECC} DUMPWAVE=${DUMPWAVE} TESTCASE=${TESTCASE} SEED=${SEED} RUN_DIR=${RUN_DIR} -C ${RUN_DIR} COVERAGE=${COVERAGE}

cov: ${RUN_DIR}
	make cov CORE=${CORE} TESTCASE=${TESTCASE} RUN_DIR=${RUN_DIR} -C ${RUN_DIR}

cov_merge:
	make cov_merge RUN_DIR=${RUN_DIR} -C ${RUN_DIR}

cov_merge_batch:
	make cov_merge_batch RUN_DIR=${RUN_DIR} -C ${RUN_DIR}


SELF_TESTS := $(patsubst %.dump,%,$(wildcard ${RUN_DIR}/../../riscv-tests/isa/generated/rv${XLEN}uc-p*.dump))
SELF_TESTS += $(patsubst %.dump,%,$(wildcard ${RUN_DIR}/../../riscv-tests/isa/generated/rv${XLEN}um-p*.dump))
SELF_TESTS += $(patsubst %.dump,%,$(wildcard ${RUN_DIR}/../../riscv-tests/isa/generated/rv${XLEN}ua-p*.dump))
SELF_TESTS += $(patsubst %.dump,%,$(wildcard ${RUN_DIR}/../../riscv-tests/isa/generated/rv${XLEN}ui-p*.dump))

regress_prepare:
	make compile
	@-rm -rf ${RUN_DIR}/rv*.log
regress_run:
	$(foreach tst,$(SELF_TESTS), make run_test TESTCASE=$(tst);)
regress_collect:
	@-rm -rf ${RUN_DIR}/regress.res
	@find ${RUN_DIR} -name "rv*.log" -exec bin/find_test_fail.sh {} >> ${RUN_DIR}/regress.res \;
	@cat ${RUN_DIR}/regress.res
regress: regress_prepare regress_run regress_collect 

clean:
	rm -rf run
	rm -rf install
	rm -rf *.h

.PHONY: compile run install clean all run_test regress regress_prepare regress_run regress_collect 

