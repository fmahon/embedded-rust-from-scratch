#!/bin/bash -x

directory_of_this_files=$(dirname $(readlink -f $0))
gdbinitfile=$directory_of_this_files/gdbinit
arg1=$directory_of_this_files/app/target/thumbv6m-none-eabi/debug/app
# if linux debian use gdb-multiarch and for windows use arm-none-eabi-gdb
if [ -f /usr/bin/gdb-multiarch ]; then
    gdb-multiarch -x $gdbinitfile $arg1
else
    arm-none-eabi-gdb -x $gdbinitfile $arg1
fi