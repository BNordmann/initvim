call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'sainnhe/everforest'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" nvim-cmp
lua require("config_nvim_cmp")

" telescope
inoremap <c-p> <cmd>Telescope find_files<cr>
inoremap <c-o> <cmd>Telescope oldfiles<cr>
nnoremap <c-p> <cmd>Telescope find_files<cr>
nnoremap <c-o> <cmd>Telescope oldfiles<cr>

lua require("config_telescope")

" treesitter

lua require("config_treesitter")

" nerdtree
map <silent> <C-n> :NERDTreeToggle<CR>

" jedi-vim:
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:jedi#show_call_signatures = "2"

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

" vim-markdown
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 3
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

" VIM-config
set number relativenumber
set nu rnu

" use ctrl+Enter as "make" command
nnoremap <C-CR> :make!<CR>
autocmd FileType markdown nnoremap <buffer> <C-CR> :MarkdownPreview<CR>
autocmd FileType nerdtree nnoremap <buffer> <C-CR> :NERDTreeCWD<CR>

" Enable spell-check in Markdown and Git commit
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" recognize markdown files as markdown
autocmd BufNewFile,BufFilePre,BufRead \c*.md set filetype=markdown

" make python scripts with python
autocmd Filetype python setlocal makeprg=python3\ %

" Set new empty buffers to markdown filetype
autocmd BufEnter {} set filetype=markdown

let mapleader = " "

" disable autofolding when a file is opened
set nofoldenable

" don't show current mode in command line (this is done by airline)
set noshowmode

" Tab as 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

" 80 char line
set colorcolumn=80,100

" allow incrementing/decrementing alphabetical characters
set nrformats+=alpha

" key maps for increasing split size
nnoremap <silent> <C-w>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <C-w>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" colorscheme
let g:everforest_better_performance = 1
colorscheme everforest

" Navigate splits with ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
