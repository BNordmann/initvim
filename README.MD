# Birgers init.vim

# Dependencies

## Plug
Install [Plug](https://github.com/junegunn/vim-plug)
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Then in Neovim: ```:PlugInstall```

## Pyright

The installation uses Pyright as LSP for autocompletion

```cmd
npm install -g pyright
```

## Treesitter

Treesitter requires...

- a working C compiler in the path to compile the parsers. (zig is standalone)
- nodejs in path to generate the grammar for latex
- tree-sitter cli to generate the grammar for latex

## ripgrep

[ripgrep](https://github.com/BurntSushi/ripgrep) is required to fully utilize
telescope.

## Troubleshooting

### Clipboard not working on Linux

```
sudo apt install xclip
```
