;grace upon grace
%define ENTRYPOINT global main
%define MAIN main:
section .text
ENTRYPOINT
extern printf
extern dprintf
MAIN push rbx
mov rdi,f
mov rsi,0x42
mov rdx,644o
mov rax,2
syscall
mov rdi,rax
mov rsi,s
mov rdx,0xa
mov rcx,0x22
mov r8,s
mov r9,0x25
call dprintf
pop rbx
ret
section .data
f:db"Grace_kid.s",0
s:db";grace upon grace%1$c%4$cdefine ENTRYPOINT global main%1$c%4$cdefine MAIN main:%1$csection .text%1$cENTRYPOINT%1$cextern printf%1$cextern dprintf%1$cMAIN push rbx%1$cmov rdi,f%1$cmov rsi,0x42%1$cmov rdx,644o%1$cmov rax,2%1$csyscall%1$cmov rdi,rax%1$cmov rsi,s%1$cmov rdx,0xa%1$cmov rcx,0x22%1$cmov r8,s%1$cmov r9,0x25%1$ccall dprintf%1$cpop rbx%1$cret%1$csection .data%1$cf:db%2$cGrace_kid.s%2$c,0%1$cs:db%2$c%3$s%2$c,0%1$c",0
