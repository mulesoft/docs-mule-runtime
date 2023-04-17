%dw 2.0
output application/xml
ns orders http://www.acme.com/shemas/Orders
ns stores http://www.acme.com/shemas/Stores
---
root:
    orders#orders: {
        stores#shipNodeId: "SF01",
        stores#shipNodeId @(shipsVia:"LA01"): "NY03"
    }
