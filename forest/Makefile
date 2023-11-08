all: cleanup copy update

update:
	@cd ../../frankt716.github.io; \
	git add .; \
	git commit -m "update"; \
	git push origin main

copy:
	cp -R output/* ../../frankt716.github.io

cleanup:
	@cd ../../frankt716.github.io; \
	rm -rf *
