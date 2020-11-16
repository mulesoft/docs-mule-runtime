%dw 2.0
output application/json
fun format(d: DateTime) = d as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSS"}
---
{
    CreatedDateTime: format(|2019-02-13T13:23:00.120Z| >> "CET"),
}
