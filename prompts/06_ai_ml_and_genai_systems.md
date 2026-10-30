# MASTER PROMPT 06: AI, ML & GENERATIVE AI SYSTEMS

## When to Use:
Use this prompt when architecting LLM applications, RAG pipelines, autonomous agents, vector search systems, model evaluation harnesses, or fine-tuning workflows.

---

## Conflict Prevention & Routing:
- **Use this for**: LLM orchestration, structured output validation, RAG (chunking, hybrid search, rerank), agent guardrails, and model evaluation.
- **Do NOT use if**:
  * You need traditional batch ETL/ELT pipelines $\rightarrow$ Use `07_data_engineering_and_pipelines.md`.
  * You need standard web API endpoints without AI components $\rightarrow$ Use `04_backend_and_api_design.md`.

---

## The Prompt:

```markdown
Act as a Principal AI/ML Engineer and GenAI Systems Architect. Design and implement the following AI/ML solution:

[DESCRIBE USE CASE, MODEL REQUIREMENTS, DATA SOURCES, OR PIPELINE OBJECTIVES]

Core Components: [e.g., Gemini 1.5 Pro / GPT-4o, LangChain / LlamaIndex / Custom Agent, Qdrant / Pinecone / pgvector, Python 3.11+]

Implement the architecture adhering to production GenAI standards:

1. Structured Output & Determinism:
   - Enforce schema validation (Pydantic / Zod) on LLM outputs using native Function Calling or JSON Schema constraints.
   - Implement deterministic fallback logic when LLM responses fail schema validation.

2. Production RAG Architecture:
   - Chunking Strategy: Structure-aware chunking (markdown headers, code AST, sliding window token chunks with overlap).
   - Embedding & Retrieval: Dense vector search combined with BM25 keyword search (Hybrid Search with Reciprocal Rank Fusion - RRF).
   - Re-ranking: Cross-encoder re-ranking top-K candidates before context injection.
   - Groundedness & Hallucination Defense: Citations mapping back to specific chunk source IDs.

3. Agentic Execution Guardrails:
   - Tool calling loop with explicit recursion ceilings (`max_iterations = 5`).
   - Human-in-the-loop triggers for high-impact mutations (payments, email dispatch, deletion).
   - Timeouts and circuit breakers for external API tools.

4. Prompt Injection Defense & Privacy:
   - Strict separation of system instructions, developer constraints, and untrusted user input using boundary markers.
   - PII redaction and secrets scanning prior to sending context to third-party model providers.

5. Cost, Latency & Evaluation:
   - Token budgeting and streaming response handling (TTFT optimization).
   - Evaluation pipeline plan (Ragas / TruLens / LLM-as-a-Judge for Answer Relevance, Context Precision, and Faithfulness).

Provide the complete, end-to-end Python/TypeScript production pipeline code.
```
