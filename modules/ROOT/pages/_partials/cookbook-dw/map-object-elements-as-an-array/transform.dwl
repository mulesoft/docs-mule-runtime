%dw 2.0
var myInputExample = {
  "inventory": {
      "book" : {
        "category": "cooking",
        "title": "Everyday Italian",
        "author": "Giada De Laurentiis",
        "year": "2005",
        "price": "30.00"
      },
      "book" :{
        "category": "children",
        "title": "Harry Potter",
        "author": "J K. Rowling",
        "year": "2005",
        "price": "29.99"
      },
      "book" :{
        "category": "web",
        "title": "Learning XML",
        "author": "Erik T. Ray",
        "year": "2003",
        "price": "39.95"
      },
      "magazine" :{
        "category": "web",
        "title": "Wired Magazine",
        "edition": "03-2017",
        "price": "15.95"
      },
        "magazine" :{
        "category": "business",
        "title": "Time Magazine",
        "edition": "04-2017",
        "price": "17.95"
      }
   }
}
output application/json
---
items: myInputExample.inventory.*book map (item, index) -> {
      "theType": "book",
      "theID": index,
      "theCategory": item.category,
      "theTitle": item.title,
      "theAuthor": item.author,
      "theYear": item.year,
      "thePrice": item.price as Number
}
