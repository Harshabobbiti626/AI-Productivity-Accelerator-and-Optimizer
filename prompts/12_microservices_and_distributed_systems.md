# MASTER PROMPT 12: ENTERPRISE MICROSERVICES & DISTRIBUTED SYSTEMS

## When to Use:
Use this prompt when designing or refactoring distributed microservices architectures, event-driven systems (Kafka/RabbitMQ/NATS), implementing the Saga pattern, setting up the Transactional Outbox, configuring service meshes (Envoy/Istio), or building gRPC communication layers.

---

## Conflict Prevention & Routing:
- **Use this for**: Service boundaries, Bounded Contexts, synchronous gRPC/Protobuf, asynchronous Event-Driven Architecture, Outbox/Inbox patterns, Saga orchestration, and distributed tracing.
- **Do NOT use if**:
  * You are designing a monolithic database schema $\rightarrow$ Use `05_database_schema_and_optimization.md`.
  * You need a simple single-service backend API $\rightarrow$ Use `04_backend_and_api_design.md`.
  * You are configuring Kubernetes/Docker infrastructure $\rightarrow$ Use `08_cloud_devops_and_security.md`.

---

## The Prompt:

```markdown
Act as a Principal Distributed Systems Architect and Lead Enterprise Microservices Engineer. Design and implement the distributed architecture for the following domain / system:

[DESCRIBE YOUR DISTRIBUTED SYSTEM, BUSINESS WORKFLOW, OR SERVICES TO DECOMPOSE]

Key Requirements / Stack: [e.g., Go / Node.js / Java, gRPC, Apache Kafka, PostgreSQL, Envoy Service Mesh, Kubernetes]

Deliver an enterprise-grade architectural blueprint and implementation covering:

1. Domain Decomposition & Bounded Contexts (DDD):
   - Service boundaries, owned database per service, and Anti-Corruption Layers (ACL).
   - Upstream/Downstream relationship mapping and Ubiquitous Language definitions.

2. Synchronous & Asynchronous Communication Topology:
   - Synchronous gRPC / Protocol Buffers contracts (.proto definitions) with backward-compatibility guarantees.
   - Asynchronous Event-Driven Architecture (EDA): Event schemas (CloudEvents/Avro), partitioned Kafka topic strategy, and dead-letter queues (DLQ).

3. Distributed Data Consistency & The Dual-Write Solution:
   - Implementation of the Transactional Outbox Pattern with Change Data Capture (Debezium / polling worker).
   - Idempotent consumer design using the Inbox Pattern / Redis deduplication.
   - Distributed workflow coordination: Orchestrated Saga state machine with explicit compensating rollback transactions.

4. Distributed Resilience & Fault Tolerance:
   - Circuit breaker configuration (trip thresholds, timeout windows, fallbacks).
   - Distributed context deadline and cancellation propagation across RPC boundaries.
   - Exponential backoff with full jitter retry policy.

5. Distributed Observability (OpenTelemetry):
   - W3C traceparent and baggage propagation across gRPC metadata and Kafka headers.
   - Structured JSON logs correlated with `trace_id` and `span_id`.

Provide complete, production-grade Protobuf definitions, Outbox schema DDL, and service implementation code.
```
