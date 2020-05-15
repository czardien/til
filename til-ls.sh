#!/usr/bin/env sh
function _ls {
	[[ -d $HOME/.til ]] || (echo "info: no tils yet!"; return 1)
	tils="$(ls -1 $HOME/.til)"
	[[ -z $tils ]] && echo "info: no tils found" || echo -e "$tils"
}

_ls
