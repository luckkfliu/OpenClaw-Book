# OpenClaw English Documentation — LaTeX Build Makefile
# Uses xelatex for native Unicode support

MAIN    = openclaw-book-en
TEX     = xelatex
FLAGS   = -interaction=nonstopmode -halt-on-error -file-line-error
SOURCES = $(MAIN).tex $(wildcard chapters/*.tex)

.PHONY: all pdf clean distclean view watch help

# Default target: build PDF
all: pdf

# Build PDF (twice for correct TOC and cross-references)
pdf: $(MAIN).pdf

$(MAIN).pdf: $(SOURCES)
	$(TEX) $(FLAGS) $(MAIN).tex
	$(TEX) $(FLAGS) $(MAIN).tex

# Quick build (single pass, for draft preview)
quick:
	$(TEX) $(FLAGS) $(MAIN).tex

# Open PDF preview (macOS)
view: pdf
	open $(MAIN).pdf

# Watch for file changes and auto-build (requires fswatch: brew install fswatch)
watch:
	@echo "👀 Watching for file changes... (Ctrl+C to quit)"
	@fswatch -o $(SOURCES) | xargs -n1 -I{} make quick

# Clean auxiliary files
clean:
	rm -f $(MAIN).aux $(MAIN).log $(MAIN).out $(MAIN).toc
	rm -f $(MAIN).fdb_latexmk $(MAIN).fls $(MAIN).synctex.gz

# Deep clean (including PDF)
distclean: clean
	rm -f $(MAIN).pdf

# Help
help:
	@echo "Available targets:"
	@echo "  make          — Build PDF (twice, with TOC)"
	@echo "  make quick    — Quick build (single pass, draft preview)"
	@echo "  make view     — Build and open PDF"
	@echo "  make watch    — Watch for file changes and auto-build"
	@echo "  make clean    — Clean auxiliary files"
	@echo "  make distclean— Clean all generated files (including PDF)"
	@echo "  make help     — Show this help"
