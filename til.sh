#!/usr/bin/env sh
function _til {
	[[ -d $HOME/.til ]] || (echo "info: no tils yet!"; return 1)
	tils="$(ls -1 $HOME/.til)"
	[[ -z $tils ]] && echo "info: no tils found"

	if [[ -z $EDITOR ]]; then
		cd $HOME/.til && fzf --height=100% --preview 'bat --color=always {}' --preview-window=down:90%
	else
		til=$(cd $HOME/.til && fzf --height=100% --preview 'bat --color=always {}' --preview-window=down:90%)
		if [[ ! -z $til ]]; then
			$EDITOR $HOME/.til/$til
			cd $HOME/.til && test -z "$(git status --porcelain)" || \
				(git add $til && git commit -m "auto: updated $til")
		fi
	fi
}

_til
