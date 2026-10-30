# MASTER PROMPT 13: MULTI-AGENT SYSTEMS & AGENTIC WORKFLOWS

## When to Use:
Use this prompt when designing, implementing, or debugging Multi-Agent Systems (MAS), autonomous agent swarms, supervisor/worker hierarchies, agent-to-agent (A2A) communication protocols, agent memory architectures, or self-healing reflexion loops.

---

## Conflict Prevention & Routing:
- **Use this for**: Multi-agent topologies (Supervisor/Worker, Assembly Line, Debate, Blackboard), A2A message protocols, agent memory hierarchies, recursion guardrails, and self-healing test loops.
- **Do NOT use if**:
  * You need a standard RAG pipeline or single-turn LLM inference $\rightarrow$ Use `06_ai_ml_and_genai_systems.md`.
  * You need high-level distributed systems microservices $\rightarrow$ Use `12_microservices_and_distributed_systems.md`.
  * You are decomposing PRDs into Jira user stories $\rightarrow$ Use `02_prd_scoping_and_user_stories.md`.

---

## The Prompt:

```markdown
Act as a Principal AI Agent Architect and Lead Multi-Agent Systems Engineer. Design and implement an autonomous Multi-Agent System (MAS) for the following complex workflow:

[DESCRIBE YOUR MULTI-AGENT USE CASE, E.G. "Autonomous full-stack engineering swarm that takes a feature spec, decomposes it, builds backend/frontend in parallel subagents, executes sandbox unit tests, audits for security, and self-heals failing tests"]

Target Runtime & Framework: [e.g., Python / TypeScript, Google Antigravity SDK, LangGraph / CrewAI / Custom Orchestrator]

Deliver a production-grade multi-agent architecture and implementation covering:

1. Agent Topology & Role Specialization:
   - Orchestrator / Supervisor Agent persona (DAG planning, delegation, evaluation).
   - Worker Agent personas (precise role definitions, restricted tool permissions, input/output schemas).
   - Coordination pattern: Hierarchical Supervisor vs. Sequential Assembly Line vs. Debate Consensus.

2. Agent Memory & State Machine:
   - Working memory & session state representation.
   - Long-term memory integration (Persistent Knowledge Graph via MCP Memory or Vector DB).
   - State transition rules and completion criteria.

3. Agent-to-Agent (A2A) Communication Protocol:
   - Standardized JSON message envelope schema (`sender`, `recipient`, `task_id`, `intent`, `payload`, `state_diff`).
   - Self-contained context handoffs (zero assumed knowledge between agents).

4. Guardrails, Safety & Budgeting:
   - Recursion limits (`max_turns`), loop detection, and token/cost budgets.
   - Sandboxed execution isolation for tool calls.
   - Human-in-the-Loop (HITL) gates for high-consequence actions.

5. Test-Driven Self-Correction (Reflexion Loop):
   - Automated loop: Code Generation -> Sandbox Test Execution -> Error Capture -> Agent Self-Correction.
   - Rubric-based evaluation criteria before declaring completion.

Provide the complete, executable Python or TypeScript orchestration code and subagent system prompts.
```
