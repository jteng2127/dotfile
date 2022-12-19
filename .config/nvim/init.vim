" autocmd BufWritePost init.vim source %
set number
set relativenumber
set mouse=a
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
let g:python_recommended_style = 0
set nowrap
set smartcase
" set scroll=10
set scrolloff=4
set sidescroll=10
set ignorecase

colorscheme desert

nnoremap j gj
nnoremap k gk

inoremap jk <C-c>
tnoremap jk <C-c>
inoremap JK <C-c>
tnoremap JK <C-c>
inoremap Jk <C-c>
tnoremap Jk <C-c>
inoremap jK <C-c>
tnoremap jK <C-c>
inoremap kj <C-c>
tnoremap kj <C-c>
inoremap KJ <C-c>
tnoremap KJ <C-c>
inoremap kJ <C-c>
tnoremap kJ <C-c>
inoremap Kj <C-c>
tnoremap Kj <C-c>


nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <silent> <ESC> :noh<CR>
let mapleader = "\<space>"
set timeoutlen=400
set updatetime=100 " faster completion / for GitGutter

" <leader>gi compile and run c++ file with input
nnoremap <silent> <leader>gi :w<CR>:silent exec "!bash ~/bin/tmux_newpane_runcpp.sh " .. expand('%:p') .. " in"<CR>
" <leader>gc compile and run c++ file

" system clipboard
" set clipboard+=unnamedplus
let g:clipboard = {
\   'name': 'win32yank',
\   'copy': {
\     '*': 'win32yank.exe -i --crlf',
\   },
\   'paste': {
\     '*': 'win32yank.exe -o --lf',
\   },
\   'cache_enabled': 1
\ }
" let g:loaded_clipboard_provider = 0

source ~/.config/nvim/templates.vim
source ~/.config/nvim/plugin.vim
source ~/.config/nvim/plugin.vim
source ~/.config/nvim/NERDTree-config.vim " <leader>t ...
source ~/.config/nvim/coc-config.vim
source ~/.config/nvim/startify-config.vim
source ~/.config/nvim/hop-config.vim " <leader>h ...
source ~/.config/nvim/fzf-config.vim " <leader>f ...

" =================== supertab(not used) =====================

" let g:SuperTabDefaultCompletionType = "<c-n>"

" ================== auto-pairs(not used) ====================

" autocmd FileType ejs let b:AutoPairs = AutoPairsDefine({'<%': '%>', '<!--': '-->'})
" autocmd FileType html let b:AutoPairs = AutoPairsDefine({'<!--': '-->'})

