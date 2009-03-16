set bg=dark
set ignorecase
set smartcase
set incsearch
set ai			" always set autoindenting on
set si
set ts=4
set shiftwidth=4
syntax on

set t_Co=256
colorscheme zenburn

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
