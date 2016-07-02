#!/usr/bin/env sh

function hereis () {
	# Define $alias_body and $var_bodywith espace
	place_name="`echo $1`"
	place_path="\"`pwd`\""
	alias_name="${HEREIS_ALIAS_PREFIX}${place_name}"
	alias_body="${alias_name}='cd ${place_path}'"
	var_name="`echo ${HEREIS_ALIAS_PREFIX}${place_name} | sed s/-/_/g`"
	var_body="${var_name}=${place_path}"

	echo "alias ${alias_body}" >> "$HEREIS_PLACES_FILE"
	echo "${var_body}"         >> "$HEREIS_PLACES_FILE"
	echo "here is '${1}'"

	# Reload result
	reload-places
}
