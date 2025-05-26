# dotfiles
Configured for use with [chezmoi](https://github.com/twpayne/chezmoi)

## Installation

### Quick install

```sh
sh -c "$(wget -fsLS  get.chezmoi.ioi/lb)" -- init --apply cubrink
```

### Slightly more manual install

```sh
sh -c "$(wget -qO- get.chezmoi.io/lb)"
chezmoi init git@github.com:cubrink/dotfiles.git
chezmoi apply
```

## TODO

Look into using chezmoi scripts

See this as an [example](https://github.com/alexvy86/dotfiles/tree/main/linux/.chezmoiscripts)
