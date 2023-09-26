function cd_hook() {
    # The normal cd
    if [ $# == 0 ]; then
        cd
    else
        cd "$1" 
	fi
    # If the dir contains bashrc, launch the sub shell and load it
    if [ -f ".bashrc" ] && [ "$(pwd)" != "$(getent passwd $USER | awk -F ':' '{print $6}')" ]; then
        pushd .  > /dev/null
        bash --init-file <(cat /etc/profile ~/.bashrc .bashrc)
    fi
}

alias cd='cd_hook'
