/* Memory layout of the LM3S6965 microcontroller */
/* 1K = 1 KiBi = 1024 bytes */
MEMORY
{
  FLASH (rx) : ORIGIN = 0x10000000, LENGTH = 2M
  RAM (xrw) : ORIGIN = 0x20000000, LENGTH = 264K
}

/* The entry point is the reset handler */
ENTRY(Reset);

EXTERN(RESET_VECTOR);

SECTIONS
{
  .vector_table ORIGIN(FLASH) :
  {
    /* First entry: initial Stack Pointer value */
    LONG(ORIGIN(RAM) + LENGTH(RAM));

    /* Second entry: reset vector */
    KEEP(*(.vector_table.reset_vector));
  } > FLASH

  .text :
  {
    *(.text .text.*);
  } > FLASH

  /DISCARD/ :
  {
    *(.ARM.exidx .ARM.exidx.*);
  }
}