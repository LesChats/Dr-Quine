/*
	Go quine
*/
package main
import "fmt"
func quine(q string) {
fmt.Printf("%s%c%s%c\nquine(q)\n}\n", q, 0x60, q, 0x60)
}
func main() {
/*
	Go quine
*/
var q = `/*
	Go quine
*/
package main
import "fmt"
func quine(q string) {
fmt.Printf("%s%c%s%c\nquine(q)\n}\n", q, 0x60, q, 0x60)
}
func main() {
/*
	Go quine
*/
var q = `
quine(q)
}
