%dw 2.0
output application/problem+json with json
---
{
  "type": "https://example.org/out-of-stock",
  title: "Out of Stock",
  status: vars.statusCode,
  detail: "Item B00027Y5QG is no longer available",
  product: "B00027Y5QG"
}
