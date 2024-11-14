export DOTFILES_PATH="/home/kuro/.dotfiles"
export THEME="kuro"
source "$DOTFILES_PATH/shell/init.sh"
source "$DOTFILES_PATH/shell/bash/themes/${THEME}.sh"

EXPORTED_PATH=$(
   IFS=":"
   echo "${path[*]}"
 )

export PATH="$PATH:$EXPORTED_PATH"

if [ -n "$(ls -A "$DOTFILES_PATH/shell/bash/completions/")" ]; then
  for bash_file in "$DOTFILES_PATH"/shell/bash/completions/_*; do
    source "$bash_file"
  done
fi

zsh
