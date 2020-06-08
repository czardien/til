#!/usr/bin/env sh
function __usage {
	echo ""
	echo "usage: til-rm <name>"
	echo "   or: til-rm --fzf"
	echo ""
}

function _rm() {
	if [[ -z "$@" ]]
	then
		echo "error: no TIL specified"
		__usage && return 1
	else
		if [ $1 = "--fzf" ]
		then
			til=$(ls -1 $HOME/.til/ | fzf)
			rm $HOME/.til/$til && echo "info: $til deleted"
			cd $HOME/.til/ && git rm $til && git commit -m "auto: removed $til"
		else
			rm $HOME/.til/$1 && echo "info: $1 deleted" && return 0
			echo "error: til $1 not found" && return 1
		fi
	fi
}

_rm "$@"
