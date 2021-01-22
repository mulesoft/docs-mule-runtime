%dw 2.0
output application/xml
---
{ root : payload.language[1] }
