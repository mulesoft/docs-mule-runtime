%dw 2.0
output application/json
var userName = "DataWeave" as String {myCustomMetadata: "customMetadataValue"}
---

{
  "valueOfVariableMetaData" :  userName.^myCustomMetadata,
  "valueOfVariable" :  userName,
}
