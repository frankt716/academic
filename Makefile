.PHONY: all ch3 clean update

TEMPLATEPATH=../basictex/

all: ch3

ch3:
	cd ch3 && make

CLEANABLES := $(shell find . \( -name '*.aux'\
	                         -o -name '\#*\#'\
			     			 -o -name '*.log'\
			     			 -o -name '*.bbl'\
                             -o -name '*.out'\
                             -o -name '*~'\
                             -o -name '*.pdf'\
                             -o -name '*.dvi'\
                             -o -name '*.synctex.gz'\
                             -o -name '*.blg'\
                             -o -name '*.toc'\
                             -o -name '*.lot'\
			     			 -o -name '*.fls'\
			     			 -o -name '*.rip'\
			     			 -o -name '*.fdb_latexmk'\
			     			 -o -name '*.xcp'\
			     			 -o -name '*.xoj'\
                             -o -name '*.lof'\
							 -o -name '*.brf'\
							 -o -name '*.diagnose'\
							 -o -name '*.kaux' \) -type f -not -path "./.git/*" -not -path "./papers/*")

clean:
	@for f in $(CLEANABLES); do \
			echo "Removing $$f";\
			rm $$f;\
	done

update:
	@echo
	@echo "Updating decls.tex in basictex"
	cp ./decls.tex $(TEMPLATEPATH)decls.tex
	@echo "Pushing changes to github"
	@echo
	cd $(TEMPLATEPATH) && git add ./decls.tex && git commit -m "Edited decls.tex" && git push origin master
