# MASTER PROMPT 16: AUTONOMOUS 360° MASTER EXECUTION & SELF-AUDIT

## When to Use:
Use this prompt when you want the AI assistant to take any feature, task, or user story across ANY domain (Frontend, Mobile, Backend, Database, Microservices, Multi-Agent, Data Eng, Cloud, or Testing) and execute it with an uncompromising, automated self-audit against the entire **Master Enterprise Engineering Checklist**.

---

## Conflict Prevention & Routing:
- **Use this for**: Comprehensive, end-to-end feature development where you want every single engineering aspect systematically self-verified against market standards.
- **Do NOT use if**:
  * You only need a quick PRD decomposition without writing code $\rightarrow$ Use `02_prd_scoping_and_user_stories.md`.
  * You only need high-level distributed systems architecture $\rightarrow$ Use `12_microservices_and_distributed_systems.md`.
  * You are diagnosing a live crash or bug $\rightarrow$ Use `09_debugging_and_root_cause_analysis.md`.

---

## The Prompt:

```markdown
Act as a Principal Systems Architect and Staff Full-Stack Engineer. Implement the following feature / user story end-to-end:

[DESCRIBE FEATURE / USER STORY / REQUIREMENTS]

Target Stack: [e.g., Next.js 15 App Router, TypeScript, PostgreSQL (Prisma/Drizzle), Redis, Tailwind CSS, Vitest / OR specify Go / Rust / Java / Python / Flutter stack]

Execute the implementation adhering strictly to the Master Enterprise Engineering Checklist (360° Total Coverage) across every applicable discipline:

1. DOM & Rendering Hygiene:
   - Stable key attributes (UUIDs/IDs, never indices on dynamic lists).
   - List virtualization (@tanstack/react-virtual / ListView.builder) for collections > 100 items.
   - Event debouncing (300ms) on search inputs; throttling (16ms) on scroll/resize.
   - Memoization: useMemo for O(N log N) transforms; useCallback for stable callbacks passed to memoized children.
   - Memory cleanup: dispose all timers, listeners, and AbortControllers on unmount.

2. State & UX Completeness:
   - State separation: URL query params vs. Server Cache vs. Global client store vs. Local state.
   - Core Web Vitals: Fixed aspect-ratio on images/skeletons (CLS < 0.1); useTransition for INP < 200ms.
   - 4-State UI: Implement all 4 states: (1) Skeleton Loader, (2) Empty State with CTA, (3) Error State with Retry, and (4) Success State.
   - Accessibility (WCAG 2.1 AA/AAA): Semantic HTML, visible focus rings, modal focus trapping, and ARIA labels.

3. Backend & API Defense:
   - Clean Hexagonal Layering: Controller -> Service -> Repository.
   - Ingress Schema Validation: Strict Zod/Pydantic parsing rejecting invalid inputs before domain logic.
   - Idempotency & Concurrency: Redis-backed Idempotency-Key headers on mutations; optimistic or pessimistic locking.
   - Error Semantics: Standardized RFC 7807 Problem Details payloads with invalid_params arrays.
   - Timeouts & Cancellation: Explicit network timeouts; ctx.Done() / AbortController propagation.

4. Database & Storage Integrity:
   - Relational Hygiene: Strict 3NF normalization, time-ordered primary keys (UUIDv7/ULID), NOT NULL constraints, check constraints.
   - Index Coverage: Composite B-Tree indexes matching filter queries (Leftmost Prefix Rule); partial indexes on status filters.
   - Transactions & Caching: Explicit ACID transactions wrapping multi-table writes; cache-aside with randomized TTL jitter.

5. Security & AppSec (OWASP Top 10):
   - Parameterized queries (SQL injection defense).
   - Object-Level Authorization: Session-derived identity checks verifying tenant and user ownership on every read/write (BOLA/IDOR defense).
   - Sensitive fields stripped before serialization or logging.

6. Enterprise Testing Pyramid:
   - Unit Tests: Deterministic AAA unit tests covering happy paths, edge cases, negative limits, and null states.
   - Integration Tests: Real database test using Testcontainers (ephemeral PostgreSQL / Redis container).
   - Accessibility Test: Automated axe-core check asserting zero WCAG violations.

7. SELF-AUDIT VERIFICATION SUMMARY:
Before outputting code, perform an internal self-audit and output a verified checklist table proving compliance across all dimensions.

Deliver complete, production-ready code with ZERO placeholders or omitted sections.
```
