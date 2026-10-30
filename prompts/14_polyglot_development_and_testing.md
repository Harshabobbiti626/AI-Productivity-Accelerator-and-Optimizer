# MASTER PROMPT 14: POLYGLOT DEVELOPMENT & ENTERPRISE TESTING

## When to Use:
Use this prompt when developing or testing features in any language (TypeScript, Python, Java/Kotlin, Go, Rust, C#), setting up multi-tier test suites (Unit, Testcontainers, E2E, Load), writing property-based fuzz tests, or configuring CI/CD test automation.

---

## Conflict Prevention & Routing:
- **Use this for**: Polyglot language-specific idiomatic code, comprehensive unit tests, Testcontainers integration suites, Playwright E2E with a11y, and k6 performance testing.
- **Do NOT use if**:
  * You need high-level distributed microservices architecture $\rightarrow$ Use `12_microservices_and_distributed_systems.md`.
  * You need multi-agent swarms $\rightarrow$ Use `13_multiagent_systems_and_agentic_workflows.md`.
  * You are diagnosing a live production incident (RCA) $\rightarrow$ Use `09_debugging_and_root_cause_analysis.md`.

---

## The Prompt:

```markdown
Act as a Principal Polyglot Software Engineer and Lead Quality Architect. Implement the following feature and its complete enterprise test suite:

[DESCRIBE THE FEATURE, BUSINESS LOGIC, AND REQUIREMENTS]

Target Language & Stack: [e.g., Rust (Tokio/Axum), Go 1.22 (Gin/Gorm), Java 21 (Spring Boot 3/Postgres), Python (FastAPI/SQLAlchemy), TypeScript (Node/Vitest), or C# (.NET 8/EF Core)]

Deliver production-grade, idiomatic code and a complete multi-tier test suite adhering to market standards:

1. Idiomatic Production Implementation:
   - Adhere strictly to the target language's best practices (e.g. Go table-driven tests & context cancellation, Rust borrow safety & Result<T, E>, Java 21 Virtual Threads & records, Python async event loop cleanliness).
   - Zero placeholder comments (`// TODO`), full error handling, boundary validation, and strict typing.

2. Deterministic Unit Tests:
   - Comprehensive edge-case coverage (boundary limits, empty inputs, negative values, null handling).
   - Structured with Arrange-Act-Assert (AAA) pattern.

3. Integration Tests with Real Infrastructure (Testcontainers):
   - Provide an integration test using Testcontainers to spin up ephemeral PostgreSQL / Redis / Kafka instances.
   - Assert real schema migrations, unique constraints, and transaction boundaries.

4. Property-Based / Fuzzing Test (where applicable):
   - Provide a property-based test (Hypothesis / fast-check / proptest / jqwik) validating mathematical or business invariants under randomized input streams.

5. Performance / Load Test Script (k6):
   - Provide a k6 load script asserting p95 (< 150ms) and p99 (< 300ms) latency SLOs and error rate (< 1%) under concurrent traffic.

Provide complete, copy-pasteable, verified code for both implementation and test suites.
```
