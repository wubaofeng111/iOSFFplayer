MineAsm`main:
0x100000f60 <+0>:  pushq  %rbp
0x100000f61 <+1>:  movq   %rsp, %rbp
0x100000f64 <+4>:  subq   $0x20, %rsp
0x100000f68 <+8>:  movl   $0x0, -0x4(%rbp)
0x100000f6f <+15>: movl   %edi, -0x8(%rbp)
0x100000f72 <+18>: movq   %rsi, -0x10(%rbp)
0x100000f76 <+22>: leaq   0x35(%rip), %rdi          ; "abc"
0x100000f7d <+29>: movb   $0x0, %al
0x100000f7f <+31>: callq  0x100000f92               ; symbol stub for: printf
0x100000f84 <+36>: xorl   %ecx, %ecx
->  0x100000f86 <+38>: movl   %eax, -0x14(%rbp)
0x100000f89 <+41>: movl   %ecx, %eax
0x100000f8b <+43>: addq   $0x20, %rsp
0x100000f8f <+47>: popq   %rbp
0x100000f90 <+48>: retq
