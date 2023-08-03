.PHONY: all ch3 ch3-clean clean update

TEMPLATEPATH=../basictex/

all: ch3

ch3:
	cd ch3 && make

ch3-clean:
	@cd ch3 && make clean

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

update:
	@echo
	@echo "Updating decls.tex in basictex"
	cp ./decls.tex $(TEMPLATEPATH)decls.tex
	@echo "Pushing changes to github"
	@echo
	cd $(TEMPLATEPATH) && git add ./decls.tex && git commit -m "Edited decls.tex" && git push origin master
