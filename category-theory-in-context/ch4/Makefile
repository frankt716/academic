.PHONY: all 1.pdf 2.pdf 3.pdf 4.pdf 5.pdf 6.pdf clean

MAKE=latexmk -synctex=1 -pdf -shell-escape

all: 1.pdf 2.pdf 3.pdf 4.pdf 5.pdf 6.pdf

1.pdf: 1.tex
	$(MAKE) 1.tex

2.pdf: 2.tex
	$(MAKE) 2.tex

3.pdf: 3.tex
	$(MAKE) 3.tex

4.pdf: 4.tex
	$(MAKE) 4.tex

5.pdf: 5.tex
	$(MAKE) 5.tex

6.pdf: 6.tex
	$(MAKE) 6.tex

clean:
	@rm -rf \
	  *.aux \
	  \#*\# \
	  *.log \
	  *.bbl \
	  *.out \
	  *~ \
	  *.pdf \
	  *.dvi \
	  *.synctex.gz \
	  *.blg \
	  *.toc \
	  *.lot \
	  *.fls \
	  *.rip \
	  *.fdb_latexmk \
	  *.xcp \
	  *.xoj \
	  *.lof \
	  *.brf \
	  *.diagnose \
	  *.kaux \
	  .\#*.tex
