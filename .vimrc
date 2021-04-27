syntax on
filetype plugin on
filetype plugin indent on
set smartindent
set hlsearch

" toggle hybrid line numbers " 
:set nu! rnu!"

" permanent history, because how come not " 
set undodir=~/.vim/undodir
set undofile

" misc info "
set showcmd
set laststatus=2
set statusline+=%F

" To fold, use 'zc' on a line "
set foldenable 
set foldmethod=indent

" Setting my leader key "
let mapleader = " "
map <leader>b :buffers<CR>:buffer<Space>

" Deactivates arrow keys "
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" must have .vim/swp created "
set directory=$HOME/.vim/swp//

" searches recursively into current path "
set path+=**
set wildmenu

" tags jumping "
command! MakeTags !ctags -R.
