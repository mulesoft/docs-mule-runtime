%dw 2.0
output application/xml
---
books: {
  (payload filter ($.properties.year > attributes.publishedAfter) map  (item)   ->  {
    book @(year: item.properties.year): {
      (variables.exchangeRate.USD map {
        price @(currency: $.currency): $.ratio * item.price
      }),
      title: item.properties.title,
      authors: { (item.properties.author map {
        author: $
      }) }
    }
  } )
}
