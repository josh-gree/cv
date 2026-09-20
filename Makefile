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

# Clean auxiliary files
.PHONY: clean
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(PLAIN).aux $(PLAIN).log $(PLAIN).out

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
	@echo "  make          - Compile both CVs (default)"
	@echo "  make clean    - Remove auxiliary files (.aux, .log, .out)"
	@echo "  make cleanall - Remove all generated files including PDFs"
	@echo "  make view     - Open the PDF after compiling"
	@echo "  make help     - Show this help message"
