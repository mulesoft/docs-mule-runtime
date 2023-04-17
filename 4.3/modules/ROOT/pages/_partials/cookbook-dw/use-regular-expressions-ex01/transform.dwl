%dw 2.0
var myString = "mycompany.com"
output application/json
---
{
	"contains" : myString contains(/c.m/),
	"find" : myString find(/[m|n].|m$/),
	"match" : myString match(/([a-z]*).[a-z]*/),
	"matches" : myString matches(/([a-z]*).[a-z]*/),
	"replaceWith" : myString replace /\..*m/ with ".net",
	"scan" : myString scan(/([a-z]*).(com)/),
	"splitBy" : myString splitBy(/[.\/]/)
}
