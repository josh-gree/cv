# Boost Talent (client undisclosed) - Senior Data Engineer

- **Source:** Boost Talent job advert (recruiter; client described as "a data-driven technology organisation" with a global business)
- **Location / salary:** not stated in the advert

## Advert

About the job

Role Overview
We're partnering with a data-driven technology organisation looking for a Senior Data Engineer to help shape the way complex, high-value datasets are collected, transformed, managed and delivered across a global business.
This is a hands-on engineering role focused on building modern data platforms, developing scalable data pipelines and creating trusted data products that support both internal teams and external customers. You'll work with large and complex datasets, helping to establish the architecture, tooling and engineering standards that underpin a growing cloud-based data ecosystem.
You'll join a collaborative engineering environment where teams take ownership of solutions from design through to production. The role offers significant influence over platform strategy, technical direction and engineering best practice, providing the opportunity to shape how data is managed, discovered and consumed across the organisation.
For engineers who enjoy solving large-scale data challenges, improving data accessibility and building reliable systems that directly impact products and customers, this represents an excellent opportunity to make a meaningful contribution.

What You'll Be Doing

* Designing, building and maintaining scalable ETL/ELT pipelines and data processing workflows
* Developing and optimising data products that transform complex datasets into trusted, consumable assets
* Building Python-based services and tooling that support data ingestion, transformation and delivery
* Contributing to the evolution of a modern cloud-native data platform
* Defining and promoting standards around data quality, governance, metadata and observability
* Working closely with software engineering, platform and product teams to improve data accessibility and reliability
* Supporting production data systems, monitoring and operational excellence
* Contributing to architectural decisions and helping drive engineering best practice across the organisation
* Mentoring colleagues and fostering a strong engineering culture

Skills Required
We're particularly interested in experienced Data Engineers who combine strong Python development skills with expertise in building modern cloud-based data platforms.
Essential Experience

* Strong commercial experience as a Data Engineer, Data Platform Engineer or Python Engineer working with large-scale datasets
* Advanced Python development experience
* Designing and developing ETL/ELT pipelines and modern data platforms
* Experience with AWS-based data platforms
* AWS services including Glue, Step Functions, Athena, S3 and serverless architectures
* Data modelling, transformation and orchestration tooling such as dbt
* Working with modern analytical storage formats including Parquet and Iceberg
* Building robust data ingestion and transformation workflows
* Data quality frameworks, schema evolution and metadata management
* Experience with distributed data processing and large-scale datasets
* Understanding of REST APIs and data integration patterns
* Strong software engineering principles, including testing, maintainability and security
* Monitoring, observability and operational support for production data platforms

Desirable Experience

* Event-driven architectures, messaging and streaming technologies
* OpenSearch, graph databases or knowledge graph technologies
* Data discovery, catalogue or lineage platforms
* Experience building backend services using Python
* Experience working within agile, cross-functional engineering teams

Why Apply?

* Opportunity to influence the evolution of a strategic data platform
* Work with complex, high-value datasets at scale
* Significant ownership and technical autonomy
* Collaborative engineering culture with strong technical standards
* Exposure to modern cloud, data engineering and platform technologies
* Opportunity to shape engineering best practices and platform direction

A Little Note From Us
Boost Talent is committed to creating an inclusive recruitment experience and supporting equal opportunities throughout the recruitment process. We welcome applications from people of all backgrounds and will gladly discuss any reasonable adjustments you may need to help you feel supported throughout the process.
While we'd genuinely love to reply to everyone individually, we often receive a high number of applications for the roles we advertise. If your experience aligns with the opportunity, a member of our team will be in touch to discuss the role.
Best of luck!

## Gap analysis

Terms from the advert, checked against the base CV. Only claim what you would defend in an interview.

