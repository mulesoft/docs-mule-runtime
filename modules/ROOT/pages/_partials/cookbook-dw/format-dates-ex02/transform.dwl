%dw 2.0
output application/json
type Mydate = String { format: "uuuu/MM/dd" }
---
{
  formattedDate1: |2019-10-01T23:57:59| as Mydate,
  formattedDate2: |2020-07-06T08:53:15| as Mydate
}
