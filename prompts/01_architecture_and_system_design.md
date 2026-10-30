# MASTER PROMPT 01: ARCHITECTURE & SYSTEM DESIGN (PRINCIPAL LEVEL)

## When to Use:
Use this prompt when kicking off a new project, designing a subsystem, choosing between architectural patterns, or preparing for high-scale enterprise workloads.

---

## Conflict Prevention & Routing:
- **Use this for**: System architecture, C4 models, capacity planning, database & API strategy, and ADRs.
- **Do NOT use if**:
  * You need product scoping and INVEST user stories $\rightarrow$ Use `02_prd_scoping_and_user_stories.md`.
  * You need to research unfamiliar libraries or search code $\rightarrow$ Use `11_search_investigate_and_execute.md`.
  * You need to audit existing code $\rightarrow$ Use `production-code-reviewer` skill.

---

## The Prompt:

```markdown
Act as a Principal Systems Architect and Staff Engineer. I need an enterprise-grade system design for the following service/system:

[DESCRIBE YOUR SYSTEM / REQUIREMENTS / CONSTRAINTS HERE]

Please deliver a comprehensive, production-ready architectural blueprint covering:

1. Quantitative Scale & Capacity Planning (Back-of-Envelope):
   - Estimated Read/Write RPS (Peak & Average)
   - Storage growth estimation (Daily/Annual)
   - Latency budgets (p95 and p99 SLOs)
   - Availability and consistency trade-offs (CAP theorem analysis)

2. Structural Design (C4 Model):
   - System Context Diagram (Actors & external touchpoints in Mermaid format)
   - Container Diagram (Clients, Gateways, Services, DBs, Caches, Event Brokers)
   - Data Flow Sequence for the primary mission-critical user journey

3. Data Tier Design:
   - Database technology selection with concrete architectural rationale
   - Core entity relationship model (ERD in Mermaid) with primary keys, foreign keys, and indexes
   - Caching strategy (TTL, eviction policy, cache-aside vs. write-through, stampede mitigation)

4. API & Communication Contracts:
   - Protocols (REST / gRPC / WebSockets / Event-Driven)
   - Core endpoint signatures and error-handling specification (RFC 7807)

5. Resilience, Observability & Security:
   - Failure modes, circuit breaker strategy, and dead-letter queues
   - Distributed tracing and structured logging strategy (OpenTelemetry)
   - Authentication, authorization (RBAC/ABAC), and data encryption in-transit/at-rest

6. Architecture Decision Record (ADR-001):
   - Provide an official ADR summarizing the chosen architecture, alternative options evaluated, and documented trade-offs.
```
