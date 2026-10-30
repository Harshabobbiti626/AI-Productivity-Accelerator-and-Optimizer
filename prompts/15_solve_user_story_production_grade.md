# MASTER PROMPT 15: SOLVE USER STORY (PRODUCTION-GRADE IMPLEMENTATION)

## When to Use:
Use this prompt when you have an approved User Story (or requirement) and want Antigravity to build, test, and verify the feature end-to-end across all relevant tiers to market-leading standards with zero missing edge cases.

---

## Conflict Prevention & Routing:
- **Use this for**: End-to-end execution of a specific user story with complete production-grade code, tests, and DoD checklist.
- **Do NOT use if**:
  * You need to break down a high-level PRD into multiple stories $\rightarrow$ Use `02_prd_scoping_and_user_stories.md`.
  * You need high-level distributed systems architecture $\rightarrow$ Use `01_architecture_and_system_design.md` or `12_microservices_and_distributed_systems.md`.
  * You only need to audit code already written $\rightarrow$ Use `09_debugging_and_root_cause_analysis.md` or `production-code-reviewer` skill.

---

## The Prompt:

```markdown
Act as a Lead Staff Full-Stack Engineer and Systems Architect. Implement the following User Story to complete enterprise production-grade standards:

[PASTE YOUR USER STORY HERE, E.G.:
US-04: User Passwordless Authentication & Session Management
As an unauthenticated customer, I want to request a one-time magic link via email so that I can securely log in without passwords.
Acceptance Criteria:
- Given valid email, send magic link with 15-minute expiration.
- Given expired or tampered token, reject with descriptive RFC 7807 error.
- Given authenticated user, issue secure HttpOnly SameSite cookie.]

Target Stack: [e.g., Next.js 15, TypeScript, PostgreSQL (Prisma/Drizzle), Redis, Tailwind CSS, Vitest]

Deliver complete, production-ready code with ZERO placeholders or missing edge cases, adhering strictly to the 10-Point Production Definition of Done (DoD):

1. Single Source of Truth (SSOT) Schema & Ingress Validation:
   - Provide Zod / Pydantic schema with strict boundary validation (lengths, regex, non-empty).

2. Database Migration & Atomic Transactions:
   - Provide SQL DDL / ORM migration with appropriate primary keys (UUIDv7), indexes, and constraints.
   - Include reversible rollback down-migration script.
   - Wrap multi-table modifications inside an explicit ACID transaction.

3. Backend Domain Service & API Endpoint:
   - Clean/Hexagonal service layer enforcing business rules.
   - RFC 7807 Problem Details compliant error responses.
   - Idempotency key handling and rate limiting.

4. Frontend View Component (4-State UI):
   - Provide complete component implementing all 4 states: Loading Skeleton, Empty State, Error State with Retry, and Success/Populated State.
   - Full keyboard navigation and WCAG 2.1 AA/AAA accessibility labels.

5. Comprehensive Automated Test Suite:
   - Deterministic unit tests covering happy paths, edge cases, and boundary violations.
   - Integration test running real queries against database.

6. 10-Point DoD Verification Checklist:
   - Present the completed 10-point checklist proving compliance across security, concurrency, resilience, and accessibility.
```
