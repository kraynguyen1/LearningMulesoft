%dw 2.0
output application/java
---
data:{
	hub: "MUA",
	code: payload.toAirportCode,
	airline: payload.airline
}