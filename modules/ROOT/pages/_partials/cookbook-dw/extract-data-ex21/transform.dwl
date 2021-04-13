%dw 2.0
output application/json
---
{
  item: {
    typePresent : payload.product.@."type"?
  }
}
