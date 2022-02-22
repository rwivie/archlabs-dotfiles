# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/ron/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
# End of lines configured by zsh-newuser-install

#=== base16-shell
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

#=== prompt
#setprompt() {
#  setopt prompt_subst

#  if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then 
#    p_host='%F{yellow}%M%f'
#  else
#    p_host='%F{green}%M%f'
#  fi

#  PS1=${(j::Q)${(Z:Cn:):-$'
#    %F{cyan}[%f
#    %(!.%F{red}%n%f.%F{green}%n%f)
#    %F{cyan}@%f
#    ${p_host}
#    %F{cyan}][%f
#    %F{blue}%~%f
#    %F{cyan}]%f
#    %(!.%F{red}%#%f.%F{green}%#%f)
#    " "
#  '}}

#  PS2=$'%_>'
#  RPROMPT=$'${vcs_info_msg_0_}'
#}
#setprompt

#=== Test and then source alias definitions.
if [ -f ~/.aliases ]; then
        source ~/.aliases
else
        print "Note: ~.aliases is unavailable."
fi

#=== so users can see
umask 0002

#=== command not found
source /usr/share/doc/pkgfile/command-not-found.zsh

#=== for sticky-note
if [[ $STICKY_NOTE ]]; then
  PS1=
  cat "$HOME/tmp/sticky-note"
  return
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
