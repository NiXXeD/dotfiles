" Backspace works better
set backspace=indent,eol,start

" Show airline by default
set laststatus=2

" Faster visual update time
set updatetime=250

" Enable mouse
set mouse=a

" Clipboard shared with system
set clipboard=unnamed

" Key bindings
map <C-N> :NERDTreeToggle<CR>
map! <C-N> <esc>:NERDTreeToggle<CR>
map <C-Q> :q!<CR>
map! <C-Q> <esc>:q!<CR>
map <C-S> :w<CR>
map! <C-S> <esc>:w<CR>
map <C-Y> :d1<CR>
map! <C-Y> <esc>:d1<CR>ki
nnoremap <bs> X1
map <C-D> yyP<CR>
map! <C-D> <esc>yyP<CR>a
vnoremap <C-C> y
map <C-V> P
map! <C-V> :P<CR>a


" Vim Plug - https://github.com/junegunn/vim-plug
" Run ':so %' followed by ':PlugInstall' to update 
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'

call plug#end()
