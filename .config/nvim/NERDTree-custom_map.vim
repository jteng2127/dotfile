if exists("g:loaded_nerdtree_custom_maps")
  finish
endif
let g:loaded_nerdtree_custom_maps = 1

call NERDTreeAddKeyMap({
  \ 'scope': 'FileNode',
  \ 'key': 'h',
  \ 'callback': 'NERDTreeCustom_FileSaveTmpPath',
  \ 'quickhelpText': 'save current node path to ~/.tmppath' })

call NERDTreeAddKeyMap({
  \ 'scope': 'DirNode',
  \ 'key': 'h',
  \ 'callback': 'NERDTreeCustom_DirSaveTmpPath',
  \ 'quickhelpText': 'save current node path to ~/.tmppath' })

function! NERDTreeCustom_FileSaveTmpPath(filenode)
  redir! > ~/.tmppath | echo a:filenode.parent.path.str() | redir END
endfunction

function! NERDTreeCustom_DirSaveTmpPath(dirnode)
  redir! > ~/.tmppath | echo a:dirnode.path.str() | redir END
endfunction
