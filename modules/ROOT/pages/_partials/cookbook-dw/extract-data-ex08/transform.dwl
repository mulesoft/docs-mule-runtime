%dw 2.0
var myArrayOfKeyValuePairs = [ "aString": "hello", "aNum": 2, "aString" : "world" ]
var myArrayOfObjects = [ { "aString": "hello" }, { "aNum": 2 }, { "aString" : "world" } ]
output application/json
---
{
    myKeyValueExample : myArrayOfKeyValuePairs.*aString,
    myObjectExample :  myArrayOfObjects.*aString
}
