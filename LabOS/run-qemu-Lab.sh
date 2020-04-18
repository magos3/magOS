#!/bin/bash
# Qemu 4.2
# Usage :
#        ./start-qemu-Lab.sh num [-g]
# 			<num> is Lab Number (1,2,...)
#			-g : run in debug mode (GDB)
#	       
# Block device options (Qemu 4):
#    -fda file      :floppy disk 0 image
#	 -hda file
# 	 -hdb file      hard disk 0, 1, 2 or 3 image
#	 -cdrom file
# All standard options:
#	 https://www.qemu.org/docs/master/qemu-doc.html#Standard-options		
#
#
# NOTE: Kernel Image must mounted on drive 0, Qemu option -hda. Because it is hard-coded in bootsect.S 
#          
#
set -x

LAB_NUM=$1

LABOS_ISO=$HOME/magOS/bin/Lab$LAB_NUM/vmlabos.iso
ARCH=i386
QEMU_OPTS='-vga std' 
#QEMU_OPTS=' -nographic '
LOGFILE=/tmp/qemu.log

if [ ""$2 == "-g" ] ; then
  DEBUG="-s  -S"
fi

qemu-system-$ARCH -m 64  $DEBUG  $QEMU_OPTS -boot order=d -hda $LABOS_ISO -D $LOGFILE $LOGOPT

