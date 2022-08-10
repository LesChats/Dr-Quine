section .text
global main
extern getenv
extern setenv
extern sprintf
extern dprintf
extern system
main:push rbp
push rbx
sub rsp,168
mov ebx,5
test ebx,ebx
je .end
mov edi,Sully
call getenv
cmp rax,1
adc ebx,-1
mov rdi,rsp
mov esi,Sully_s
mov edx, ebx
call sprintf
mov rsi,rsp
mov edi,Sully
mov edx,1
call setenv
mov rdi,rsp
mov esi,0x42
mov edx,0x1e4
mov rax,2
syscall
sub rsp,8
push rbx
mov r9d,s
mov r8d,0x25
mov ecx,0x22
mov edx,0xa
mov rsi,r9
mov edi,eax
mov ebp,eax
call dprintf
mov edi,ebp
mov rax,3
syscall
mov edx,ebx
mov esi,cmd
lea rdi,[rsp+48]
call sprintf
lea rdi,[rsp+48]
call system
add rsp,16
.end:add rsp,168
pop rbx
pop rbx
ret
section .data
Sully:db"Sully",0
Sully_s:db"Sully_%d.s",0
cmd:db"nasm -f elf64 Sully_%1$d.s -o Sully_%1$d.o && gcc -no-pie -Wall -Wextra -Werror Sully_%1d.o -o Sully_%1$d && ./Sully_%1$d",0
s:db"section .text%1$cglobal main%1$cextern getenv%1$cextern setenv%1$cextern sprintf%1$cextern dprintf%1$cextern system%1$cmain:push rbp%1$cpush rbx%1$csub rsp,168%1$cmov ebx,%5$d%1$ctest ebx,ebx%1$cje .end%1$cmov edi,Sully%1$ccall getenv%1$ccmp rax,1%1$cadc ebx,-1%1$cmov rdi,rsp%1$cmov esi,Sully_s%1$cmov edx, ebx%1$ccall sprintf%1$cmov rsi,rsp%1$cmov edi,Sully%1$cmov edx,1%1$ccall setenv%1$cmov rdi,rsp%1$cmov esi,0x42%1$cmov edx,0x1e4%1$cmov rax,2%1$csyscall%1$csub rsp,8%1$cpush rbx%1$cmov r9d,s%1$cmov r8d,0x25%1$cmov ecx,0x22%1$cmov edx,0xa%1$cmov rsi,r9%1$cmov edi,eax%1$cmov ebp,eax%1$ccall dprintf%1$cmov edi,ebp%1$cmov rax,3%1$csyscall%1$cmov edx,ebx%1$cmov esi,cmd%1$clea rdi,[rsp+48]%1$ccall sprintf%1$clea rdi,[rsp+48]%1$ccall system%1$cadd rsp,16%1$c.end:add rsp,168%1$cpop rbx%1$cpop rbx%1$cret%1$csection .data%1$cSully:db%2$cSully%2$c,0%1$cSully_s:db%2$cSully_%3$cd.s%2$c,0%1$ccmd:db%2$cnasm -f elf64 Sully_%3$c1$d.s -o Sully_%3$c1$d.o && gcc -no-pie -Wall -Wextra -Werror Sully_%3$c1d.o -o Sully_%3$c1$d && ./Sully_%3$c1$d%2$c,0%1$cs:db%2$c%4$s%2$c,0%1$c",0
