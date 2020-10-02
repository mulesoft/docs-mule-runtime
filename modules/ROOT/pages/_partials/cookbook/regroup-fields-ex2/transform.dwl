%dw 2.0
output application/json
---
"langs" : payload.langs groupBy $.language mapObject ((nameGroup, language) -> {
     "language" : language,
     "attendees" :
     (nameGroup map {
           name: $.name
     })
})
