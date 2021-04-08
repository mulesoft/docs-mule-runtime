%dw 2.0
import * from dw::core::Strings
output application/json
---
payload mapObject ((elementValue, elementKey) -> {
  (if (elementValue is Array)
      pluralize(elementKey)
    else if(elementValue is Number)
      camelize(elementKey)
    else capitalize(elementKey)) : elementValue
})
