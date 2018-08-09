# Max - Oh-My-Zsh Theme

autoload -Uz vcs_info
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr "%F{003} ●"   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr "%F{046} ✚"  # display this when there are staged changes
zstyle ':vcs_info:*' actionformats \
    '%F{5}%F{5}%F{2}%b%F{3}|%F{1}%a%c%u%F{5}%f '
zstyle ':vcs_info:*' formats       \
    '%F{red} %F{reset_color}on %F{5}%F{5}%F{2}%b%c%u%F{5}%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git cvs svn

theme_precmd () {
    vcs_info
}

setopt prompt_subst
PROMPT='
%{$fg_bold[red]%}${PWD/#$HOME/~}%{$reset_color%} ${vcs_info_msg_0_}
🌊 '

autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd
