%dw 2.0
output application/json
---
{ names: payload.people..name }
