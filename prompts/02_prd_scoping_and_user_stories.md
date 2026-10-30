# MASTER PROMPT 02: PRD SCOPING & INVEST USER STORIES

## When to Use:
Use this prompt when you have a messy idea, feature request, stakeholder brief, or raw PRD and need to strictly define scope boundaries and generate ready-to-code User Stories.

---

## Conflict Prevention & Routing:
- **Use this for**: Deconstructing PRDs, defining Strict In-Scope vs. Out-of-Scope boundaries, and creating INVEST user stories with Gherkin BDD scenarios.
- **Do NOT use if**:
  * You need technical system design, C4 models, or DB schemas $\rightarrow$ Use `01_architecture_and_system_design.md`.
  * You need to start writing functional frontend/backend code $\rightarrow$ Use `03_frontend_engineering.md` or `04_backend_and_api_design.md`.

---

## The Prompt:

```markdown
Act as a Staff Technical Product Manager and Lead Systems Architect. Deconstruct the following feature request / PRD / design specification:

[PASTE PRD, DESIGN DOCUMENT, OR FEATURE DESCRIPTION HERE]

Execute a deep requirements breakdown adhering to the following structure:

1. Executive Summary & Core Objective:
   - What problem does this solve, for whom, and what is the primary business metric?

2. Scope Boundary Matrix:
   - **Strictly In-Scope (P0/P1 - MVP)**: Explicit bullet points of what WILL be built.
   - **Out-of-Scope (Non-Goals)**: Explicit list of what will NOT be built in this iteration to prevent scope creep.
   - **Deferred / Phase 2**: Features earmarked for subsequent milestones.

3. Technical Dependency & Edge Case Analysis:
   - Data entities touched, schema changes required, external APIs needed.
   - Unhappy paths, race conditions, rate limits, and network failure modes.

4. INVEST-Compliant User Story Backlog:
   Break down the in-scope work into atomic user stories matching `templates/USER_STORY_TEMPLATE.md`. For EACH story, provide:
   - Metadata: ID, Title, Epic, Priority (P0-P3), Effort SP, Feature Flag key
   - Definition of Ready (DoR) Pre-flight checks
   - User Narrative: As a [persona], I want to [action], so that [outcome]
   - Scope Guardrails: Strictly In-Scope vs. Explicitly Out-of-Scope (Non-Goals)
   - 5-Scenario BDD Acceptance Matrix (Gherkin format):
     * Scenario 1: Primary Happy Path (with transactional state mutation & trace)
     * Scenario 2: Defensive Validation & Boundary Rejection (RFC 7807 problem details)
     * Scenario 3: Unauthorized Access & Cross-Tenant Isolation (BOLA/IDOR)
     * Scenario 4: Concurrency, Idempotency & Race Condition Defense (Idempotency-Key)
     * Scenario 5: Downstream Dependency Failure & Graceful Degradation (Timeout/Circuit Breaker)
   - Technical Implementation Checklist (10-Point DoD across Backend, DB, 4-State UI, Tests)
   - Operational Readiness: Feature flag key, rollback down-migration, failure risk mitigation

Format the output so it is directly exportable to Linear, Jira, or GitHub Issues.
```
