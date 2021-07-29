%dw 2.0
output application/xml
var myNS = {uri: "http://www.abc.com", prefix: "ns-0"} as Namespace
---
{myNS#bla : "dw"}
