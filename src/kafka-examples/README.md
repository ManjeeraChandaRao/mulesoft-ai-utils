# Kafka + MuleSoft Examples
# CDC → Kafka → MuleSoft Example

This example demonstrates a real-world event-driven integration pattern using:

- Debezium (Change Data Capture)
- Kafka (event backbone)
- MuleSoft (orchestration + transformation)
- Mediumm Articlet from details - https://medium.com/@manjeerachandarao/real-time-integrations-with-debezium-kafka-mulesoft-the-architecture-every-enterprise-needs-e036fc10bab4?postPublishedType=initial

**Flow:**

1. Database change is captured by Debezium  
2. Debezium publishes event to Kafka topic  
3. MuleSoft consumes the event and extracts the `after` state  
4. MuleSoft enriches and forwards data to downstream systems  

This pattern enables real-time data synchronization across enterprise platforms.
