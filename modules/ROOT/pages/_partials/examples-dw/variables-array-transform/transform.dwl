%dw 2.0
import * from dw::core::Strings
output application/json
var numberArray = [1,2,3,4,5,6]
var stringArray = ["max", "astro", "einstein"]
---
{
  "numberArrayUpdated" : numberArray map ((value, index) -> value * value),
  "stringArrayUpdated" : stringArray map ((value, index) -> index ++ " - " ++ capitalize(value))
}
