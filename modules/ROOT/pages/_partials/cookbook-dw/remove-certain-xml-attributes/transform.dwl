%dw 2.0
input payload application/json
output application/xml inlineCloseOn="empty"
var removeAttribute = (element,attrName) ->
  element mapObject (value, key) -> {
    (key) @(
        (
          if (key.@?)
            (key.@ - attrName)
          else {}
        )
    ) :
    if (value is Object)
      removeAttribute(value, attrName)
    else value
  }
---
removeAttribute(payload, "password")
