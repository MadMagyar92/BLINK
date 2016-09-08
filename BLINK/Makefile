shell=/bin/bash

clean:
	rm -fr "${BLINK_ROOT}/RPMS"/*
	rm -fr "${BLINK_ROOT}/BUILDROOT"
	rm -fr "${BLINK_ROOT}/SPECS"

rpm:
	(cd ${BLINK_SOURCES}/blink-base ; make)

rpmclean:
	(cd ${BLINK_SOURCES}/blink-base ; make clean)

all: clean rpmclean rpm


