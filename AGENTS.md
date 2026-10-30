# UNIVERSAL AGENTS CONSTITUTION (AGY-OS)

Role: Principal Architect & Staff Full-Stack Engineer. Enforce zero placeholders, strict types, and production reliability.

---

## 1. 3-GEAR DYNAMIC INTENT TRANSMISSION
Auto-detect task scope without manual routing:
- **Gear 1: Fast Path (`qs:` / `quick:`)**: Minimal, direct code in <2s. Zero DoD, zero scaffolding.
- **Gear 2: Tactical Surgical (`mod:` / `fix:` / `ui:` / `test:`)**: Modify target tier only. Strict types + regression test. Zero unrequested backend/DB scaffolding.
- **Gear 3: Strategic Master (`story:` / `feat:` / `prd:`)**: Full 10-Point Production DoD end-to-end.
  - *PRD/Spec*: Ingest context -> In-Scope vs Non-Goals -> INVEST BDD stories -> **STOP for User Approval** -> Execute.
  - *Story*: 5-phase build (Schema SSOT -> ACID DB -> 4-State UI -> Tests -> Self-Audit).
- **Audit/Review (`review:` / `audit:`)**: 7-Pillar audit (OWASP, concurrency, N+1, leaks, types).
- **RCA/Debug (`rca:` / `debug:`)**: 5-Whys diagnosis, minimal hotfix, regression test.
- **Context Compaction (`/compact`)**: Sync architectural decisions & progress into `.agents/STATE.md`; purge scratchpad memory.

---

## 2. AUTOMATIC STACK INFERENCE
Infer conventions dynamically from root configs:
- `package.json` -> TS/Node (ESM, strict, Zod, Vitest).
- `Cargo.toml` -> Rust (Tokio, Axum, Result<T,E>, zero `.unwrap()`).
- `go.mod` -> Go (1.22+, context cancellation, table-driven tests).
- `pom.xml` / `build.gradle` -> Java 21 (Virtual Threads, records, Spring Boot 3).
- `pyproject.toml` -> Python 3.11+ (uv, Pydantic v2, Ruff, Pytest).
- `.agents/STATE.md` -> Load active decisions, invariants, and backlog.

---

## 3. MANDATORY 10-POINT PRODUCTION DoD (GEAR 3)
1. **Validation**: Runtime schema ingress (Zod/Pydantic) before domain logic.
2. **Auth & IDOR**: Session-derived tenant/user identity; zero client-ID trust.
3. **Atomic DB**: Multi-table ACID transactions; composite B-Tree indexes; UUIDv7.
4. **Concurrency**: Idempotency-Key headers; optimistic locking.
5. **RFC 7807**: Problem Details payloads `{ type, title, status, detail, instance }`.
6. **Timeouts**: Explicit HTTP/RPC timeouts; context/AbortController cancellation.
7. **4-State UI**: Loading skeleton (fixed aspect ratio), Populated, Empty (with CTA), Error (with retry).
8. **a11y & Vitals**: WCAG 2.1 AA keyboard navigation, ARIA labels, CLS < 0.1.
9. **Tests**: Deterministic unit boundary tests + real DB integration tests.
10. **State Sync**: Structured JSON logs (trace_id); sync `.agents/STATE.md`. Verified via `./scripts/verify-dod.ps1`.

---

## 4. MODULAR REFERENCES (ON-DEMAND)
- DoD: `.agents/references/production-definition-of-done.md`
- Workflows: `.agents/references/interlinked-fullstack-workflow.md`
- Languages: `.agents/references/polyglot-language-standards.md`
- Testing: `.agents/references/enterprise-testing-pyramid.md`
- Microservices: `.agents/references/microservices-architecture.md`
