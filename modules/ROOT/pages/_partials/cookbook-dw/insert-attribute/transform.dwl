%dw 2.0
var myInput = read('<bookstore>
  <book>
    <title>Everyday Italian</title>
    <year>2005</year>
    <price>30</price>
    <author>Giada De Laurentiis</author>
  </book>
  <book>
    <title>Harry Potter</title>
    <year>2005</year>
    <price>29.99</price>
    <author>J K. Rowling</author>
  </book>
  <book>
    <title>XQuery Kick Start</title>
    <year>2003</year>
    <price>49.99</price>
    <author>James McGovern</author>
    <author>Per Bothner</author>
    <author>Kurt Cagle</author>
    <author>James Linn</author>
    <author>Vaidyanathan Nagarajan</author>
  </book>
  <book>
    <title>Learning XML</title>
    <year>2003</year>
    <price>39.95</price>
    <author>Erik T. Ray</author>
  </book>
</bookstore>', 'application/xml')
output application/xml
---
bookstore: myInput.bookstore mapObject (book) -> {
      book : {
      title @(lang: "en", year: book.year): book.title,
      price: book.price,
      (book.*author map
      author @(loc: "US"): $)
    }
}
