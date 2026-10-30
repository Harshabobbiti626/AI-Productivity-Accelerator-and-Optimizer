---
project_name: "[Project Name]"
current_phase: "Discovery" # Discovery | MVP Build | Staging Hardening | Production Scale
last_synchronized: "YYYY-MM-DD HH:MM UTC"
state_version: "2.0.0"
lead_architect: "[Architect / Engineer]"
---

# PROJECT STATE LEDGER (STATE.md)

> This document acts as the persistent situational awareness anchor for AI assistants and developers across all IDEs and CLI sessions.

---

## 1. System Identity & Mission
- **Project Name**: [Project Name]
- **Core Value Proposition**: [One-sentence mission describing the user problem solved]
- **Target Audience / Tenant Scope**: [B2B Multi-tenant | B2C Consumer | Internal Platform]

---

## 2. Technology & Infrastructure Matrix

| Tier | Primary Technology | Version / Tooling | Invariant Rule |
| :--- | :--- | :--- | :--- |
| **Runtime & Language** | [TypeScript / Python / Go / Rust / Java] | [e.g. Node 22 LTS, TS 5.5] | Strict type checking; zero loose casting. |
| **Frontend Framework** | [Next.js / React / Vue / Flutter] | [e.g. Next.js 15 (App Router)] | 4-State UI pattern; WCAG 2.1 AA accessibility. |
| **Backend & APIs** | [Express / FastAPI / Axum / Spring Boot] | [REST / gRPC / GraphQL] | RFC 7807 error format; Idempotency-Key support. |
| **Database & Cache** | [PostgreSQL / MySQL / Redis] | [e.g. Postgres 16 (Neon), Redis 7] | UUIDv7 keys; composite B-Tree indexes; ACID. |
| **Cloud & DevOps** | [AWS / GCP / Docker / Terraform] | [e.g. Cloud Run, ECS, GitHub Actions] | Non-root containers; 12-Factor statelessness. |

---

## 3. Environments & Telemetry Endpoints

- **Local Development**: `http://localhost:3000`
- **Staging Preview**: `https://staging.app.example.com` (Health: `/api/healthz`)
- **Production URL**: `https://app.example.com` (Health: `/api/healthz`, Ready: `/api/readyz`)
- **APM & Logs Dashboard**: [Datadog / Grafana Cloud / PostHog URL](#)

---

## 4. Current Milestone & Story Backlog

### Milestone: [Current Target Feature Goal / Sprint]
- **Completed (Done - Verified against 10-Point DoD)**:
  - [x] US-01: [Feature Title with link to story file]
  - [x] US-02: [Feature Title with link to story file]
- **In-Progress**:
  - [ ] US-03: [Feature Title with link to story file]
- **Backlog (Up Next)**:
  - [ ] US-04: [Feature Title with link to story file]
  - [ ] US-05: [Feature Title with link to story file]

---

## 5. Architectural Decisions & Spikes Ledger

### Active Architecture Decisions (ADRs):
- **ADR-001**: Selected PostgreSQL with JSONB over MongoDB for transactional integrity.
- **ADR-002**: Standardized on RFC 7807 problem details across all microservices.

### Active Spikes / Research POCs:
- [ ] Spike: Evaluate Redis cluster vs. PG Advisory Locks for distributed job scheduling.

---

## 6. Known Technical Debt & Quality Invariants
- [ ] Add composite index on `orders(tenant_id, created_at)` before 10k users milestone.
- [ ] Migrate legacy Axios instances to native `fetch` with `AbortController` cancellation.
