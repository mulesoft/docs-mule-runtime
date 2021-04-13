%dw 2.0
output application/xml
---
payload update {
  case user at .users.*user -> user update {
    case .personal_information.first_name -> upper(user.personal_information.first_name)
    case .personal_information.middle_name -> upper(user.personal_information.middle_name)
    case .personal_information.last_name -> upper(user.personal_information.last_name)
  }
}
