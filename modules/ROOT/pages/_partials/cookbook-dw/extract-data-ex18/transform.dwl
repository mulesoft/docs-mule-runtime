%dw 2.0
var myVar = read('<product id="1" type="electronic">
  <brand>SomeBrand</brand>
</product>', 'application/xml')
output application/json
---
{
  item: [
  	{
      "type" : myVar.product.@."type",
      "name" : myVar.product.brand,
      "attributes": myVar.product.@
    }
  ]
}
