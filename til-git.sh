#!/usr/bin/env sh
function __usage {
	echo "usage: til-git <GIT COMMAND>"
}

function __init {
	mkdir -p $HOME/.til
}

function _git() {
	__init
	cd $HOME/.til/ && git "$@" || echo "fatal: git command status failed"
}

[[ -z "$1" ]] && echo "fatal: pass a git command to run in TILs directory" && __usage && exit 1
_git "$@"
