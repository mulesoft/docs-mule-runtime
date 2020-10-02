%dw 2.0
output text/xml
fun normalize(date) date replace "/" with "-" replace "." with "-"
---

dates: (payload.dates mapObject {
    normalized_as_string: normalize($.date)
})
