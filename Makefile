# CGEL Fragments — build system
#
# `make`           build all fragments under fragments/
# `make NAME`      build fragments/NAME.tex (e.g. `make 00-template`)
# `make site`      copy built PDFs into docs/ for GitHub Pages
# `make clean`     remove build artefacts (keeps PDFs)
# `make distclean` remove PDFs too

LATEX     := xelatex
BIBER     := biber
FRAG_DIR  := fragments
PDF_DIR   := pdfs
SITE_DIR  := docs
SOURCES   := $(wildcard $(FRAG_DIR)/*.tex)
PDFS      := $(SOURCES:$(FRAG_DIR)/%.tex=$(PDF_DIR)/%.pdf)

.PHONY: all site clean distclean
.SECONDARY:

all: $(PDFS)

$(PDF_DIR)/%.pdf: $(FRAG_DIR)/%.tex shared/preamble.tex shared/macros.tex
	@mkdir -p $(PDF_DIR)
	cd $(FRAG_DIR) && $(LATEX) -interaction=nonstopmode -output-directory=../$(PDF_DIR) $*.tex
	@if grep -q '\\\\bibliography\|biblatex' $(FRAG_DIR)/$*.tex; then \
		cd $(PDF_DIR) && $(BIBER) $* && cd .. && \
		cd $(FRAG_DIR) && $(LATEX) -interaction=nonstopmode -output-directory=../$(PDF_DIR) $*.tex; \
	fi
	cd $(FRAG_DIR) && $(LATEX) -interaction=nonstopmode -output-directory=../$(PDF_DIR) $*.tex

# Allow `make 00-template` shorthand
%: $(PDF_DIR)/%.pdf
	@true

site: all
	@mkdir -p $(SITE_DIR)/fragments
	cp $(PDF_DIR)/*.pdf $(SITE_DIR)/fragments/

clean:
	rm -f $(PDF_DIR)/*.aux $(PDF_DIR)/*.log $(PDF_DIR)/*.out $(PDF_DIR)/*.toc \
	      $(PDF_DIR)/*.bcf $(PDF_DIR)/*.bbl $(PDF_DIR)/*.blg $(PDF_DIR)/*.run.xml \
	      $(PDF_DIR)/*.fls $(PDF_DIR)/*.fdb_latexmk

distclean: clean
	rm -rf $(PDF_DIR)
