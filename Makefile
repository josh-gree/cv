# Makefile for compiling CV

# Configuration
TINYTEX_PATH = /Users/josh-gree/Library/TinyTeX/bin/universal-darwin
LATEX = xelatex
MAIN = cv
PLAIN = cv-plain
SOURCE = $(MAIN).tex

# Default target: styled CV for humans and plain CV for ATS uploads
.PHONY: all
all: $(MAIN).pdf $(PLAIN).pdf

# Compile the styled CV
$(MAIN).pdf: $(SOURCE) cv/*.tex awesome-cv.cls
	@export PATH="$(TINYTEX_PATH):$$PATH" && $(LATEX) -interaction=nonstopmode $(SOURCE)

# Compile the plain (ATS-friendly) CV from the same content files
$(PLAIN).pdf: $(PLAIN).tex cv/*.tex
	@export PATH="$(TINYTEX_PATH):$$PATH" && $(LATEX) -interaction=nonstopmode $(PLAIN).tex

# Build a job-specific variant: make job JOB=<folder name under jobs/>
# Produces jobs/$(JOB)/cv.pdf and jobs/$(JOB)/cv-plain.pdf. Sections come
# from jobs/$(JOB)/<section>.tex where present, otherwise from cv/.
.PHONY: job
job:
	@test -n "$(JOB)" || (echo "usage: make job JOB=<name>  (a folder under jobs/)"; exit 1)
	@test -d "jobs/$(JOB)" || (echo "jobs/$(JOB) does not exist; copy jobs/_template to start one"; exit 1)
	@export PATH="$(TINYTEX_PATH):$$PATH" && \
	  $(LATEX) -interaction=nonstopmode -jobname=$(MAIN) -output-directory=jobs/$(JOB) \
	    "\def\cvjob{$(JOB)}\input{$(SOURCE)}" && \
	  $(LATEX) -interaction=nonstopmode -jobname=$(PLAIN) -output-directory=jobs/$(JOB) \
	    "\def\cvjob{$(JOB)}\input{$(PLAIN).tex}"
	@rm -f jobs/$(JOB)/*.aux jobs/$(JOB)/*.log jobs/$(JOB)/*.out

# Build every job variant under jobs/
.PHONY: jobs
jobs:
	@for d in jobs/*/; do n=$$(basename $$d); [ "$$n" = "_template" ] && continue; $(MAKE) --no-print-directory job JOB=$$n; done

# Clean auxiliary files
.PHONY: clean
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(PLAIN).aux $(PLAIN).log $(PLAIN).out jobs/*/*.aux jobs/*/*.log jobs/*/*.out

# Clean everything including PDFs
.PHONY: cleanall
cleanall: clean
	rm -f $(MAIN).pdf $(PLAIN).pdf

# View the PDF (macOS)
.PHONY: view
view: $(MAIN).pdf
	open $(MAIN).pdf

# Help target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  make          - Compile both base CVs (default)"
	@echo "  make job JOB=x - Compile the job-specific variant in jobs/x/"
	@echo "  make jobs     - Compile every job-specific variant"
	@echo "  make clean    - Remove auxiliary files (.aux, .log, .out)"
	@echo "  make cleanall - Remove all generated files including PDFs"
	@echo "  make view     - Open the PDF after compiling"
	@echo "  make help     - Show this help message"
