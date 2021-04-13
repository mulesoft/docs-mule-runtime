%dw 2.0
import * from dw::util::Values
output application/xml
---
(payload mask "ssn" with "****") mask "password" with "****"
