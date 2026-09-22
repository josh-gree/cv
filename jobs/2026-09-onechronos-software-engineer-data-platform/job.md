# OneChronos - Software Engineer, Data Platform

- **Source:** https://www.onechronos.com/pdfs/software-engineer-data-platform.pdf
- **Location / salary:** not stated in the advert

## Advert

Software Engineer, Data Platform

Our systems operate at the massive speed and scale of algorithmic trading. We process terabytes of data and billions of rows each day, and every layer of the platform must be engineered for performance and reliability. As a small team, we are continuously evolving our analytics platform to keep pace with growing datasets and increasingly complex analytical workloads.

We are seeking a software engineer who enjoys building the systems that make large-scale data usable. This role sits at the intersection of data engineering and backend development, focused on building and improving the infrastructure that powers our analytics platform. That includes designing data pipelines, workflow orchestration, and internal tooling that supports high-volume, time-sensitive data processing.

The ideal candidate is comfortable working with both real-time and historical data streams and has experience managing end-to-end data workflows. You will help design and maintain the services, pipelines, and platform infrastructure that support our analytics initiatives, working closely with both engineering and the business to turn complex datasets into usable systems.

### What You'll Do

- Work with engineers and business teams to understand our datasets and build systems to store, process, and productionize them.
- Develop and maintain reliable data pipelines and workflow systems for large-scale data ingestion and transformation.
- Build internal services and tooling that support analytics, automation, and data operations.
- Implement ETL and data transformation processes for analytical databases and internal applications.
- Develop and maintain workflow orchestration for complex data processes.
- Optimize storage, retrieval, and processing performance across large datasets.
- Partner with analysts and researchers to support data modeling and analytics workflows.
- Monitor and troubleshoot data infrastructure to ensure reliability and data integrity.
- Continuously improve the platform through better system design, tooling, and engineering practices.

### Who You Are

- You have a Bachelor's degree in Computer Science, Engineering, or a related field, or equivalent hands-on experience.
- You bring around 3-5 years of experience building internal data platform tooling or services that support large-scale data processing and analytics workflows (primarily using Python and SQL; Rust is a plus).
- You've worked with workflow orchestration systems used to manage complex data pipelines (Temporal, Airflow, Dagster, or similar).
- You're familiar with columnar data formats such as Parquet or Arrow.
- You have experience working with large-scale datasets and high-volume data pipelines in production environments.
- Experience working with analytics platforms, data providers, or financial data systems is a plus.
- You have an entrepreneurial mindset and genuinely enjoy building things and solving hard problems.

## Gap analysis

Terms from the advert, checked against the base CV. Only claim what you would defend in an interview.

| Term | In base CV? | Action |
|---|---|---|
| Software Engineer, Data Platform | yes (Senior Software Engineer at IMU building the data platform) | headline "Senior Software Engineer, Data Platform"; "Software engineer on the data platform side" opens the summary |
| Python, SQL | yes | first in summary and Languages row |
| Rust | no in base; confirmed by user (personal projects and simple Python integrations) | Languages row, qualified as "personal projects, Python integrations" |
| data pipelines | yes | summary, Workflow Orchestration row |
| workflow orchestration | yes (Dagster, Prefect, Airflow) | literal phrase in summary and as skills row name |
| Airflow, Dagster | yes | Workflow Orchestration row (Dagster and Airflow listed first) |
| Temporal | no; confirmed by user (keyword check hits "temporal tagging" in the base projects, not the Temporal orchestrator) | not claimed |
| internal tooling / internal services | yes (CI-based self-serve pipeline framework, data catalogue, JupyterHub, Flask/Django apps) | "internal tooling" in summary; Internal Services \& Tooling row |
| large-scale data ingestion and transformation | yes (50M+ records/day, impression-level ingestion, 100k+ samples) | summary; "data ingestion and transformation" in Workflow Orchestration row |
| ETL / data transformation processes | yes | "ETL" in summary, "ETL/ELT" in skills |
| analytical databases | yes (Redshift, Snowflake, BigQuery, TimescaleDB) | literal phrase in Columnar Storage row |
| real-time and historical data streams | yes (Kafka + TimescaleDB post-crisis tool, three years of historical mobile data) | literal phrase in summary and Streaming \& Real-time row |
| time-sensitive / high-volume data processing | yes (real-time mobility tool, 50M records/day) | "high-volume" in summary |
| columnar data formats, Parquet | yes (Parquet at IMU, Zarr) | "columnar storage on Parquet" in summary; Columnar Storage row |
| Arrow | no in base; confirmed by user (used many times) | Columnar Storage row |
| optimize storage, retrieval, processing performance | yes (IMU storage architecture benchmarks, cut query times, Redshift cost cutting) | "Optimises storage, retrieval and processing performance across large datasets" in summary |
| data modeling | yes (base skills, warehouse design) | "data modelling" in summary and Databases row (UK spelling kept) |
| analysts and researchers | yes (analytics team at Mobkoi, immunologists at IMU, doctoral research) | "partners with analysts and researchers" in summary |
| monitor and troubleshoot, reliability, data integrity | yes (QC framework, data quality framework, DataDog) | summary; Reliability \& Monitoring row with "data integrity" and "troubleshooting" |
| productionize / production environments | yes | "in production" in summary |
| engineers and business teams | yes (Mobkoi client confidence, ministry, immunologists) | covered by experience; not repeated in summary |
| analytics platforms | yes (IMU data platform, Mobkoi warehouse) | "data platform" in summary |
| data providers | yes (partner data at Mobkoi, mobile operators at Flowminder) | already in experience bullets; not claimed as a literal phrase |
| financial data systems | partial (revenue and FX handling against P\&L at Mobkoi) | not claimed as a phrase; the Mobkoi bullet stands on its own |
| algorithmic trading, terabytes, billions of rows | no | not claimed: no evidence. Scale in evidence is 50M+ records/day and 100k+ samples |
| entrepreneurial mindset | yes (co-founder of the location data union) | "co-founder's entrepreneurial mindset" in summary |
| 3-5 years experience | yes (since 2017, ~9 years; overqualified on years) | "since 2017" in summary |
| Bachelor's in CS or related | yes (BSc Mathematics first class, MSc Computational Modelling) | education unchanged |
| system design, engineering practices | yes (storage architecture, Airflow best practices, testing) | already in experience |

Spelling: the CV uses UK spelling ("modelling", "optimises"), so the advert's "data modeling" and "optimize" are not exact string matches. Kept for consistency with the rest of the CV.

## Overrides in this folder

- `overrides.tex` - headline changed to "Senior Software Engineer, Data Platform".
- `summary.tex` - rewritten around data pipelines, workflow orchestration, internal tooling, real-time and historical streams, columnar storage, performance optimisation, analysts and researchers, reliability and data integrity, and the entrepreneurial angle.
- `skills.tex` - rows renamed to the advert's phrases: Workflow Orchestration, Streaming \& Real-time, Columnar Storage, Reliability \& Monitoring, Internal Services \& Tooling; Dagster and Airflow lead the orchestration row; ML row shortened and last.
- Experience, projects and education fall back to the base files.
