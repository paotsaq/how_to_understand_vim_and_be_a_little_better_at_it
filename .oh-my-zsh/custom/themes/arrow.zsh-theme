if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi

# current directory, two levels deep
directory() {
   echo "%2~"
}

PROMPT='%{$fg[$NCOLOR]%}%c ➤ %{$reset_color%}'
RPROMPT='%{$fg[$NCOLOR]%} $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# See https://geoff.greer.fm/lscolors/
export LSCOLORS="gxfxcxdxbxegedabagacad"
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

PROMPT='%{$fg_bold[white]%}$USER@%{$fg[yellow]%}%m%}%{$fg_bold[cyan]%} $(directory) ➤ %{$reset_color%}'
