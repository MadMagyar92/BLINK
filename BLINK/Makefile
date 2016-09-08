shell=/bin/bash

PROJECT_DIR=$(shell pwd)

clean:
	rm -fr "${PROJECT_DIR}/RPMS"/*
	rm -fr "${PROJECT_DIR}/BUILDROOT"
	rm -fr "${PROJECT_DIR}/SPECS"

rpm:
	(cd ${PROJECT_DIR}/blink-base ; make)

rpmclean:
	(cd ${PROJECT_DIR}/blink-base ; make clean)

all: clean rpmclean rpm
