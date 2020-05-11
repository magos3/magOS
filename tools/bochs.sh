#!/bin/sh
# 
# -q : silent mode
#

bochs -q -rc ./bochs_cmd.txt 


set -x


bochs \
    -qf /dev/null \
    'ata0-master: type=disk, path="/home/jadmin/magOS/LabOS/bin/vmlabos.iso", mode=flat' \
    'boot: disk' \
    'display_library: sdl' \
    'megs: 128'

    