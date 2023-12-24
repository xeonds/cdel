function cd() {
    builtin cd "$@"
    if [[ -f "$PWD/.bashrc" ]]; then
        exec bash --rcfile <(cat ~/.bashrc "$PWD/.bashrc")
    else
        exec bash --rcfile <(cat ~/.bashrc)
    fi
}
