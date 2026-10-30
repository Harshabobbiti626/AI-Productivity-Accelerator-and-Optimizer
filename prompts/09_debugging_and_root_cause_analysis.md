# MASTER PROMPT 09: ADVANCED DEBUGGING & ROOT CAUSE ANALYSIS (RCA)

## When to Use:
Use this prompt when diagnosing critical production incidents, memory leaks, silent race conditions, flaky tests, mysterious crashes, or performance degradation.

---

## Conflict Prevention & Routing:
- **Use this for**: 5-Whys diagnostic traces, reproducing bugs, analyzing crash logs/stack traces, hotfixing incidents, and writing regression tests.
- **Do NOT use if**:
  * You are writing new features from scratch $\rightarrow$ Use domain-specific prompts (03, 04, 05).
  * You are conducting proactive, full-codebase audits $\rightarrow$ Use `production-code-reviewer` skill.

---

## The Prompt:

```markdown
Act as a Principal Reliability Engineer and Debugging Specialist. Perform a rigorous Root Cause Analysis (RCA) and formulate a permanent remediation for the following bug / incident:

[PASTE ERROR LOGS, STACK TRACE, REPRODUCTION STEPS, OR DESCRIBE FAILING BEHAVIOR]

Code Context:
[PASTE SUSPICIOUS CODE OR COMPONENT]

Execute a systematic, evidence-based diagnostic process:

1. Incident Triage & Impact Assessment:
   - Severity Level (P0 / P1 / P2 / P3) and scope of user impact.
   - Blast radius: Is data corrupted, in-flight transactions dropped, or service degraded?

2. 5-Whys Diagnostic Trace:
   - Trace backwards from symptom -> immediate mechanism -> intermediate state -> underlying flaw -> systemic root cause.
   - Investigate race conditions, off-by-one errors, timezone mismatches, memory leaks, unhandled promise rejections, connection pool exhaustion, or stale cache reads.

3. Immediate Hotfix (Containment):
   - Provide minimal-change, zero-risk containment patch to restore service stability immediately without side effects.

4. Permanent Architectural Remediation:
   - Refactor the code to eliminate the vulnerability or design flaw permanently.
   - Add defensive assertions or compile-time type barriers preventing recurrence.

5. Automated Regression Test:
   - Write a deterministic unit/integration test that fails reliably against the old buggy code and passes against the fix.

6. Incident Post-Mortem & Preventative Safeguards:
   - What monitoring alert or automated check should be installed to detect this instantly if it ever occurs again?
```
