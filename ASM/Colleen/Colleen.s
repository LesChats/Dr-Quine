;Yields falsehood
section .data
s db";Yields falsehood%2$csection .data%2$cs db%3$c%1$s%3$c%2$csection .text%2$cglobal main%2$cextern printf%2$cmain:call .colleen%2$c;Yields falsehood%2$cxor eax,eax%2$cret%2$c.colleen:mov rdi,s%2$cmov rsi,s%2$cmov rdx,0xa%2$cmov rcx,0x22%2$ccall printf%2$c"
section .text
global main
extern printf
main:call .colleen
;Yields falsehood
xor eax,eax
ret
.colleen:mov rdi,s
mov rsi,s
mov rdx,0xa
mov rcx,0x22
call printf
