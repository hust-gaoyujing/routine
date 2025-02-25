# See LICENSE for license details.

#*****************************************************************************
# amomin_d.S
#-----------------------------------------------------------------------------
#
# Test amomin.d instruction.
#

#include "riscv_test64.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  TEST_CASE(2, a4, 0xffffffff80000000, \
    li a0, 0xffffffff80000000; \
    li a1, 0xfffffffffffff800; \
    la a3, amo_operand; \
    sd a0, 0(a3); \
    amomin.d	a4, a1, 0(a3); \
  )

  TEST_CASE(3, a5, 0xffffffff80000000, ld a5, 0(a3))

  TEST_CASE(4, a4, 0, \
    li a1, 0xffffffffffffffff; \
    sd x0, 0(a3); \
    amomin.d	a4, a1, 0(a3); \
  )

  TEST_CASE(5, a5, 0xffffffffffffffff, ld a5, 0(a3))

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END

  .bss
  .align 3
amo_operand:
  .dword 0
