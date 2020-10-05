%dw 2.0
var myObject = { user : "a" }
output application/json
---
{ myObjectExample : myObject.user }
