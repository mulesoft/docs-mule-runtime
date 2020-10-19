%dw 2.0
var myVar = "someString"
output application/json
---
myVar match {
    case myVarOne if (myVar == "some") -> ("some" ++ "is myVar")
    case myVarOne if (myVar == "strings") -> ("strings" ++ "is myVar")
    else -> myVar ++ " is myVar"
}
