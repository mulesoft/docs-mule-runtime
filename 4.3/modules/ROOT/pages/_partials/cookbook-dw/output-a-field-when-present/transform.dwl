%dw 2.0
output application/xml
---
users: { (payload map
        user: {
          name: $.name,
          (insurance: $.insurance) if($.insurance?)
        } )
}
