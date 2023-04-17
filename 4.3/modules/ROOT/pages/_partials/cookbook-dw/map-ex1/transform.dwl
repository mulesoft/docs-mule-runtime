%dw 2.0
output application/json
---
items: payload.books map (item, index) -> {
      book: item mapObject (value, key) -> {
      (upper(key)): value
      }
}
