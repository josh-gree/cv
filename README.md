# Joshua Greenhalgh - Curriculum Vitae

Professional CV built with the Awesome CV LaTeX template.

## Structure

```
.
├── cv.tex              # Main CV file
├── awesome-cv.cls      # LaTeX class file
├── cv/                 # Content sections
│   ├── experience.tex  # Work experience
│   ├── education.tex   # Education history
│   └── skills.tex      # Technical skills
├── cv.pdf              # Compiled CV
└── Makefile            # Build automation
```

## Building

### Compile the CV
```bash
make
```

### Clean auxiliary files
```bash
make clean
```

### Clean everything (including PDF)
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
