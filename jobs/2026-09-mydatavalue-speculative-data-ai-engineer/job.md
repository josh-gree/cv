# myDataValue - speculative application (no published role)

- **Source:** https://www.mydatavalue.com/ (homepage, /careers/, /integrations/, /research/), read 2026-09-22. Applying by email; no advert exists.
- **Location / salary:** not stated. The careers page says "No current open positions. We are not hiring for a published role right now."

## What the company does (from the site)

myDataValue builds "the AI agent for Booking.com and Airbnb optimisation" for short-term rental operators and revenue managers. The agent ("Sisi") reads ranking, ADR, pacing and competitor signals across the next 180 days, explains what changed, and applies promotions or rate-plan changes across hundreds of listings in bulk, then tracks before-and-after metrics. Their research page describes adaptive learning over 35 billion data points and a four-stage Analyse-Test-Optimise-Monitor cycle, with a 621-property study claiming a 28% Net ADR improvement.

Product surface: web app (dashboard, reports, auto-optimise, chat agent), Chrome extension for Airbnb, direct Booking.com extranet connection, API integrations with PMS systems (Guesty, Hostify) and coexistence with RMS tools (PriceLabs, Wheelhouse). Free tools: health score, market reports, booking optimisation simulator. 7,000 listings managed. Markets across Europe.

### Careers page (verbatim)

Help us build the future of AI for revenue managers

We build AI agents that help hospitality teams make better revenue decisions.

Make revenue work less manual. Revenue managers should not spend their day checking OTA dashboards, reconciling spreadsheets, and guessing which lever to pull. We are building an agent that watches the market, explains what changed, and helps operators act while demand is still moving.

How we work

- Team player: We take responsibility for the whole product.
- Customer-centric: We build around real customer problems.
- AI-native: We use frontier tools daily.
- Pragmatic: We ship the simplest thing that solves the problem well.

No current open positions. We are not hiring for a published role right now. When a role is published, it will appear here.

## Angle taken

There is no job title, so the headline is "Senior Software Engineer, Data \& AI": a title the user has held (Senior Software Engineer) plus the two things the company builds on. The pitch is the intersection of their needs that the CV can evidence: high-volume third-party data turned into decisions (adtech impression-level ingestion, revenue estimation, mobility dashboards), AI agents and LLM tooling used daily, and small-team, whole-product ownership (co-founder, project lead with budget). Domain terms (Booking.com, Airbnb, hospitality, pricing, promotions, ranking) are deliberately absent from the CV; they belong in the email.

## Gap analysis

Terms from the site, checked against the base CV. Only claim what you would defend in an interview.

| Term | In base CV? | Action |
|---|---|---|
| AI agents / agentic | yes (mobile-agents on Claude Agent SDK, DSPy programs) | "AI agents" in summary; "AI Agents \& LLMs" skills row first |
| AI-native, frontier tools daily | yes (Claude Agent SDK, DSPy, LLM pipelines) | "Uses LLMs and AI agents daily" in summary |
| revenue decisions / revenue data | yes (Mobkoi revenue estimation and FX, variance 20% to under 1%) | "revenue analytics" and "revenue estimation" in summary; Analytics \& Revenue Data row |
| OTA / Booking.com / Airbnb / hospitality / short-term rental | no | not claimed: no evidence. Adtech marketplaces are the nearest analogue and are named as such |
| ranking, pricing, promotions, ADR, pacing | no | not claimed: no evidence |
| watches the market / what changed / signals | partial (real-time mobility tool on Kafka, QC framework catching regressions) | "real-time monitoring and anomaly detection" in summary and Monitoring row |
| competitor signals / market data | no direct evidence | not claimed |
| dashboards, reports, market reports | yes (PostGIS and React dashboards, reports for a transport ministry, analytics team) | "dashboards and reports for non-technical operators" in summary |
| PMS / API integrations, channel connections | yes (AWS ad-serving integration, partner data at Mobkoi, mobile operator feeds at Flowminder, REST APIs) | "partner-platform integrations" and "ingestion from partner APIs" in summary; "third-party API integrations" in skills |
| Chrome extension / browser automation / scraping | no | not claimed: no evidence. JavaScript and React are claimed |
| 35 billion data points / hundreds of listings | partial (50M+ records/day, 100k+ samples, 10M subscribers) | "high-volume" in summary; no numbers inflated |
| adaptive learning / ML / optimisation | yes (doctoral optimisation and Bayesian methods, PyTorch, IMU ML datasets) | "doctoral research in optimisation and Bayesian methods"; Optimisation \& Modelling row |
| Analyse-Test-Optimise-Monitor, before-and-after metrics, simulator | partial (experiment tracking with W\&B, synthetic data framework for stress-testing) | "experiment tracking" and "synthetic data generation" in skills; "simulation" not claimed |
| team player, whole product | yes (co-founder built app and backend end to end; led GSMA project with budget) | "co-founded two-sided data venture built end to end" in summary |
| customer-centric, real customer problems | yes (client confidence in reported numbers, immunologists, ministry) | "decisions people can act on", "non-technical operators" in summary |
| pragmatic, ship the simplest thing | yes (rebuilt ad-hoc functions into orchestration, CI-based self-serve framework) | "pragmatic about shipping the simplest thing that works in a small team" in summary |
| small team | yes (Mobkoi, TransitionZero, co-founder) | "small team" in summary |
| revenue managers / reconciling spreadsheets | partial (FX and revenue reconciliation against P\&L) | Mobkoi bullet already covers it; not claimed as a phrase |
| Python, SQL, JavaScript | yes | Languages \& Backend row |

## Overrides in this folder

- `overrides.tex` - headline "Senior Software Engineer, Data \& AI".
- `summary.tex` - rewritten around revenue analytics, partner-platform integrations, turning high-volume third-party data into decisions, real-time monitoring and anomaly detection, dashboards for operators, daily use of LLMs and AI agents, pragmatism in a small team, and the optimisation background.
- `skills.tex` - AI Agents \& LLMs first; Integrations \& Ingestion, Analytics \& Revenue Data, Monitoring \& Quality and Optimisation \& Modelling rows added; storage rows shortened.
- Experience, projects and education fall back to the base files.

## Notes for the email

- Say why them: agents that watch a market and explain what changed is the same shape as the Mobkoi impression pipeline plus revenue estimation, and the Flowminder real-time mobility tool.
- Name the domain gap honestly (no hospitality or OTA experience) and offer the adtech marketplace analogue.
- Mention the open-source agent work (mobile-agents, news-knowledge-graph) with links, since "AI-native" is one of their four values.
