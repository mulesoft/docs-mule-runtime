%dw 2.0
import * from dw::core::Strings
output application/xml
fun applyToKeys(element, func) =
    if (element is Object)
        element mapObject (value, key) -> {
        (func(key)) : applyToKeys( value, func)
        }
    else element
---
applyToKeys(payload, (key) -> lower(key))
