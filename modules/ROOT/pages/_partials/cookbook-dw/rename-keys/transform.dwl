%dw 2.0
output application/json
---
payload.flights map (flight) -> {
    (flight mapObject (value, key) -> {
        (emptySeats: value) if(key as String == 'availableSeats'),
        (airline: value) if(key as String == 'airlineName'),
        ((key):value) if(key as String !='availableSeats' and key as String != 'airlineName')
    })
}
