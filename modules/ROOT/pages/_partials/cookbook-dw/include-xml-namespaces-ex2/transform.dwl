%dw 2.0
fun dynKeyNs(ns0: Namespace, value: Any) = { ns0#myDynKey: value }
fun dynAttrNs(ns0: Namespace, value: Any) = { myChildTag @(ns0#myDynAttribute: true): value }
var namespace1 = {uri: "http://acme.com", prefix: "ns0"} as Namespace
var namespace2 = {uri: "http://emca.com", prefix: "ns0"} as Namespace
output application/xml
---
root:

{
  mytagA: dynKeyNs(namespace1, "myTest1"),
  myTagB: dynKeyNs(namespace2, "myTest2"),
  myTagC: dynAttrNs(namespace1, "myTest1"),
  myTagD: dynAttrNs(namespace2, "myTest2")
}
