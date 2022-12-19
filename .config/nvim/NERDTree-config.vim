nnoremap <leader>tt :NERDTreeToggleVCS<CR>
nnoremap <leader>tf :NERDTreeFind<CR>
nnoremap <silent> <leader>th :redir! > ~/.tmppath<CR>:echo expand('%:p:h')<CR>:redir END<CR>

let NERDTreeShowBookmarks=1

" ==================== autocmd ====================

" Start NERDTree. If no file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Move current buffer to previous buffer while switching tab
autocmd TabEnter * if bufname('%') =~ 'NERD_tree_\d\+' | wincmd p | endif
autocmd Tableave * if bufname('%') =~ 'NERD_tree_\d\+' | wincmd p | endif

" ========================================

autocmd VimEnter * source ~/.config/nvim/NERDTree-custom_map.vim
