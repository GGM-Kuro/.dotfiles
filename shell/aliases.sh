# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lsa='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='bat'
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias c.='(code $PWD &>/dev/null &)'
alias o.='open .'
alias up='dot package update_all'
alias pacman-npm= 'sudo pacman --overwrite "*" -S npm'
alias pdf="mupdf"
alias pj='cd $PROJECT_PATHS/$(dot kuro pj)'
alias ff='yazi'

# Os
alias rs='dot screens reload_wallpaper'
alias msi='dot screens msi && feh --bg-fill /home/kuro/Desktop/kuro/Images/fondo.png'
alias zs='zellij attach $(zellij list-sessions -s | fzf)'
alias zq='zellij kill-session $(zellij list-sessions -s | fzf)'
alias zqa='zellij kill-all-sessions'
