package main
import (
"os"
"fmt"
)
/*
	Go quine
*/
var c = func() {
f, err := os.Create("Grace_kid.go")
if err != nil {
return
}
c := "package main%[1]cimport (%[1]c%[2]cos%[2]c%[1]c%[2]cfmt%[2]c%[1]c)%[1]c/*%[1]c%[3]cGo quine%[1]c*/%[1]cvar c = func() {%[1]cf, err := os.Create(%[2]cGrace_kid.go%[2]c)%[1]cif err != nil {%[1]creturn%[1]c}%[1]cc := %[2]c%[4]s%[2]c%[1]cfmt.Fprintf(f, c, 0xa, 0x22, 0x9, c)%[1]c}%[1]cfunc main() {%[1]cc()%[1]c}%[1]c"
fmt.Fprintf(f, c, 0xa, 0x22, 0x9, c)
}
func main() {
c()
}
