%dw 2.0
var myInput = readUrl("classpath://ourBugs.xlsx", "application/xlsx")
output application/json
---
myInput."Data" filter ((entry, index) -> entry."Assignee" == "Fred M")
