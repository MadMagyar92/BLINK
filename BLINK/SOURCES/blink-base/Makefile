shell=/bin/bash

clean:
	rm -fr "${BLINK_SOURCES}/blink-base/RPMS"/*
	rm -fr "${BLINK_SOURCES}/blink-base/BUILDROOT"
	rm -fr "${BLINK_SOURCES}/blink-base/SPECS"

rpm:
	rpmbuild --define '_topdir ${BLINK_SOURCES}/blink-base' --define 'rpmdir ${BLINK_SOURCES}/blink-base' --define '_builddir ${BLINK_SOURCES}/blink-base' -bb -v "${BLINK_SOURCES}/blink-base/SPEC/blink-base.spec"

rpmclean:

all: clean rpm


