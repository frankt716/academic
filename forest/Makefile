all: cleanup copy update

build: trees/
	rm -rf output; \
	rm -rf latex; \
	forester build --root=fra-0001 trees/

update: cleanup copy
	cd ../../frankt716.github.io; \
	git add .; \
	git commit -m "update"; \
	git push origin main

copy:
	cp -R output/* ../../frankt716.github.io

cleanup:
	cd ../../frankt716.github.io; \
	rm -rf *
