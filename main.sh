function cd_hook() {
	if [ -f "$1/.bashrc" ]; then
		bash --init-file "$1/.bashrc"
		pushd . >/dev/null
		cd "$1"
	else
		cd "$1"
	fi
}

function exit_hook() {
	if [ "$PWD" != "$(dirs -l +0)" ]; then
		popd >/dev/null
		cd "$(dirs -l +0)"
		exit
	else
		exit
	fi
}

alias cd='cd_hook'
alias exit='exit_hook'
