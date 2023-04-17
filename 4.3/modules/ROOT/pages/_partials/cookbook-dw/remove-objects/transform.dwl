%dw 2.0
var dropThese = [
{"type" : "secondary", "space" : "rgb"},
{"type" : "primary", "space" : "cmyk"}
]
output application/json
---
payload filter (not (dropThese contains {"type": $."type", "space": $."space"}))
