syntax on
filetype plugin on
set number
set undodir=~/.vim/undodir
set undofile
set hlsearch

"misc info"
set showcmd
set laststatus=2
set statusline+=%F

"To fold, use 'zc' on a line"
set foldenable 
set foldmethod=indent

filetype plugin indent on
set smartindent

"Deactivates arrow keys"
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

"must have .vim/swp created"
set directory=$HOME/.vim/swp//

"searches recursively into current path"
set path+=**
set wildmenu

"tags jumping"
command! MakeTags !ctags -R .
