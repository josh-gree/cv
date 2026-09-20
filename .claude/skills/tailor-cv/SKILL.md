---
name: tailor-cv
description: Tailor this CV to a specific job advert. Use when the user pastes a job description or asks for a job-specific, role-specific or application-specific version of the CV. Creates a folder under jobs/, writes an honest gap analysis, overrides only the headline, summary and skills, builds both PDFs and verifies the advert's keywords appear.
---

# Tailor the CV to a job advert

The base CV lives in `cv/*.tex` and is never edited for a single application.
A job-specific version is a folder under `jobs/` containing the advert, a gap
analysis and only the files that differ. Both builds (`cv.tex` styled,
`cv-plain.tex` for ATS portals) read `jobs/<name>/<section>.tex` when it
exists and fall back to `cv/<section>.tex`. See `cv/jobsupport.tex`.

## The one rule

Never claim a tool, method or experience the base CV and the user's history do
not support. If the advert wants something not in evidence (a service, a
framework, "Agile"), list it as **not claimed** in the gap analysis and ask the
user. Rewording is fine; inventing is not. A keyword that gets an interview
question the user cannot answer is worse than a missing keyword.

## Steps

1. **Create the folder.** Name it `jobs/YYYY-MM-<company-or-recruiter>-<role-slug>`.
   Copy `jobs/_template/` as the starting point.

2. **Save the advert verbatim** in `job.md` under "Advert", with source,
   location and salary. The folder documents the tailoring, nothing more;
   it is not an application tracker.

3. **Extract the terms.** From the advert list: the exact job title, every
   named tool or service, methodologies (ETL, orchestration, lakehouse, Agile),
   responsibilities (mentoring, stakeholder communication, cloud migration) and
   the phrases the advert repeats. Include the literal wording, since ATS
   filters match strings, not meanings.

4. **Gap analysis.** For each term decide `yes`, `partial` or `no` against the
   base CV (`grep -ril <term> cv/`) and what you know of the user's history
   (the Projects section and their public GitHub repos are fair evidence).
   Write the table into `job.md` with an action per row. `no` rows get
   "not claimed" unless the user confirms otherwise.

5. **Write the overrides.** Keep them small.
   - `overrides.tex`: `\position{<advertised title>}` if the user has held
     that title or an equivalent. Nothing else unless needed.
   - `summary.tex`: three sentences, five lines or fewer in the styled build.
     Sentence one: the advertised title plus the strongest matching
     experience. Sentence two: the advert's core responsibilities using its
     phrases. Sentence three: the differentiators (maths background, ML work,
     mentoring, stakeholders). Start from `cv/summary.tex`.
   - `skills.tex`: reorder so the advert's must-haves come first, name rows
     with the advert's phrases ("Pipeline Orchestration & ETL"), demote or
     shorten rows the advert does not care about. Every row must fit one line
     in the styled build.
   - Override `experience.tex` only to reorder bullets within a role or to
     lead with a different bold phrase. Do not change facts or dates.

6. **Build.** `make job JOB=<name>`. Confirm the styled PDF is two pages and
   the plain PDF has no orphaned headings. Render pages to PNG and look at
   them; a table row wrapping to a single orphan word is a real defect.

7. **Verify keywords** on the plain PDF, never the styled one:
   `scripts/check_keywords.py jobs/<name>/cv-plain.pdf <term> ...`
   Every `yes` and `partial` term from the gap analysis must be present.
   `no` terms must be absent.

8. **Commit** the folder including both PDFs. Job PDFs are committed but not
   linked from the GitHub Pages site.

9. **Report** to the user: the folder path, what was tailored, the terms not
   claimed and why, and any questions (usually "have you used X?"). Keep it
   short; the gap table in `job.md` is the record.

## Reference

- `jobs/2026-09-noir-senior-data-engineer-aws/` is a complete worked example.
- The base summary and skills are the source for every override; read them
  first so the tailored version does not drift in tone.
- Building needs XeLaTeX with `roboto`, `sourcesanspro`, `fontawesome6`,
  `needspace` and `enumitem`.
