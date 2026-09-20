# Joshua Greenhalgh - Curriculum Vitae

Professional CV built with the Awesome CV LaTeX template.

Two PDFs are built from the same content files:

- `cv.pdf` - styled version for people to read. Served at https://josh-gree.github.io/cv
- `cv-plain.pdf` - plain single-column version for job-portal uploads. Served at https://josh-gree.github.io/cv/plain
  No tables, icons, small caps or footer, so applicant tracking systems parse it cleanly.

## Structure

```
.
├── cv.tex              # Styled CV (Awesome CV)
├── cv-plain.tex        # Plain ATS-friendly CV, same content
├── awesome-cv.cls      # LaTeX class file
├── cv/                 # Content sections shared by both
│   ├── personal.tex    # Name and contact details
│   ├── summary.tex     # Professional summary
│   ├── experience.tex  # Work experience
│   ├── education.tex   # Education history
│   └── skills.tex      # Technical skills
├── cv.pdf              # Compiled styled CV
├── cv-plain.pdf        # Compiled plain CV
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
