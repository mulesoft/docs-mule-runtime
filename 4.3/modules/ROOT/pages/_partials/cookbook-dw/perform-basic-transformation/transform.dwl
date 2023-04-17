%dw 2.0
output application/json
---
{
        address1: payload.order.buyer.address,
        city: payload.order.buyer.city,
        country: payload.order.buyer.nationality,
        email: payload.order.buyer.email,
        name: payload.order.buyer.name,
        postalCode: payload.order.buyer.postCode,
        stateOrProvince: payload.order.buyer.state
}
