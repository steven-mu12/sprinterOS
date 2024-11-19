/*
 * File: start.S
 * Project: sprinterOS MLO (BOOT-2)
 * Author: Steven Mu
 * Date: Nov 13th, 2024

 * Description:
 *   - Entry point for initial setup, modeled on U-Boot’s start sequence.
 *   - Prepares the hardware environment to pass control to lowlevel_init.s.
 */

    section .text
    global _start

_start: