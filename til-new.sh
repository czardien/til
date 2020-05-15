#!/usr/bin/env sh
function __slugify {
	echo "$@" | iconv -t ascii//TRANSLIT | sed -r s/[^a-zA-Z0-9]+/-/g | sed -r s/^-+\|-+$//g | tr A-Z a-z
}

function __init {
	mkdir -p $HOME/.til
}

function __get_id {
	echo $(date +%Y%m%d%H%M)
}

function _new() {
	__init

	[[ -z $EDITOR ]] && echo "warning: set your $EDITOR environment variable"
	sl=$(__slugify "$@")
	id=$(__get_id)
	basename="$id-$sl.md"
	filepath=$HOME/.til/$basename

	[[ -f $filepath ]] && (echo "fatal: $filepath already exists, very unlucky :broken-heart:"; return 1)
	echo "# $@" > $filepath
	echo "" >> $filepath
	echo "This is happening!" >> $filepath

	[[ -z $EDITOR ]] || $EDITOR $filepath
}

_new "$@"
