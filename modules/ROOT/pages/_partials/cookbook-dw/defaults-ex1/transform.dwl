%dw 2.0
output application/json
---
{
  "userId": payload.id default "0000",
  "userName": payload.name default "Undefined"
}
