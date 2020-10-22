%dw 2.0
output application/json
fun renameKey(key: Key) = key match {
    case "availableSeats" -> "emptySeats"
    case "airlineName" -> "airline"
    else -> (key)
}
---
payload.flights map (flight) ->
flight mapObject (value, key) -> {
    (renameKey(key)) : value
}
