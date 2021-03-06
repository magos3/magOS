## magOS
This is a Unix like kernel. it is very simple. It may help understanding Unix/Linux internals.

I have more than 15 years experience on Java/AppServers, I have also experience on Linux, Aix, Oracle database.

## Prerequisities on Ubuntu 18.08
- Prerequisities
- Build a Cross C Compiler for i386 architecture

    $ ./tools/build-cross-gcc.sh  

- Install genext2fs, to generate an ext2 FS by a non-root user.

    $ sudo apt install genext2fs

- Install Qemu

    $ sudo apt install qemu

- Build Grub from source

    ./tools/build-grub.sh

## Build magOS


## Development Environment
- Environment: 
  On Andoid: Terminal emulator, Gnuroot Debian
- Alias to add in /home/.bashrc
  
    alias cdm='cd /magOS'
    alias kgdb='bash /magOS/tools/gdb-qemu.sh kernel'
    alias ugdb='bash /magOS/tools/qemu-qemu.sh userspace'

- Launch qemu  
    
    bash /magOS/tools/run-qemu.sh [-g]

## Notes utiles
Disassembler un binaire 16 bit (Real Mode)  

    objdump -m i8086 -b binary -D bin/boot/setup.bin
   
Disassembler un binaire 
   
    objdump -D -b binary -m i386 kernel/kernel > kernel/kernel.disas

Compiler sous Android
   make -e GCC=arm-eabi-gcc
   cela redifinit dans Makefile la variable GCC=gcc

Build cross compiler gcc
  see script "build-cross-gcc.sh"

## GRUB
see http://wiki.osdev.org/GRUB
    http://pete.akeo.ie/2014/05/compiling-and-installing-grub2-for.html?m=1
Grub install :
 use script ./build-grub.sh
Grub setup on gnuroot/android :
 - create a disk image of 20MB
   $ dd if=/dev/zero of=hd-magos.img bs=512 count=40960
 - Create new DOS partition table with bootable entry for your filesystem
   $ fdisk -u hd-magos.img 
   Add new partition, starting at 1MB (2048th sector)
   Command (m for help): n  p 1 2048 a w ('a' Make partition bootable)
 - move hd-magos.img to /host-rootfs/sdcard/ABR/test/
 - format partition at offset
   $ mkfs.ext2 -E offset=1048576 hd-magos.img
     1048576 offset is 1MB
 - debugfs : modify fs
   debugfs -w dd.imag
   debugfs:  mkdir /bin
   debugfs:  write /magOS/bin/usr/shell /bin/shell
   debugfs:  pwd
   [pwd]   INODE:     13  PATH: /bin
   [root]  INODE:      2  PATH: /
   debugfs:  help
 - Using terminalEmulator/busybox/root, setup two loop devices(grub MBR, fs) :
   su -
   mount -o rw,remount /
   mkdir /media
   mount -o ro,remount /    
   cd /sdcard/ABR/test
   busybox losetup /dev/block/loop0 hd-magos.img
   busybox losetup /dev/block/loop1 hd-magos.img -o 1048576
   busybox mke2fs  /dev/block/loop1 
   busybox mount /dev/block/loop1 /media   (after link creation)
   cd /media
   display superblok of the first partition
   $ xxd -l 1024 -s `expr 1048576 + 1024` hd-magos.img
   /!\ dont use /mnt as mount point on android, it is used by somme apps.
 - using gnuroot: 
   cd /
   ln -s host-rootfs/media
   cd /media
   mkdir -p /media/boot/grub
   cat > /media/boot/grub/device.map << !
         (hd0)   /dev/block/loop0
         (hd0,1) /dev/block/loop1
         !
   /cross/grub/grub-install --root-directory=/media --no-floppy --modules="normal part_msdos ext2 multiboot biosdev" /dev/block/loop0
   
## Docs
 - x86 instruction reference set(EXCELLENT): http://x86.renejeschke.de
 - TacOS : https://github.com/TacOS-team/tacos/wiki/
 - http://ece-research.unm.edu/jimp/310/
