shell=/bin/bash
PROJECT_DIR=$(shell pwd)
PROJECT_NAME="$(shell basename ${PROJECT_DIR})"
SOURCES_DIR="${PROJECT_DIR}/SOURCES"

clean:
	rm -fr "${PROJECT_DIR}/RPMS"/*
	rm -fr "${PROJECT_DIR}/BUILDROOT"
	rm -fr "${PROJECT_DIR}/SPECS"

rpm:
	rpmbuild \
		--define '_topdir ${PROJECT_DIR}' \
		--define 'rpmdir ${PROJECT_DIR}' \
		--define '_builddir ${PROJECT_DIR}' \
		-bb -v "${PROJECT_DIR}/SPEC/${PROJECT_NAME}.spec"

rpmclean: clean

all: clean rpm

install:

