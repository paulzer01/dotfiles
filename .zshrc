. $HOME/.asdf/asdf.sh

# hook up direnv
eval "$(direnv hook zsh)"

# -----------------------------------------------------------
# ADD GIT BRANCH INFO TO PROMPT                             #
# -----------------------------------------------------------
# load version control info
autoload -Uz vcs_info
precmd() { vcs_info }

# set up the prompt with git branch name
setopt PROMPT_SUBST

# regex to match git branch name
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%f'

# set up the prompt with git branch name
PROMPT='%{$fg_bold[green]%}%n@%{$reset_color%}%{$fg_bold[blue]%}%~%{$reset_color%}%{$reset_color%} $ '
RPROMPT=\$vcs_info_msg_0_