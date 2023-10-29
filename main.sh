function cd() {
    builtin cd "$@"
    if [[ "$PWD" == "$OLDPWD"* ]]; then
        if [[ -f "$PWD/.bashrc" ]]; then
            exec bash --rcfile <(cat ~/.bashrc "$PWD/.bashrc")
        fi
    else
        exec bash --rcfile <(cat ~/.bashrc)
    fi
}
