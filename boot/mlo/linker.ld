/* define our SRAM memory region */

MEMORY {
    SRAM (rwx) : ORIGIN = 0x402F0400, LENGTH = 0x10000
}

/* set up sections */

SECTIONS {

    /* this basically just says hey, put stuff in .text section in the SRAM, we don't 
    know how big it is, but we will on compile and it goes here somewhere */

    .text : {
        *(.text*)
    } > SRAM

    /* allocate a section of memory for bss. compiler will know how big this needs
       to be at compile time, so those are just placeholders */

    .bss : {
        __BSS_START__ = .;
        *(.bss*)
        __BSS_END__ = .;
    } > SRAM

    /* Note that stack is not in the SRAM region */

}
