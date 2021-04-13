%dw 2.0
output application/json
---
payload map (item, index) ->
{
    name: item.name,
    id: item.itemID,
    screws: zip(item.screws.size, item.screws.quantity),
    measurements: zip(item.measurements.x,item.measurements.y )
}
