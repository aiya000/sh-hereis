#!/usr/bin/env sh

function edit-places () {
	if [ ! -f "$HEREIS_PLACES_FILE" ] ; then
		echo "${HEREIS_PLACES_FILE} was not found" >&1
		echo 'Please check $HEREIS_PLACES_FILE' >&1
		return 1
	fi

	# Edit registered aliases
	"$EDITOR" "$HEREIS_PLACES_FILE" && reload-places
}
