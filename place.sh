#!/usr/bin/env sh

function place () {
	if [ ! -f "$HEREIS_PLACES_FILE" ] ; then
		echo "${HEREIS_PLACES_FILE} was not found" >&1
		echo 'Please check $HEREIS_PLACES_FILE' >&1
		return 1
	fi

	# View registered name and paths
	cat "$HEREIS_PLACES_FILE" | awk -F'[= ]' '{print $ 2 \":\t\" $ 4}' | sed s/\'// | sort
}
