# MASTER PROMPT 10: HUMAN-GRADE DOCUMENTATION & LIVING ADRs

## When to Use:
Use this prompt when documenting a project, writing an onboarding README, creating OpenAPI documentation, writing Architecture Decision Records (ADRs), or documenting complex system designs for other engineers.

---

## Conflict Prevention & Routing:
- **Use this for**: Architecture Decision Records (ADRs), onboarding READMEs, OpenAPI specs, system design documentation, and runbooks.
- **Do NOT use if**:
  * You need product specifications or user stories $\rightarrow$ Use `02_prd_scoping_and_user_stories.md`.
  * You need code implementation $\rightarrow$ Use domain-specific engineering prompts.

---

## The Prompt:

```markdown
Act as a Lead Technical Writer and Principal Systems Architect. Produce comprehensive, human-grade documentation for the following project / service / feature:

[DESCRIBE REPOSITORY, ARCHITECTURE, OR FEATURE TO DOCUMENT]

Format the documentation so that any developer can onboard, understand, and safely modify this system in under 15 minutes:

1. High-Level Vision & "Why It Exists":
   - Core value proposition and domain context written in plain, compelling language.
   - High-level architecture diagram (Mermaid graph/flowchart).

2. Quick Start in 3 Commands:
   - Prerequisites (Node version, Docker, DB).
   - Minimal copy-paste terminal commands to install, seed database, and run locally.

3. Configuration & Environment Variables Matrix:
   - Table detailing: Variable Name | Type | Required? | Default | Purpose / Example.

4. Core Architecture & Mental Model:
   - Folder structure walkthrough with one-line descriptions for key directories.
   - Key design invariants (e.g., "All mutations go through Command Handlers", "Never query DB from controllers").

5. API / Interface Documentation:
   - Core endpoints/functions with request/response examples and status codes.

6. Operations & Troubleshooting Playbook:
   - Top 5 common errors developers hit and exact resolution commands.
   - Useful dev commands (database reset, test runner, linting).

7. Architecture Decision Record (ADR):
   - Document the most significant technical decision made in this codebase using the standard ADR format (Context, Drivers, Considered Options, Decision, Consequences).
```
