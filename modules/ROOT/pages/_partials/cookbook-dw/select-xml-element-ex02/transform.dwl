%dw 2.0
output application/xml
---
{
	version : payload.language[1]
}
