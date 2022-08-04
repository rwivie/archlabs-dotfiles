#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;34m\]\u@\h'; fi)\[\033[1;37m\])\$([[ \$? != 0 ]] && echo \"\342\224\200(\[\033[0;31m\]\342\234\227\[\033[1;37m\])\")\342\224\200(\[\033[1;34m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -sh | head -n1 | sed 's/total //')b\[\033[1;37m\])\342\224\200> \[\033[0m\]"

if [ -f ~/.aliases ]; then
        source ~/.aliases
else
        print "Note: ~.aliases is unavailable."
fi

#====
umask 0002

#==== base16-shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

#==== command not found
source /usr/share/doc/pkgfile/command-not-found.bash

#==== auto cd
shopt -s autocd

#==== exports
#export EDITOR="mousepad"
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'mousepad'; else echo 'nano'; fi)"
export BROWSER="firefox"

#==== source files
#xrdb merge ~/.Xresources

#==== ranger just use user config
#export RANGER_LOAD_DEFAULT_RC=false

# XDG - set defaults as they may not be set
# See https://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
# and https://wiki.archlinux.org/index.php/XDG_Base_Directory_support
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

if [ ! -w ${XDG_RUNTIME_DIR:="/run/user/$UID"} ]; then
    echo "\$XDG_RUNTIME_DIR ($XDG_RUNTIME_DIR) not writable. Unsetting." >&2
    unset XDG_RUNTIME_DIR
else
    export XDG_RUNTIME_DIR
fi

if [[ $STICKY_NOTE ]]; then
  PS1=
  cat "$HOME/tmp/sticky-note"
  return
fi

