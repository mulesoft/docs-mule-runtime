%dw 2.0
output application/json
var myData = [{name:1},{name:2},{name:3}]
fun myExternalFunction(data): Array =
    if(data.name == 1)
        []
    else if(data.name == 2)
        [{name: 3}, {name:5}]
    else
        [data]
---
//flatten(myData map ((item, index) -> myExternalFunction(item)))
myData flatMap ((item, index) -> myExternalFunction(item))
