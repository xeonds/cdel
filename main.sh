# If the dir contains bashrc, launch the sub shell and load it
function cd_hook() {
    cd "$1"; if [ -f ".bashrc" ] && [ "$(pwd)" != "$(getent passwd $USER | awk -F ':' '{print $6}')" ]; then
        bash --init-file <(cat /etc/profile ~/.bashrc .bashrc)
	fi
}

alias cd='cd_hook'
