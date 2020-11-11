%dw 2.0
var myObject = { user : "a", "user" : "b" }
output application/json
---
{ myObjectExample : myObject.user }
