zimfw() { source /home/kuro/.dotfiles/shell/zsh/.zim/zimfw.zsh "${@}" }
zmodule() { source /home/kuro/.dotfiles/shell/zsh/.zim/zimfw.zsh "${@}" }
fpath=(/home/kuro/.dotfiles/shell/zsh/.zim/modules/git-info/functions ${fpath})
autoload -Uz -- coalesce git-action git-info
source /home/kuro/.dotfiles/shell/zsh/.zim/modules/input/init.zsh
source /home/kuro/.dotfiles/shell/zsh/.zim/modules/completion/init.zsh
source /home/kuro/.dotfiles/shell/zsh/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/kuro/.dotfiles/shell/zsh/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/kuro/.dotfiles/shell/zsh/.zim/modules/powerlevel10k/powerlevel10k.zsh-theme
