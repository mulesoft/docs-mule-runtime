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
var arrayThree = [
                    { parentOne :
                        [
                     	     { child :
                     	       [
                     	         { grandchild :
                                   {
                                      "fruit" : "watermelon",
                                      "notfruit" : "something else"
                                   }
                                },
                                {
                                   fruit : "cantaloupe",
                                   "notfruit" : "something else"
                                }
                             ]
                           },
                           {
                              fruit : "honeydew",
                              "notfruit" : "something else"
                           }
                        ]
                    },
                    { parentTwo:
                     	  [
                     	  	 fruit : "cherry",
                     		   "notfruit" : "something else"
                     	  ]
                    }
                 ]
output application/json
---
flatten(arrayOne ++ arrayTwo ++ arrayThree)..*fruit
