#include <stdio.h>
/*
	"Yields falsehood when preceded by its quotation"
*/
int fixed(void) {
	return printf("\tprintf(\"Yields falsehood when preceded by its quotation\");\n}\n");
}
int main(void) {
	/*
		"Yields falsehood when preceded by its quotation"
	*/
	char *s = "#include <stdio.h>%1$c/*%1$c%2$c%3$cYields falsehood when preceded by its quotation%3$c%1$c*/%1$cint fixed(void) {%1$c%2$creturn printf(%3$c%4$ctprintf(%4$c%3$cYields falsehood when preceded by its quotation%4$c%3$c);%4$cn}%4$cn%3$c);%1$c}%1$cint main(void) {%1$c%2$c/*%1$c%2$c%2$c%3$cYields falsehood when preceded by its quotation%3$c%1$c%2$c*/%1$c%2$cchar *s = %3$c%5$s%3$c;%1$c%2$cprintf(s, 0xa, 0x9, 0x22, 0x5c, s);%1$c%2$creturn fixed();%1$c";
	printf(s, 0xa, 0x9, 0x22, 0x5c, s);
	return fixed();
	printf("Yields falsehood when preceded by its quotation");
}
