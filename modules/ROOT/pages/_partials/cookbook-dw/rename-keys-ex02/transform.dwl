%dw 2.0
output application/json
---
payload.flights map (flight) ->
flight mapObject (value, key) -> {
 ((key) match
		{
			case literalMatch: "availableSeats" -> "emptySeats"
			case literalMatch: "airlineName" -> "airline"
			else -> (key)
		}
  ) : value
}
