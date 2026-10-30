# ZERO-CONFLICT MASTER PROMPT LIBRARY

This directory contains **17 battle-tested, zero-conflict prompts** covering every discipline in modern software engineering.

---

## ⚡ DYNAMIC INTENT: YOU DON'T EVEN NEED TO COPY PROMPTS!

Your AI assistant (Antigravity, Claude Code, Cursor, Windsurf, Copilot) is now equipped with an **Autonomous Intent Classifier**. You can speak naturally in chat, and it will automatically detect the workflow and apply the corresponding standards:

| What You Say in Chat | What the AI Automatically Executes | Reference Prompt |
| :--- | :--- | :--- |
| *"Here's my design doc for real-time notifications. Break it down."* | **Requirements Scoping**: Separates In-Scope (P0) from Non-Goals; generates INVEST BDD User Stories. | `02_prd_scoping_and_user_stories.md` |
| *"Implement US-02 in Next.js and Postgres."* | **Production Story Solver**: Enforces the 10-Point Production DoD (Zod validation, ACID transaction, 4-state UI, a11y, tests). | `15_solve_user_story_production_grade.md` |
| *"Build this entire multi-tier feature autonomously with self-audit."* | **Master Full-Stack Execution**: Executes full-stack lifecycle and verifies against 360° Master Checklist. | `16_autonomous_fullstack_master_execution.md` |
| *"Review and remediate defects using the actor-critic loop."* | **Coder-Auditor Self-Healing**: Automated implementation, adversarial audit, defect ticket, and auto-patch loop. | `17_coder_auditor_self_healing_review.md` |
| *"Design a high-scale payment processing architecture."* | **Principal Architecture**: C4 container diagrams, capacity calculations, DB schema (UUIDv7), RFC 7807 APIs, ADR. | `01_architecture_and_system_design.md` |
| *"Review this PR for security, race conditions, and performance."* | **Production Code Review**: 7-pillar audit (OWASP Top 10, concurrency, N+1 queries, memory leaks, types). | `09_debugging_and_root_cause_analysis.md` |
| *"Why is this query slow / why did the server crash?"* | **Root Cause Analysis (RCA)**: 5-Whys diagnosis, minimal hotfix, regression test, permanent remediation. | `09_debugging_and_root_cause_analysis.md` |
| *"Search the repo for how tokens are generated and implement refresh."* | **Deep Search & Execute**: Targeted reconnaissance $\rightarrow$ trade-off matrix $\rightarrow$ immediate production code. | `11_search_investigate_and_execute.md` |
| *"Decompose this system into microservices with Kafka."* | **Enterprise Microservices**: Bounded Contexts, gRPC/Protobuf, Transactional Outbox + Debezium, Orchestrated Sagas. | `12_microservices_and_distributed_systems.md` |
| *"Build an autonomous multi-agent swarm to test and audit code."* | **Multi-Agent Systems**: Supervisor/Worker DAG, A2A message envelopes, reflexion self-correction loops. | `13_multiagent_systems_and_agentic_workflows.md` |
| *"Write a Rust/Go service with Testcontainers and k6 load tests."* | **Polyglot & Testing Pyramid**: Idiomatic language patterns, real container integration tests, k6 load scripts. | `14_polyglot_development_and_testing.md` |

---

## 📚 MASTER PROMPT CATALOG

1. **[`01_architecture_and_system_design.md`](./01_architecture_and_system_design.md)**: Principal-level system design, C4 models, capacity planning.
2. **[`02_prd_scoping_and_user_stories.md`](./02_prd_scoping_and_user_stories.md)**: PRD deconstruction, In-Scope vs. Non-Goals, INVEST stories.
3. **[`03_frontend_engineering.md`](./03_frontend_engineering.md)**: Modern React/Next/Vue/Flutter, WCAG AA/AAA, Core Web Vitals.
4. **[`04_backend_and_api_design.md`](./04_backend_and_api_design.md)**: Hexagonal architecture, RFC 7807 problem details, idempotency.
5. **[`05_database_schema_and_optimization.md`](./05_database_schema_and_optimization.md)**: 3NF, UUIDv7, composite B-tree & GIN indexes, zero-downtime DDL.
6. **[`06_ai_ml_and_genai_systems.md`](./06_ai_ml_and_genai_systems.md)**: Structured Pydantic outputs, hybrid RAG, recursion guardrails.
7. **[`07_data_engineering_and_pipelines.md`](./07_data_engineering_and_pipelines.md)**: Modern ELT, dbt layered models, idempotent Airflow DAGs.
8. **[`08_cloud_devops_and_security.md`](./08_cloud_devops_and_security.md)**: Multi-stage Docker, K8s probes/limits, Terraform least-privilege IAM.
9. **[`09_debugging_and_root_cause_analysis.md`](./09_debugging_and_root_cause_analysis.md)**: 5-Whys diagnostic traces, minimal hotfix, regression tests.
10. **[`10_human_centric_documentation_and_adr.md`](./10_human_centric_documentation_and_adr.md)**: Living ADRs, 3-command onboarding READMEs, OpenAPI specs.
11. **[`11_search_investigate_and_execute.md`](./11_search_investigate_and_execute.md)**: Autonomous search $\rightarrow$ trade-off matrix $\rightarrow$ immediate execution.
12. **[`12_microservices_and_distributed_systems.md`](./12_microservices_and_distributed_systems.md)**: DDD Bounded Contexts, gRPC, Transactional Outbox, Sagas.
13. **[`13_multiagent_systems_and_agentic_workflows.md`](./13_multiagent_systems_and_agentic_workflows.md)**: Multi-agent swarms, supervisor/worker, self-healing reflexion.
14. **[`14_polyglot_development_and_testing.md`](./14_polyglot_development_and_testing.md)**: Polyglot language idioms (Rust/Go/Java/Python/TS), Testcontainers, k6.
15. **[`15_solve_user_story_production_grade.md`](./15_solve_user_story_production_grade.md)**: End-to-end user story solver with the 10-point Production DoD.
16. **[`16_autonomous_fullstack_master_execution.md`](./16_autonomous_fullstack_master_execution.md)**: Full-stack master execution with automated self-audit against the Master Engineering Checklist.
17. **[`17_coder_auditor_self_healing_review.md`](./17_coder_auditor_self_healing_review.md)**: Dual-agent Actor-Critic implementation with automated review, reversion, and remediation loop.
