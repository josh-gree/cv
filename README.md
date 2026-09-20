# Joshua Greenhalgh - Curriculum Vitae

Professional CV built with the Awesome CV LaTeX template.

Two PDFs are built from the same content files:

- `cv.pdf` - styled version for people to read. Served at https://josh-gree.github.io/cv
- `cv-plain.pdf` - plain single-column version for job-portal uploads. Served at https://josh-gree.github.io/cv/plain
  No tables, icons, small caps or footer, so applicant tracking systems parse it cleanly.

## Job-specific versions

Each application gets a folder under `jobs/` holding the advert, a gap analysis
and only the files that differ from the base CV. Both builds read
`jobs/<name>/<section>.tex` when it exists and fall back to `cv/<section>.tex`.

```bash
cp -r jobs/_template jobs/2026-09-acme-senior-data-engineer
# edit job.md, overrides.tex, summary.tex (and skills.tex if needed)
make job JOB=2026-09-acme-senior-data-engineer
# -> jobs/2026-09-acme-senior-data-engineer/cv.pdf and cv-plain.pdf
```

`make jobs` rebuilds every variant. Job PDFs are committed but not linked from
the GitHub Pages site. `scripts/check_keywords.py <pdf> <term>...` counts how
often each advert term appears in the plain PDF.

In Claude Code, the repo-local `tailor-cv` skill runs this whole process:
paste an advert and ask for a tailored version.

## Structure

```
.
├── cv.tex              # Styled CV (Awesome CV)
├── cv-plain.tex        # Plain ATS-friendly CV, same content
├── awesome-cv.cls      # LaTeX class file
├── cv/                 # Content sections shared by both
│   ├── jobsupport.tex  # Job-variant lookup macros
│   ├── personal.tex    # Name and contact details
│   ├── summary.tex     # Professional summary
│   ├── experience.tex  # Work experience
│   ├── education.tex   # Education history
│   └── skills.tex      # Technical skills
├── cv.pdf              # Compiled styled CV
├── cv-plain.pdf        # Compiled plain CV
├── jobs/               # One folder per application (see above)
│   ├── _template/      # Copy this to start a new one
│   └── <name>/         # job.md, overrides.tex, summary.tex, skills.tex, PDFs
└── Makefile            # Build automation
```

## Building

### Compile both CVs
```bash
make
```

### Clean auxiliary files
```bash
make clean
```

### Clean everything (including PDFs)
```bash
make cleanall
```

### View the PDF
```bash
make view
```

### Help
```bash
make help
```

## Requirements

- TinyTeX (installed via Quarto)
- XeLaTeX compiler
- Required LaTeX packages:
  - fontawesome6
  - roboto
  - sourcesanspro
  - sourcecodepro

## Editing

Edit the content files in the `cv/` directory:
- `cv/experience.tex` - Work experience entries
- `cv/education.tex` - Education qualifications
- `cv/skills.tex` - Technical skills

Edit `cv.tex` for personal information (name, email, github, etc.)

## Template

Based on [Awesome CV](https://github.com/posquit0/Awesome-CV) by Claud D. Park.
