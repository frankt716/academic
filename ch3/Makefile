.PHONY: all 4.pdf 5.pdf 6.pdf clean

all: 4.pdf 5.pdf 6.pdf

4.pdf: 4.tex
	latexmk -synctex=1 -pdf -shell-escape 4.tex

5.pdf: 5.tex
	latexmk -synctex=1 -pdf -shell-escape 5.tex

6.pdf: 6.tex
	latexmk -synctex=1 -pdf -shell-escape 6.tex

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
