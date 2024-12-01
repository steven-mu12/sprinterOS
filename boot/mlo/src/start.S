/*
 * File: start.S
 * Project: sprinterOS MLO (BOOT-2)
 * Author: Steven Mu
 * Date: Nov 13th, 2024

 * Description:
 * Entry point to the MLO. From here, we are running in SRAM
 *   - Make sure that the BSS section is cleared
 *   - Jump to main 
 */

.text

.global _START
.global __BSS_START__
.global __BSS_END__
.global _main

_START:
    /* Clear BSS */
    LDR     R0, =__BSS_START__       // load the BSS start and end locations
    LDR     R1, =__BSS_END__ 
    MOV     R5, #0

CLEAR_BSS:
    CMP     R0, R1                  // check if we reached end of bss
    BGE     GO_MAIN                 // if so, continue
    STR     R5, [R0], #4            // else clear & increment 32bitS or 4 bytes
    B       CLEAR_BSS               // run CLEAR_BSS again

GO_MAIN:
    /* Jump into MLO C Function */
    b       _main
