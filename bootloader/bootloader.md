
# SprinterOS Bootloader

### Boot Process

1. Power-on-reset: Read-only bootROM initializes essential hardware
2. Boot Order: BootROM at the end basically just boots from SD Card, if not then EMMC
3. Exit BootROM: It tries to look for MLO in the root dir. Initializes DDR Ram
4. Exit MLO: MLO puts actual bootloader into DDR - then runs it 
5. Main bootloader loads kernel and jumps into it

### for sprinter OS

- we want to boot from eMMC for everything (NOR FLASH)
- we start at the actual bootloader
- To write emmc, basically just load files into an SD card with linux, then dd into emmc


### Recovery Process
We can flash and boot via uart if we ever run into an issue with the EMMC (SERIAL DOWNLOAD MODE)


### Specifics
