%dw 2.0
output application/json
---
classrooms: payload..*teacher groupBy $.subject mapObject ((teacherGroup, subject) -> {
   class: {
     name: subject,
     teachers: { (teacherGroup map {
       teacher:{
           name: $.name,
           lastName: $.lastName
       }
     })
   }
  }
})
