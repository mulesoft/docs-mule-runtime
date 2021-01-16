%dw 2.0
output application/xml
---
{ mysubelement : payload.root[0].subelement1 }
