%dw 2.0
var myData = {
  "people": {
    "person": {
      "name": "Nial",
      "address": {
        "street": {
          "name": "Italia",
          "number": 2164
        },
        "area": {
          "zone": "San Isidro",
          "name": "Martinez"
        }
      }
    }
  }
}
output application/xml
---
names: {(myData.people..&name)}
