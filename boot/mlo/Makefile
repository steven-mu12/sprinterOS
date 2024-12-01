# /*
#  * File: Makefile
#  * Project: sprinterOS MLO
#  * Author: Steven Mu
#  * Date: Nov 30th, 2024

#  * Description:
#  * Make utility for generating MLO
#  */

# toolset (compiler, assembler, linker)
CC = arm-none-eabi-gcc
AS = arm-none-eabi-as
LD = arm-none-eabi-ld
OBJCOPY = arm-none-eabi-objcopy

# compilation flags
# - must use mARM since thumb is disabled, and wall is enable warnings
CFLAGS = -mcpu=cortex-a8 -marm -Wall
ASFLAGS = -mcpu=cortex-a8
LDFLAGS = -T linker.ld		


# compilation ruleset
all: MLO

# "to get MLO, we need start.o and main.o" - use linker to make mlo.elf from .o files, then get raw binary MLO
MLO: build start.o main.o
	$(LD) $(LDFLAGS) -o build/mlo.elf build/start.o build/main.o
	$(OBJCOPY) -O binary build/mlo.elf build/MLO

# "to get start.o, we need to assemble start.S (because it's assembly)
start.o: src/start.S
	$(AS) $(ASFLAGS) -o build/start.o src/start.S

# "to get main.o, we need to compile main.c (because it's C)
main.o: src/main.c
	$(CC) $(CFLAGS) -c -o build/main.o src/main.c

build:
	mkdir -p build

clean:
	rm -r -f build