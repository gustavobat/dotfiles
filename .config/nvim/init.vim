"
" ~/.config/nvim/init.vim
" Gustavo Batistela, 21/04/2020
"

" File encoding
set encoding=utf-8
set fileencoding=utf-8

" Hybrid line numbers
set number relativenumber
set nu rnu

" File type detection
filetype plugin indent on

" Default indenting options
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" This makes exiting insert mode easier
inoremap jk <esc>

" Installation of plug ins
call plug#begin()

" Auto completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" Snippets
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsListSnippets= '<F2>'
let g:UltiSnipsEditSplit="vertical"
Plug 'honza/vim-snippets'

" LaTeX editing
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_compiler_latexmk = {'build_dir': './build'}

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" Color themes
Plug 'sts10/vim-pink-moon'
Plug 'chriskempson/base16-vim'

" File tree
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize=20
map <C-n> :NERDTreeToggle<CR>

call plug#end()

call deoplete#custom#var('omni', 'input_patterns', {
  \ 'tex': g:vimtex#re#deoplete
  \})

" Color theme
set termguicolors
colorscheme pink-moon

" Spell check
setlocal spell
set spelllang=pt_br,en_gb
" Key binding to perform spelling fixes on current line
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

