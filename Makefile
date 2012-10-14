SHELL=/bin/bash

release:
	@echo "Enter the version to release:" && \
	read NEWVERSION && \
	echo "New version is $$NEWVERSION. Confirm (ctrl+c to cancel):" && \
	read && \
	sed -E -e "s/VERSION=(.*)/VERSION=$$NEWVERSION/" install > install.tmp && mv install.tmp install && \
	sed -E -e "s/VERSION=(.*)/VERSION=$$NEWVERSION/" gin > gin.tmp && mv gin.tmp gin && \
	git commit -m "Version for release $$NEWVERSION" install gin && \
	git tag "v$$NEWVERSION" && \
	git push origin master && \
	git push --tags
