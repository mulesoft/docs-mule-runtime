%dw 2.0
var myVar = read("<greeting><ex1></ex1><ex2>hello</ex2><ex3 a='greeting'>hello</ex3></greeting>", "application/xml", {nullValueOn: "empty"})
output application/json with binary
---
write(myVar.greeting, "application/json", {skipNullOn:"objects", writeAttributes:true})
