# Makefile for compiling CV

# Configuration
TINYTEX_PATH = /Users/josh-gree/Library/TinyTeX/bin/universal-darwin
LATEX = xelatex
MAIN = cv
SOURCE = $(MAIN).tex

# Default target
.PHONY: all
all: $(MAIN).pdf

# Compile the CV
$(MAIN).pdf: $(SOURCE) cv/*.tex awesome-cv.cls
	@export PATH="$(TINYTEX_PATH):$$PATH" && $(LATEX) -interaction=nonstopmode $(SOURCE)

# Clean auxiliary files
.PHONY: clean
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out

# Clean everything including PDF
.PHONY: cleanall
cleanall: clean
	rm -f $(MAIN).pdf

# View the PDF (macOS)
.PHONY: view
view: $(MAIN).pdf
	open $(MAIN).pdf

# Help target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  make          - Compile the CV (default)"
	@echo "  make clean    - Remove auxiliary files (.aux, .log, .out)"
	@echo "  make cleanall - Remove all generated files including PDF"
	@echo "  make view     - Open the PDF after compiling"
	@echo "  make help     - Show this help message"
