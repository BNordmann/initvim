call plug#begin('~/.config/nvim/autoload')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'preservim/nerdtree'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown' }
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

" Navigate splits with ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" deoplete:
" Use deoplete.
let g:deoplete#enable_at_startup = 1
inoremap <expr><c-j> pumvisible() ? "\<c-n>" : "\<c-j>"
inoremap <expr><c-k> pumvisible() ? "\<c-p>" : "\<c-k>"
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" nerdtree:
map <silent> <C-n> :NERDTreeToggle<CR>

" jedi-vim:
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" markdown-preview
" 1 means nvim will open preview when entering a markdown buffer
let g:mkdp_auto_start = 0
" 1 means nvim will automatically close preview when opening non markdown
" buffer
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_filetpyes = ['markdown']
let g:mkdp_themee = 'dark'

" recognize markdown files as markdown
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" VIM-config
set number relativenumber
set nu rnu

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let mapleader = " "

" Tab as 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

" 80 char line
set colorcolumn=80
