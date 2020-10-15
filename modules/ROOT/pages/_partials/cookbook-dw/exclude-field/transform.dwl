%dw 2.0
output application/xml
---
users: {
      (payload.users mapObject {
        user: {
        personal_information: $.personal_information - "ssn",
        login_information: $.login_information - "password"
        }
      })
}
