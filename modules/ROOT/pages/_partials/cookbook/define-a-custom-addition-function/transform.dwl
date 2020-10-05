%dw 2.0
output application/json
var tax = 0.085
var discount = 0.05
fun getSubtotal (items) = items reduce ((item, accumulator = 0) ->
        accumulator + (item.unit_price * item.quantity * (1 - discount)))
---
invoice: {
    header: payload.invoice.header,
    items: { (payload.invoice.items map {
        item : {
            description: $.description,
            quantity: $.quantity,
            unit_price: $.unit_price,
            discount: (discount * 100) as Number ++ "%",
            subtotal: $.unit_price * $.quantity * (1 - discount)
        }
    }) },
    totals:
    {
        subtotal: getSubtotal(payload.invoice.items ),
        tax: (tax * 100) as Number ++ "%",
        total: getSubtotal(payload.invoice.items ) * (1 + tax)
    }
}
