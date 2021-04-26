

#include "ux607_type.h"
#include "ux607_map.h"
#include <nmsis_core.h>                         /*!< Nuclei N/NX class processor and core peripherals */
/* ToDo: include your system_nuclei_soc.h file
         replace 'Device' with your device name */
#include "system_ux607.h"                    /*!< gd32vf103 System */





#define __REG(mem_addr)	(*(volatile u32 *)(mem_addr))

#define	TEST_START		__REG(0x8000fffc) = 0x11111111;
#define	TEST_PASS		__REG(0x8000fffc) = 0x88888888;
#define	TEST_FAIL		__REG(0x8000fffc) = 0x44444444;
#define	TEST_OVER		__REG(0x8000fffc) = 0x66666666;
