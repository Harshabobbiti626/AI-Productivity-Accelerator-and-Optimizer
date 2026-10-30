# MASTER PROMPT 04: BACKEND & API DESIGN

## When to Use:
Use this prompt when building backend services, designing REST/GraphQL/gRPC APIs, implementing business logic, or securing network endpoints.

---

## Conflict Prevention & Routing:
- **Use this for**: Backend routing, services, Clean/Hexagonal domain logic, idempotency, rate limiting, and API error contracts.
- **Do NOT use if**:
  * You need frontend components $\rightarrow$ Use `03_frontend_engineering.md`.
  * You need complex database schema DDL or query indexing $\rightarrow$ Use `05_database_schema_and_optimization.md`.
  * You need batch/streaming data pipelines (dbt, Spark, Airflow) $\rightarrow$ Use `07_data_engineering_and_pipelines.md`.

---

## The Prompt:

```markdown
Act as a Principal Backend Engineer and Distributed Systems Architect. Design and implement the following backend service / API endpoint:

[DESCRIBE FEATURE / BUSINESS LOGIC / ENDPOINT REQUIREMENTS]

Runtime & Language: [e.g., Node.js/TypeScript, Go, Python/FastAPI, Java/Spring Boot, Rust]

Implement the solution adhering strictly to enterprise backend standards:

1. Architecture & Layering (Hexagonal / Clean Architecture):
   - Controller / Transport Layer (HTTP request parsing, status codes)
   - Domain / Service Layer (pure business logic, validation, domain invariants)
   - Repository / Data Layer (DB queries, transactions, abstractions)

2. Defensive Ingress Validation:
   - Use strict runtime validation (Zod / Pydantic / class-validator).
   - Strip unknown properties, sanitize inputs, enforce boundary constraints (lengths, regex, ranges).

3. Production API Standards:
   - Idempotency key handling for all non-safe mutations (POST, PUT, PATCH).
   - RFC 7807 Problem Details compliant error responses.
   - Cursor-based pagination for collection endpoints (`limit`, `cursor`, `next_cursor`, `has_more`).
   - Rate limiting headers and standard HTTP status codes.

4. Concurrency & Transaction Safety:
   - Atomic database transactions with appropriate isolation levels.
   - Pessimistic (`SELECT ... FOR UPDATE`) or optimistic concurrency control (version checks) to prevent race conditions.

5. Observability & Logging:
   - Structured JSON logging with `trace_id`, `span_id`, `user_id`, and execution duration.
   - Prometheus metrics / OpenTelemetry trace spans.

Provide complete, tested, production-grade source code including unit tests and mock integration tests.
```
