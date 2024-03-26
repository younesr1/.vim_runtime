
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-rhubarb'
Plug 'Valloric/YouCompleteMe', { 'commit':'d98f896', 'do': './install.py --all' }
Plug 'bfrg/vim-cpp-modern'
call plug#end()

""""""""""""""""""""""""""""""
" => fzf
""""""""""""""""""""""""""""""
" Files alias to ,p
map <leader>p :Files<cr>

" Ag with ,F search for word you specify
map <leader>F :Ag<Space>

" Ag with ,f search for currently highlighted word 
map <leader>f :Ag <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""
 " => misc
 """"""""""""""""""""""""""""""
 " ,r, is tabprevious
 map <leader>r<leader> :tabprevious<cr>

" Enable line numbers
set number

" go to defintion with gd
nnoremap gd <C-]>

" Look for tags in current dir or up a folder until we get to /
set tags=./tags;,tags;

""""""""""""""""""""""""""""""
 " => YCM
 """"""""""""""""""""""""""""""
 " Disable red >> markers indicating compilation error. remove when clangd works
let g:ycm_enable_diagnostic_signs = 0

