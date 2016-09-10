shell=/bin/bash
PROJECT_DIR="$(shell pwd)"
SOURCES_DIR="${PROJECT_DIR}/SOURCES"
SOURCES="$(shell find ${SOURCES_DIR} -mindepth 1 -maxdepth 1)"

### MAKE COMMANDS	##################
clean:
	rm -fr "${PROJECT_DIR}/RPMS"/*
	rm -fr "${PROJECT_DIR}/BUILDROOT"
	rm -fr "${PROJECT_DIR}/SPECS"

rpm:
	for d in ${SOURCES} ; do \
		(cd $$d ; make rpm) ; \
		(cp -r $$d/RPMS/* ${PROJECT_DIR}/RPMS ) ; \
	done

rpmclean:
	for d in ${SOURCES} ; do \
		(cd $$d ; make rpmclean) ; \
	done

all: clean rpmclean rpm

