# sh-hereis
This is cd utility for bash, zsh and another shells.

![example](example.gif)


## Install
Example for use zplug.

.zshrc
```zsh
zplug 'aiya000/sh-hereis', use:'{init.sh, hereis.sh, place.sh, edit-places.sh, reload-places.sh}'
```


## Examples for using
```sh
$ echo $HOME
    #=> /home/aiya000
$ cd ~ && hereis home-homu
    #=> hereis add an alias -> alias place_home-homu='cd "/home/aiya000"'
    #       and
    #   add shell variable  -> place_home_homu="/home/aiya000"
    #
    #   These was added to $HEREIS_PLACES_FILE

$ export HEREIS_ALIAS_PREFIX='p_'
$ cd ~/foo/bar && hereis foo-bar
    #=> hereis add an alias -> alias p_foo-bar='cd "/home/aiya000/foo/bar"'
    #                                ^^changed
    #      and
    #=> add shell variable  -> p_foo_bar="/home/aiya000/foo/bar"
```


## Configurations
* Shell variables
    + `$HEREIS_PLACES_FILE`
        - default value: ~/.hereis_places
    + `$HEREIS_ALIAS_PREFIX`
        - default value: place_

`default value` was defined automatically (if you don't defined it)
