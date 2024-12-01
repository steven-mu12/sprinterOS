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

int _main( void ) {
    int x = 0;
    return x;
}