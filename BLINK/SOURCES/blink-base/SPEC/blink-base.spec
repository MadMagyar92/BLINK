Name:				blink-base
Version:			1.0.0.0
Release:			1%{?dist}
Summary:			Base component for BLINK flavor.

License:			None
URL:				https;//github.com/MadMagyar92/BLINK
Source:			blink-base

%description
The blink-base component contains system level source code for running and managing the BLINK project. Ex: logging, file management, etc.

%prep
exit 0

%build
exit 0

%check
#make check

%install
rm -rf ${BLINK_SOURCES}/blink-base/RPMS/*
make install DESTDIR=${BLINK_SOURCES}/blink-base/RPMS

%clean
rm -rf ${RPM_BUILD_ROOT}

%files
%defattr(-,root,root,-)
%doc

%changelog
