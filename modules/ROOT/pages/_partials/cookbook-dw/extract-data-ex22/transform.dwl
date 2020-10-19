%dw 2.0
output application/json
---
{ users: payload.users.*name[?($ == "Mariano")] }
