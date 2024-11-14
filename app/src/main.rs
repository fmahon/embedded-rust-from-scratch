#![no_std]
#![no_main]

use core::intrinsics;
use rt::entry;

entry!(main);

static RODATA: &[u8] = b"Hello, world!";
static mut BSS: u8 = 0;
static mut DATA: u16 = 1;

fn main() -> ! {
    intrinsics::abort()
}
