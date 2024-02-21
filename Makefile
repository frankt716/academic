LATEX := latexmk -synctex=1 -pdf -shell-escape

.PHONY: default
default:
	@echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	@echo "% This target does nothing %"
	@echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

.PHONY: algebraic-theories-and-sketches.tex
	$(LATEX) algebraic-theories-and-sketches.tex

.PHONY: categorical-logic
categorical-logic: categorical-logic.tex
	$(LATEX) categorical-logic.tex

.PHONY: p-abstract-nonsense
p-abstract-nonsense: p-abstract-nonsense.tex
	$(LATEX) p-abstract-nonsense.tex

.PHONY: clean
clean:
	@rm -rf *.aux \#*\# *.log *.bbl *.out *~ *.pdf *.dvi \
	  *.synctex.gz *.blg *.toc *.lot *.fls *.rip *.fdb_latexmk \
	  *.xcp *.xoj *.lof *.brf *.diagnose *.kaux .\#*.tex \
	  *.nav *.snm
