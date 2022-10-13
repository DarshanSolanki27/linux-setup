PROMPT=$'
%{$fg_bold[green]%}%n@%m %{$reset_color%}%{$fg[blue]%}[%~]%{$reset_color%} $(git_prompt_info)
%{$fg[yellow]%}%D{[%H:%M:%S]} %{$fg[blue]%}%(!.#.$)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[magenta]%}*%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#Cosmos themes
