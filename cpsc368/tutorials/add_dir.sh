#!/bin/bash

echo " This script moves everything in a download dir (defined by user), and named by $(1)"


# Download dir
DOWNLOAD="/c/Users/chunq/Downloads"

# moves all pdf to folder and move it here to pwd
echo "You re at $(pwd)"

# listing files downloaded
echo "You have these files at download dir:"
ls ${DOWNLOAD}

# make the directory first
if [ -d ${1} ]
then
	mv ${DOWNLOAD}/*.pdf $(pwd)/${1}
	echo "Files moved to ${1}"
else
	mkdir -p ${1}
	echo "${1} did not exists, created now"
	mv ${DOWNLOAD}/*.pdf $(pwd)/${1}
	echo "Files sucessfully moved in ${1}"
fi
