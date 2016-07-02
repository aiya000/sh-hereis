#!/usr/bin/env sh

function reload-places () {
	if [ -z "$HEREIS_PLACES_FILE" ] ; then
		echo 'Please set $HEREIS_PLACES_FILE' >&2
		return 1
	fi

	# Reload registered names and paths
	source ${HEREIS_PLACES_FILE} && echo '> reloaded places'
}
