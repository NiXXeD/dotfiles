silent !stty -ixon > /dev/null 2>/dev/null

set backspace=indent,eol,start

map <C-N> :NERDTreeToggle<CR>
map <C-Q> :q!<CR>
map <C-S> :w<CR>
map <C-Y> :dl<CR>
map! ^H X1

set updatetime=250

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'

call plug#end()
