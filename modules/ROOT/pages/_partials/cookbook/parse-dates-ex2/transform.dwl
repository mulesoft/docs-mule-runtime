%dw 2.0
output application/xml
fun normalize(date) = (date) replace "/" with "-" replace "." with "-"
---
// Outputs date values as Date types in the specified format
dates: (payload.dates mapObject {
    normalized_as_date: (normalize($) as Date {format: "d-MMM-yy"})
})
