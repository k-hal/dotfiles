dotfiles
========

This repository is now structured as a [chezmoi](https://www.chezmoi.io/) source directory.

## Apply with chezmoi

```sh
chezmoi init https://github.com/k-hal/dotfiles.git
chezmoi apply
```

If you already have a local clone, you can use it directly:

```sh
chezmoi init --source=/path/to/dotfiles
chezmoi apply
```

## Notes

- Dotfiles and dot-directories use chezmoi's `dot_` naming.
- `private_dot_ssh` is used so `~/.ssh` is created with private permissions.
- `README.md` and `LICENSE.md` are kept in the repository and ignored by chezmoi via `.chezmoiignore`.
