# CDEL - CD with Environment Loader

This is a utility likes `direnv`, but hooks `cd` command to load environment whlie enter a directory.

## Usage

```bash
cat main.sh >> ~/.bashrc && source ~/.bashrc
```

When you enter a dir with `.bashrc` inside, your bash will ~~start a subshell~~ exec a new shell with env configured in the `.bashrc` and `~/.bashrc`.

When leave the path, the ~~subshell will destructed~~ shell will exec a new shell with only `~/.bashrc` loaded.

## License

MIT License
