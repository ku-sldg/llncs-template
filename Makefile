BASE_NAME = samplepaper
TEX_SRCS := $(BASE_NAME).tex
LATEX = pdflatex
BIBTEX = bibtex

init:
	@read -p "Enter the paper name: " PAPER_NAME; \
	sed -i "s/$(BASE_NAME)/$$PAPER_NAME/g" Makefile; \
	sed -i "/^init:/,/^$$/d" Makefile; \
	sed -i "s/$(BASE_NAME)/$$PAPER_NAME/g" .gitignore; \
	mv $(BASE_NAME).tex $$PAPER_NAME.tex; \
	git submodule update --init; \
	echo "Initialized with $$PAPER_NAME";

all:	$(TEX_SRCS:.tex=.pdf)

%.pdf:	%.tex
	$(LATEX) $*
	$(BIBTEX) $*
	$(LATEX) $*
	$(LATEX) $*

clean:
	-rm $(TEX_SRCS:.tex=.pdf) $(TEX_SRCS:.tex=.log) $(TEX_SRCS:.tex=.aux)
	-rm $(TEX_SRCS:.tex=.out) $(TEX_SRCS:.tex=.blg) $(TEX_SRCS:.tex=.bbl)
