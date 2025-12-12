%dw 2.0
output application/json

// Extract the "after" state from a Debezium event
var record = payload.after

---
{
  orderId: record.orderId,
  customerId: record.customerId,
  total: record.total,
  status: record.status,
  eventTimestamp: now() as String {format: "yyyy-MM-dd'T'HH:mm:ss'Z'"},
  sourceSystem: payload.source.connector
}
