# test with RP2040 

## build and flash

cargo build 


start openpcd 

openocd -f interface/cmsis-dap.cfg -f target/rp2040.cfg

flash the fw 

> arm-none-eabi-gdb -q target/thumbv6m-none-eabi/debug/app

> target remote :3333

> load


