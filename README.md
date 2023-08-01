This repo was forked from [mikeshulman/basictex](https://github.com/mikeshulman/basictex).

This repo contains
* decls.tex: the basic LaTeX macros that I use in all my papers
* paper.tex: a sample LaTeX file for the paper itself
* slides.tex: a similar sample file for making beamer slides
* Makefile: used to compile, clean, and setup the repo

I maintain my bibtex database in a separate repo. 
After cloning the repo to your local machine, run

	make setup

It creates a symlink to `../cites/all.bib` named `all.bib` so that when I add new references I only have to do it once and then all projects can see them. 
This is hardcoded so for this to work, you need to maintain a folder named `cites` just one-level above the root directory of this project.
