%dw 2.0
output application/json
---
items: (payload.books map {
      category: "book",
      price: $.price as Number,
      id: $$,
      properties: {
        title: $.title,
        author: $.author,
        year: $.year as Number
      }
})
