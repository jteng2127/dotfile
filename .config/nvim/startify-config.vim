let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'
let g:startify_session_persistence = 1
let g:startify_session_before_save = [ 'silent! tabdo NERDTreeClose' ]
let g:startify_lists = [
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
  \ { 'type': 'files',     'header': ['   MRU']            },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]
  let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
