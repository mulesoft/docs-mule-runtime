%dw 2.0
output application/json

var append =
    {
    "Id": "2",
    "Access": "4444",
    "Subteam": "1",
    }

fun extractNumber(pageName: Key) =
     (pageName as String match  /\(sheet\)([0-9]+)/)[1]
---
payload mapObject ((value, key, index) -> do {
        if(extractNumber(key) == append.Id)
            {(key): value << append}
         else
            {(key): value}
})
