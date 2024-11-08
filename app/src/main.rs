#![no_std]
#![no_main]

use core::ptr::addr_of;
use rt::entry;

entry!(main);

static RODATA: &[u8] = b"Hello, world!";
static mut BSS: u8 = 0;
static mut DATA: u16 = 1;

fn main() -> ! {
    let _x = RODATA;
    let _y = unsafe { addr_of!(BSS) };
    let _z = unsafe { addr_of!(DATA) };

    loop {}
}
