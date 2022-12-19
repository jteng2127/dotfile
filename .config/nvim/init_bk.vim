" autocmd BufWritePost init.vim source %
set number
set relativenumber
set mouse=a
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set nowrap
set smartcase
set scroll=10
set scrolloff=4
set sidescroll=10

" ==================== vim-plug ====================

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'

call plug#end()

" ==================== NERDTree ====================

function! AllTabNERDTreeToggleVCS()
  let current_tab = tabpagenr()
  if g:NERDTree.IsOpen()
    tabdo NERDTreeClose
  else
    tabdo NERDTreeVCS
  endif
  execute 'tabnext' current_tab
endfunction

nnoremap <C-t><C-t> :call AllTabNERDTreeToggleVCS()<CR>
" nnoremap <C-t><C-t> :NERDTreeToggleVCS<CR>
nnoremap <C-t><C-f> :NERDTreeFind<CR>

" Start NERDTree. If no file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Move current buffer to previous buffer while switching tab
autocmd TabEnter * if bufname('%') =~ 'NERD_tree_\d\+' | wincmd p | endif
autocmd Tableave * if bufname('%') =~ 'NERD_tree_\d\+' | wincmd p | endif

" ==================================================

nnoremap j gj
nnoremap k gk

