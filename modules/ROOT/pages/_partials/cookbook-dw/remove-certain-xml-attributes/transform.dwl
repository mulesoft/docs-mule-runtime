%dw 2.0
input payload application/json
output application/xml inlineCloseOn="empty"
var removeAttribute = (element,attrName) ->
  element mapObject (value, key) -> {
    // Pass the name of the key of the input object,
    // for example, whether the key is "users" or "user",
    // and use @() to remap the XML attributes.
    (key) @(
        (
          // If the element contains attributes (key.@?),
          // remove any attribute that has the provided key,
          // "password".
          if (key.@?)
            (key.@ - attrName)
          // Otherwise, do nothing.
          else {}
        )
    ) :
    // If the value of the input object contains one or
    // more objects, apply removeAttribute to remove any
    // attribute with the key "password" from those objects.
    if (value is Object)
      removeAttribute(value, attrName)
    // Otherwise, return the value of the input object.
    else value
  }
---
removeAttribute(payload, "password")
