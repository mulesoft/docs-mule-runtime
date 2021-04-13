%dw 2.0
output application/json
---
if (payload.location != null) {
	"userLocation" : payload.location
} else {
	"userLocation" : "United States"
}
