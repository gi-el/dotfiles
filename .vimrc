set bg=dark
set ignorecase
set smartcase
set incsearch
set ai			" always set autoindenting on
set si
set ts=4
set shiftwidth=4

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set t_Co=256
  colorscheme zenburn
endif

if &term=="xterm" 
  set t_Sb=^[[4%dm 
  set t_Sf=^[[3%dm 
endif 

if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

 " Enabled file type detection
  filetype plugin on
endif

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