| Term | In base CV? | Action |
|---|---|---|
| Senior Data Engineer | yes (Mobkoi, TransitionZero, HeyJobs) | headline set to "Senior Data Engineer" in overrides.tex |
| Python / advanced Python development | yes | first in summary and skills; "Python services" in summary |
| ETL/ELT pipelines | yes | "ETL/ELT pipelines" in summary, first item of Pipelines row |
| modern / cloud-native data platforms | yes (IMU platform, Mobkoi warehouse, GCP/AWS) | "cloud-native data platforms" in summary |
| AWS-based data platforms | yes (HeyJobs, Mobkoi, IMU) | "AWS \& Serverless" skills row |
| Glue | yes (HeyJobs Glue/Spectrum) | AWS row |
| S3 | yes | summary and AWS row |
| serverless architectures | yes (Lambda, GCP Cloud Functions) | AWS row, literal phrase |
| Step Functions | no in base; confirmed by user | AWS row |
| Athena | no in base; confirmed by user | AWS row |
| dbt | yes (base skills row) | Pipelines row and summary |
| data modelling | yes | summary and Pipelines row |
| orchestration | yes (Dagster, Prefect, Airflow) | summary and Pipelines row name |
| Parquet | yes (IMU, lakehouse) | summary and Storage row |
| Iceberg | no (user knows the format but has not used it) | not claimed |
| data ingestion | yes (Mobkoi impression-level ingestion, Flowminder 50M records/day) | Pipelines row |
| data quality frameworks | yes (HeyJobs, IMU QC framework) | literal phrase in Data Quality row; "data quality" in summary |
| schema evolution | no literal term; confirmed by user (every role touching a database) | Data Quality row |
| metadata management | yes (IMU ontologies and metadata standards) | "metadata" in summary, "metadata standards" in skills |
| governance | partial (metadata standards and ontologies defined with domain experts) | "governance" in Data Quality row |
| distributed data processing | yes (PySpark, EMR, Kafka) | literal phrase in Streaming \& Distributed row |
| large-scale datasets | yes (100k+ samples, 50M+ records/day, 10M subscribers) | summary |
| REST APIs | yes | Languages \& Backend row |
| data integration patterns | yes (Mobkoi partner integrations, CDC) | "data integration" in summary |
| testing, maintainability | yes | property-based testing in skills; testing throughout experience |
| security | no literal term (privacy-preserving aggregates only) | not claimed |
| monitoring, observability, operational support | yes (DataDog, Dagster QC, base skills) | summary and Observability \& Operations row |
| production data platforms | yes | "operational support for production data platforms" in skills |
| event-driven architectures, messaging, streaming | yes (Kafka, CDC, cloud functions) | Streaming \& Distributed row |
| OpenSearch | no | not claimed: no evidence |
| graph databases | no in base; user used Neo4j at Flowminder | "Neo4j (graph database)" in Storage row |
| knowledge graph | yes (news-knowledge-graph project) | "knowledge graphs" in ML row; project already in Projects |
| data discovery, catalogue, lineage | yes (IMU catalogue, lineage-aware index) | "data catalogue, lineage" in Data Quality row |
| backend services using Python | yes (Flask, location backend on GCP) | "Python backend services" in skills |
| agile, cross-functional teams | yes (base skills) | "Agile" in Pipelines row |
| mentoring | yes (tech lead, teaching, doctoral mentoring) | "mentors engineers" in summary |
| architectural decisions | yes (storage architecture, warehouse design) | literal phrase in summary |
| data products | yes (mobility products, IMU datasets for analysts and models) | "trusted data products" in summary |

## Overrides in this folder

- `overrides.tex` - headline changed to "Senior Data Engineer".
- `summary.tex` - rewritten around cloud-native platforms, ETL/ELT, Python services, dbt and orchestration, Parquet/S3 storage, data quality, metadata, observability, data products, architecture and mentoring.
- `skills.tex` - rows renamed to the advert's phrases; AWS/serverless, storage formats, data quality/metadata, observability/operations and streaming/distributed rows added; ML row shortened and moved last.
- Experience, projects and education fall back to the base files.
