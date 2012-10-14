SHELL=/bin/bash

release:
	echo "Enter the version to release:" && \
	read NEWVERSION && \
	echo "New version is $$NEWVERSION. Confirm (ctrl+c to cancel):" && \
	read && \
	sed -E -e "s/VERSION=(.*)/VERSION=$$NEWVERSION/" install.sh > install.sh.tmp && mv install.sh.tmp install.sh && \
	sed -E -e "s/VERSION=(.*)/VERSION=$$NEWVERSION/" gin > gin.tmp && mv gin.tmp gin
