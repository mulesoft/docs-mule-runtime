%dw 2.0
output application/json
---
{'date': now() >> "America/Los_Angeles"}
