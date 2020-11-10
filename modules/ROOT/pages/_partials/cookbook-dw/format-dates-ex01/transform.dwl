%dw 2.0
output application/json
---
[
  formattedDate: |2020-10-01T23:57:59| as String {format: "uuuu-MM-dd"},
  formattedTime: |2020-10-01T23:57:59| as String {format: "KK:mm:ss a"},
  formattedDateTime: |2020-10-01T23:57:59| as String {format: "KK:mm:ss a, MMMM dd, uuuu"}
]
