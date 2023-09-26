# CDEL - CD with Environment Load

This is a utility likes `direnv`, but hooks `cd` command to load environment whlie enter a directory.

## Usage

```bash
cat main.sh >> ~/.bashrc && source ~/.bashrc
```

When you enter a dir with `.bashrc` inside, your bash will start a subshell with env configured in the `.bashrc`.

When leave the path, the subshell will destructed.

## License

MIT License
