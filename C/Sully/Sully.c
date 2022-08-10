#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
#include<stdlib.h>
int main() {
	int i=5;char f[32],cmd[128];
	if(i==0){return(0);}i-=((getenv("Sully"))!=0);
	char*s="#include<stdio.h>%1$c#include<fcntl.h>%1$c#include<unistd.h>%1$c#include<stdlib.h>%1$cint main() {%1$c%2$cint i=%6$d;char f[32],cmd[128];%1$c%2$cif(i==0){return(0);}i-=((getenv(%3$cSully%3$c))!=0);%1$c%2$cchar*s=%3$c%5$s%3$c;%1$c%2$csprintf(f,%3$cSully_%4$cd.c%3$c,i);setenv(%3$cSully%3$c,f,1);%1$c%2$cint fd=open(f,O_CREAT|O_RDWR,0744);%1$c%2$cdprintf(fd,s,0xa,0x9,0x22,0x25,s,i);%1$c%2$csprintf(cmd,%3$cgcc -Wall -Werror -Wextra %4$cs -o Sully_%4$cd && ./Sully_%4$cd%3$c,f,i,i);%1$c%2$cclose(fd);system(cmd);%1$c}%1$c";
	sprintf(f,"Sully_%d.c",i);setenv("Sully",f,1);
	int fd=open(f,O_CREAT|O_RDWR,0744);dprintf(fd,s,0xa,0x9,0x22,0x25,s,i);
	sprintf(cmd,"gcc -Wall -Werror -Wextra %s -o Sully_%d && ./Sully_%d",f,i,i);
	close(fd);system(cmd);
}
