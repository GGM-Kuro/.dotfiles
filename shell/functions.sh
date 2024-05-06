function cdd() {
	cd "$(ls -d -- */ | fzf)" || echo "Invalid directory"
}

function j() {
	fname=$(declare -f -F _z)

	[ -n "$fname" ] || source "$DOTLY_PATH/modules/z/z.sh"

	_z "$1"
}

function recent_dirs() {
	# This script depends on pushd. It works better with autopush enabled in ZSH
	escaped_home=$(echo $HOME | sed 's/\//\\\//g')
	selected=$(dirs -p | sort -u | fzf)

	cd "$(echo "$selected" | sed "s/\~/$escaped_home/")" || echo "Invalid directory"
}


# QTILE
function cleartarget(){
    echo '' >! $DOTFILES_PATH/scripts/kuro/target
}

function settarget(){
    ip_address=$1
    machine_name=$2
    echo "$ip_address $machine_name" >! $DOTFILES_PATH/scripts/kuro/target
}


