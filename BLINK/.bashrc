# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Development aliases and functions
BLINK_ROOT="/root/BLINK"
BLINK_RPMS="/${BLINK_ROOT}/RPMS"

function dev_rpm_make() {
	if [ ! -z "$1" ]; then
		'mkdir -p ${BLINK_RPMS}/$1/{BUILD,RPMS,SOURCES,SPECS,SRPMS,tmp}'
	else
		echo "Require rpm name"
	fi
}

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
