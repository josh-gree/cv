# ElevenLabs - Data Engineer (Growth team)

- **Source:** ElevenLabs careers site (elevenlabs.io/careers), Engineering & Product
- **Location / salary:** Remote, United Kingdom (or London / Warsaw / New York offices), full time; salary not stated

## Advert

About ElevenLabs

ElevenLabs is an AI research and product company transforming how we interact with technology.

We launched in January 2023 with the first human-like AI voice model. Today, we serve millions of users and thousands of businesses - from fast-growing startups to large enterprises like Deutsche Telekom and Meta. Our investors are some of the world's most prominent, including Andreessen Horowitz, ICONIQ Growth and Sequoia. We've raised $781M in funding and our last valuation was $11B - multiples of 11, always.

We have expanded from voice into three main platforms:

- ElevenAgents enables businesses to deliver seamless and intelligent customer experiences, with the integrations, testing, monitoring, and reliability necessary to deploy voice and chat agents at scale.
- ElevenCreative empowers creators and marketers to generate and edit speech, music, image, and video across 70+ languages.
- ElevenAPI gives developers access to our leading AI audio foundational models.

Everything we do is the result of the creativity and commitment of our team - builders doing the best work of their lives. We are researchers, engineers, and operators. IOI medalists and ex-founders. If you want to work hard and create lasting positive impact, we want to hear from you.

How we work

- High-velocity: Rapid experimentation, lean autonomous teams, and minimal bureaucracy.
- Impact not job titles: We don't have job titles. Instead, it's about the impact you have. No task is above or beneath you.
- AI first: We use AI to move faster with higher-quality results. We do this across the whole company—from engineering to growth to operations.
- Excellence everywhere: Everything we do should match the quality of our AI models.
- Global team: We prioritize your talent, not your location.

What we offer

(Omitted: culture, growth paths, L&D stipend, social travel stipend, annual offsite, co-working stipend.)

About the role

We're looking for an experienced Data Engineer to join our Growth team. You will build and scale our data pipelines, establish best practices, ensure data quality, and enable self-service data access across teams.

- Own and streamline data pipelines from ingestion to delivery, ensuring they are reliable, scalable, and efficient.
- Implement and maintain dbt best practices, data standards, and quality controls.
- Build self-service tooling and write clear documentation to empower cross-functional teams (Engineering, Revenue Operations, Growth, and others) to independently meet their data needs.
- Create AI agents to serve data questions for others

Requirements

Demonstrated experience formalising and scaling data pipelines, ideally as one of the first or early data engineers on a growing team.

- Expert knowledge of dbt (required).
- Proficiency with tools across the modern data stack (Python, SQL, BI tools).
- Structured thinking; ability to simplify complex, messy data into clear structures.
- Strong ability to understand varied stakeholder requirements and build generalised solutions.

Location

This role is remote and can be executed globally. If you prefer, you can work from our offices in London, Warsaw, New York.

## Gap analysis

Terms from the advert, checked against the base CV. Only claim what you would defend in an interview.

| Term | In base CV? | Action |
|---|---|---|
| Data Engineer | yes | headline "Senior Data Engineer" |
| formalising and scaling data pipelines | yes (Mobkoi: ad-hoc cloud functions to Prefect; TransitionZero; HeyJobs Airflow best practices) | literal phrase in summary |
| early data engineer on a growing team | partial (start-ups and scale-ups; not stated as first hire) | "fast-growing start-ups and scale-ups" in summary. Ask: were you the first data engineer anywhere? |
| dbt (expert, required) | partial (in base skills; no role bullet mentions it) | "dbt" listed first in skills and in summary; "expert" and "dbt best practices" not claimed. Biggest risk for this role |
| ingestion to delivery | yes | literal phrase in summary |
| data standards, quality controls | yes (IMU metadata standards, HeyJobs and IMU quality frameworks) | summary and Data Quality row |
| self-service tooling | yes (TransitionZero analysts deploy their own pipelines) | summary and skills row |
| clear documentation | no specific evidence | not claimed. Ask if you have examples |
| cross-functional teams, Revenue Operations, Growth | yes (HeyJobs marketing cost processing, Mobkoi revenue estimation) | "marketing cost and revenue data for growth teams" in summary |
| AI agents to serve data questions | partial (Claude Agent SDK agent, RAG, LLM pipelines; not data Q&A agents) | "AI agents and LLM workflows" in summary |
| modern data stack: Python, SQL | yes | skills row name and summary |
| BI tools | partial (React/PostGIS dashboards; no Looker/Tableau/Metabase) | "dashboards" only; BI tool names not claimed |
| messy data into clear structures | yes (IMU unified scattered Parquet and vendor files; legacy SQL at HeyJobs) | literal phrase in summary |
| varied stakeholder requirements, generalised solutions | yes | literal phrase in summary |

## Overrides in this folder

- `overrides.tex` - headline "Senior Data Engineer".
- `summary.tex` - formalising and scaling pipelines, ingestion to delivery, dbt and orchestration, standards and quality controls, self-service tooling, growth and revenue data, messy data into clear structures, stakeholders, AI agents.
- `skills.tex` - "Modern Data Stack" row leads with dbt; self-service and AI agents rows added; ML row dropped.
- Experience, projects and education fall back to the base files.
