%dw 2.0
var myData = {
  "people": [
    {
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
    },
    {
      "person": {
        "name": "Coty",
        "address": {
          "street": {
            "name": "Monroe",
            "number": 323
          },
          "area": {
            "zone": "BA",
            "name": "Belgrano"
          }
        }
      }
    }
  ]
}
output application/json
---
myData.people.person.address.street
