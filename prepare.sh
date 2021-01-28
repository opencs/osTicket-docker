#!/bin/bash

DOWNLOAD_URL=https://github.com/osTicket/osTicket/archive/v1.15.tar.gz
DOWNLOADED_FILE=$(echo https://github.com/osTicket/osTicket/archive/v1.15.tar.gz | sed 's/.*\///')
EXTRACTED_DIR=osTicket-1.15

if ! [ -e $DOWNLOADED_FILE ]; then
	wget $DOWNLOAD_URL
fi

if ! sha256sum -c $DOWNLOADED_FILE.sha256sum; then
	echo "The $DOWNLOADED_FILE does not have the expected sha256sum."
	exit 1
fi

# Extract file
if [ -d app ]; then
	rm -rf app
fi

tar -xzf $DOWNLOADED_FILE
mv $EXTRACTED_DIR app

