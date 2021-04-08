%dw 2.0
output application/xml
---
{
  users: payload.users.&user
}
