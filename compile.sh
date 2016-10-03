arm-none-eabi-gcc -mcpu=arm1176jzf-s -fpic -ffreestanding -c src/boot.s -o bin/boot.o
arm-none-eabi-gcc -mcpu=arm1176jzf-s -fpic -ffreestanding -std=gnu99 -c src/kernel.c -o bin/kernel.o -O2 -Wall -Wextra
arm-none-eabi-gcc -T src/linker.ld -o bin/myos.elf -ffreestanding -O2 -nostdlib bin/boot.o bin/kernel.o
arm-none-eabi-objcopy bin/myos.elf -O binary bin/myos.bin
