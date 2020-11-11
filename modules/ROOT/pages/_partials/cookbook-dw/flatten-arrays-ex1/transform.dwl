%dw 2.0
var arrayOne = [
                 [
                    "keyOne" : 1,
                    "keyTwo" : 2
                 ],
                 [
                    "keyThree" : 3,
                    "keyFour" : 4,
                    "keyFive" : 5
                 ],
                 "keySix" : 6
               ]
output application/json
---
flatten(arrayOne)
