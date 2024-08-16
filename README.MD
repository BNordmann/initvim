# Birger's init.vim

## Plug
Install [Plug](https://github.com/junegunn/vim-plug)
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Then in Neovim: ```:PlugInstall```

## Treesitter

Treesitter requires...

- a working C compiler in the path to compile the parsers.
- nodejs in path to generate the grammar for latex
- tree-sitter cli to generate the grammar for latex

