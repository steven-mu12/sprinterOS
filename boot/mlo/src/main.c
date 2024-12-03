/*
 * File: main.c
 * Project: sprinterOS MLO
 * Author: Steven Mu
 * Date: Nov 30th, 2024

 * Description:
 * Main memory loader, includes the functions below:
 *   - Set up and clear BSS table
 *   - Initialize the DDR3 onboard RAM
 *   - Perform simple DDR test to ensure functionality
 *   - Load primary bootloader from eMMC and pass control
 */

#include <stdint.h>

/* DDR initialization */
static int init_ddr() {

    return 0;
}


/* _main function */
int _main( void ) {
    
    // run DDR init
    if (init_ddr()) {
        asm("b .");           // since we don't have prints yet, enter deadloop and never return
    }



    return 0;
}