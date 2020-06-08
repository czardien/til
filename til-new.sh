#!/usr/bin/env sh
function __usage {
	echo "usage: til-new <TITLE>"
}

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
	echo "" >> $filepath
	echo "<!-- Add tags below -->" >> $filepath
	echo "<!-- tag1,tag2 -->" >> $filepath

	[[ -z $EDITOR ]] || $EDITOR $filepath
	cd $HOME/.til/ && git add $basename && git commit -m "auto: added $sl"
}

[[ -z "$1" ]] && echo "fatal: title parameter empty" && __usage && exit 1
_new "$@"
