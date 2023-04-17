%dw 2.0
output application/json
---
{
  slice: [0,1,2][0 to 1],
  last: [0,1,2][-1 to 0]
}
