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
alias .f='cd $DOTFILES_PATH'

# Git
alias ga="git add"
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
alias pacman-npm= 'pacman --overwrite "*" -S npm'
alias pdf="mupdf"
alias pj='cd $PROJECT_PATHS/$(dot kuro pj)'
alias ff='yazi'

# Os
alias rs='dot screens reload_wallpaper'
alias msi='dot screens msi'
alias main='dot screens main'
alias za='zellij attach $(zellij list-sessions -s | fzf)'
alias zs='zellij list-sessions '
alias zk="zellij kill-session \$(zellij list-sessions | awk '!/EXITED/ {print \$1}' | sed -r 's/\x1B\[[0-9;]*[mGK]//g' | fzf)"
alias zka='zellij kill-all-sessions'
alias zd="zellij delete-session \$(zellij list-sessions | awk '/EXITED/ {print \$1}' | sed -r 's/\x1B\[[0-9;]*[mGK]//g' | fzf)"
alias zda='zellij delete-all-sessions'

# nvim
alias v='nvim'
alias vim='nvim'
alias vi='nvim'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias zshrc='nvim ~/.zshrc'
alias vpicom= 'nvim ~/.config/picom/picom.conf'
