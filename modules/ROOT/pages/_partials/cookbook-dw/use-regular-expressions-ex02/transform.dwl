%dw 2.0
var myCompany = { "name" : "biz" }
var myInputA = "somebiz-98765"
output application/json
---
{
  example: myInputA replace (("(^s.*e)" ++ myCompany.name) as Regex) with ("abcd")
}
