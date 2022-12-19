call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'mg979/vim-visual-multi'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'phaazon/hop.nvim', { 'do': ':lua require''hop''.setup()' }
Plug 'github/copilot.vim'

""" future study
" Plug 'kyazdani42/nvim-web-devicons' " with barbar
" Plug 'ervandew/supertab'
" Plug 'romgrk/barbar.nvim' 
" Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'sindrets/diffview.nvim'

""" not used
" Plug 'jiangmiao/auto-pairs'
" Plug 'glepnir/dashboard-nvim'
" Plug 'tc50cal/vim-terminal'

call plug#end()
