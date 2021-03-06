# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias make='make -s'

# Development aliases and functions
BLINK_ROOT="/home/blink/BLINK"
BLINK_SOURCES="${BLINK_ROOT}/SOURCES"

export BLINK_ROOT
export BLINK_SOURCES

#alias blink='cd ${BLINK_ROOT}'
#alias blink_src='cd ${BLINK_SOURCES}'

function dev_rpm_make() {
	local source_rpm="${BLINK_SOURCES}/blink-base"
	
	if [ ! -z "$1" ]; then
		source_rpm="${BLINK_SOURCES}/$1"
	else
		return
	fi

	mkdir -p "${source_rpm}"/{BUILD,RPMS,SOURCES,SPEC,SRPMS,tmp}
	touch "${source_rpm}/SPEC/$1.spec"
}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
