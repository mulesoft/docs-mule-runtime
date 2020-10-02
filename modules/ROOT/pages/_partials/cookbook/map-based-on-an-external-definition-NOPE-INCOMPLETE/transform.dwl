%dw 2.0
output application/json
var applyMapping = (input, mappingsDef) -> (
   mappingsDef map (def) -> {
    (def.target) : input[def.source] default def."default"
  }
)
---
payload.sfdc_users.*sfdc_user map (user) -> (
        applyMapping(user, vars.mappings)
)
