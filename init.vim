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

" VIM-config
set number relativenumber
set nu rnu

let mapleader = " "
