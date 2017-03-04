#!/usr/bin/env sh

# Export default environment values
if [ -z "$HEREIS_PLACES_FILE" ] ; then
	export HEREIS_PLACES_FILE=~/.hereis_places
fi

# Register directory path to file, and Easily cd there
if [ -f "$HEREIS_PLACES_FILE" ] ; then
	source "$HEREIS_PLACES_FILE"
fi

# Check alias prefix
if [ -z "$HEREIS_ALIAS_PREFIX" ] ; then
	export HEREIS_ALIAS_PREFIX='place_'
fi
