%dw 2.0
var firstInput = [
  { "bookId":"101",
    "title":"world history",
    "price":"19.99"
  },
  {
    "bookId":"202",
    "title":"the great outdoors",
    "price":"15.99"
  }
]
var secondInput = [
  {
    "bookId":"101",
    "author":"john doe"
  },
  {
    "bookId":"202",
    "author":"jane doe"
  }
]
output application/json
---
firstInput map (firstInputValue) -> using (id = firstInputValue.bookId)
  {
    theValue : id as Number,
    theTitle: firstInputValue.title,
    thePrice: firstInputValue.price as Number,
    (secondInput filter ($.*bookId contains id)  map (secondInputValue) -> {
      theAuthor : secondInputValue.author
    })
  }
