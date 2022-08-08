#include <stdio.h>
#include <fcntl.h>
#define OPEN(x) (open((x), O_CREAT|O_RDWR, 0644))
#define s "#include <stdio.h>%1$c#include <fcntl.h>%1$c#define OPEN(x) (open((x), O_CREAT|O_RDWR, 0644))%1$c#define s %2$c%3$s%2$c%1$c#define m int main(void){dprintf(OPEN(%2$cGrace_kid.c%2$c), s, 0xa, 0x22, s);}%1$c/*Yields falsehood when preceded by its quotation*/%1$cm%1$c"
#define m int main(void){dprintf(OPEN("Grace_kid.c"), s, 0xa, 0x22, s);}
/*Yields falsehood when preceded by its quotation*/
m
