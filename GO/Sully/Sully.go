package main
import("fmt";"os";"os/exec")
func main(){
i:=5;if(i==-1){return};if(os.Getenv("Sully")!=""){i--}
f:=fmt.Sprintf("Sully_%d.go",i);os.Setenv("Sully",f)
s:="package main%[1]cimport(%[2]cfmt%[2]c;%[2]cos%[2]c;%[2]cos/exec%[2]c)%[1]cfunc main(){%[1]ci:=%[4]d;if(i==-1){return};if(os.Getenv(%[2]cSully%[2]c)!=%[2]c%[2]c){i--}%[1]cf:=fmt.Sprintf(%[2]cSully_%%d.go%[2]c,i);os.Setenv(%[2]cSully%[2]c,f)%[1]cs:=%[2]c%[3]s%[2]c%[1]cfd,_:=os.Create(f);fmt.Fprintf(fd,s,0xa,0x22,s,i);fd.Close()%[1]cargs:=[]string{%[2]crun%[2]c,%[2]c./%[2]c+f};exec.Command(%[2]cgo%[2]c,args...).Start()%[1]c}%[1]c"
fd,_:=os.Create(f);fmt.Fprintf(fd,s,0xa,0x22,s,i);fd.Close()
args:=[]string{"run","./"+f};exec.Command("go",args...).Start()
}
