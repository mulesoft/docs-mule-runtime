%dw 2.0
var arrayOne = [
                  [
                     "fruit" : "orange",
                     "fruit" : "apple"
                  ],
                  [
                     "fruit" : "grape",
                     "notfruit" : "something else"
                  ]
               ]
var arrayTwo = [
                  [
                  	{  "fruit" : "kiwi" }
                  ],
                  "fruit" : "strawberry",
                  "fruit" : "plum",
                  { "fruit" : "banana" },
                  "notfruit" : "something else"
               ]
output application/json
---
flatten(arrayOne ++ arrayTwo)
