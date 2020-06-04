#!/usr/bin/env sh
function _til {
	[[ -d $HOME/.til ]] || (echo "info: no tils yet!"; return 1)
	tils="$(ls -1 $HOME/.til)"
	[[ -z $tils ]] && echo "info: no tils found" || echo -e "$tils"

	cd $HOME/.til && fzf --height=100% --preview 'bat --color=always {}' --preview-window=down:90%
}

_til
