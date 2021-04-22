OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  __stack_size = 2K;

  . = 0x80000000;
  .text.init : { *(.text.init) }
  .tohost ALIGN(0x1000) : { *(.tohost) }
  .text ALIGN(0x1000) : { *(.text) }
  .data ALIGN(0x1000) :
  {
    *(.data)
    . = ALIGN(8);
    PROVIDE( __global_pointer$ = . + 0x800 );
  }
  .bss : { *(.bss) }
  .stack 0x80000000 + (1 << 16) - __stack_size :
  {
    PROVIDE( _heap_end = . );
    PROVIDE( _sp = 2K);
  }
  _end = .;
}
