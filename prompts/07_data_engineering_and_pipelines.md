# MASTER PROMPT 07: DATA ENGINEERING & PIPELINES

## When to Use:
Use this prompt when building ETL/ELT pipelines, designing dbt models, writing Spark/PySpark batch/streaming jobs, orchestrating Airflow DAGs, or creating data contracts.

---

## Conflict Prevention & Routing:
- **Use this for**: Data pipelines, dbt models (staging, intermediate, marts), Spark/PySpark jobs, Airflow DAGs, and data quality contracts.
- **Do NOT use if**:
  * You need transactional OLTP database design $\rightarrow$ Use `05_database_schema_and_optimization.md`.
  * You need GenAI/RAG embeddings pipelines $\rightarrow$ Use `06_ai_ml_and_genai_systems.md`.

---

## The Prompt:

```markdown
Act as a Principal Data Engineer and Big Data Architect. Build and optimize the following data pipeline / transformation:

[DESCRIBE DATA SOURCES, TRANSFORMATION LOGIC, DESTINATION WAREHOUSE, OR LATENCY REQUIREMENTS]

Stack: [e.g., dbt, Apache Airflow / Cloud Composer, Apache Spark / Dataproc, BigQuery, Snowflake, Kafka]

Deliver a production-ready solution adhering to enterprise data engineering standards:

1. Pipeline Architecture (ELT Best Practices):
   - Idempotent and deterministic pipeline runs (re-running on a date partition must overwrite and produce identical results).
   - Data partitioning and clustering aligned with downstream query access patterns.
   - Schema evolution and backward compatibility management.

2. dbt Modeling Structure (if applicable):
   - Staging (`stg_`): 1:1 with source, column casting, renaming, light cleaning.
   - Intermediate (`int_`): Complex joins, surrogate keys, business logic abstractions.
   - Marts (`fct_` and `dim_`): Star schema fact and dimension tables ready for BI consumption.

3. Distributed Compute & Spark / BigQuery Optimization:
   - Minimize wide transformations (`groupBy`, `distinct`) causing network shuffles.
   - Use broadcast joins for small dimension tables.
   - Prevent data skew by salting hot keys or repartitioning strategically.

4. Data Quality & Data Contracts:
   - Schema enforcement at pipeline entrypoint.
   - Automated quality assertions: Uniqueness, non-nullability, foreign key referential integrity, freshness, and accepted value checks.
   - Dead-letter handling for quarantine of malformed rows.

5. Orchestration & Monitoring:
   - Production Airflow DAG or orchestration definition with retries, alert callbacks (Slack/PagerDuty), and execution timeouts.
   - Data lineage tracking and SLA breach alarms.

Provide the complete SQL/Python models, DAG definitions, and configuration files.
```
