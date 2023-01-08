.section .text.entry
.globl _start               
# ;.global 将 _start 暴露给连接器

_start:
    la sp, boot_stack_top
    call rust_main

    .section .bss.stack
    .globl boot_stack
boot_stack:
    .space 4096 * 16
    .globl boot_stack_top
boot_stack_top:
# 栈是反向增长的，高地址才是栈顶的地址