" 		==== Vundle ====
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'crusoexia/vim-monokai'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'ryanoasis/vim-devicons'
Plugin 'klen/python-mode'
Plugin 'potatoesmaster/i3-vim-syntax'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"               ==== COMMON OPTIONS ====
let mapleader = ","
syntax on

set cursorline           "highlight current line

set pastetoggle=<F10>
hi! EndOfBuffer ctermbg=black

"		==== NetRW ====
let g:netrw_liststyle = 3 " Detail View
let g:netrw_sizestyle = "H" " Human-readable file sizes
let g:netrw_banner = 0 " Turn off banner
let g:netrw_winsize = 20
let g:netrw_browse_split = 3
let g:netrw_altv = 1
""Remove pipe separator
set fillchars+=vert:\ 

nnoremap <F9> :Vexplore<CR>

nnoremap <F3> :bnext<CR>
nnoremap <F2> :bprevious<CR>



" 		==== Persistent Undo ====
" Keep undo history across sessions, by storing in file.
set undodir=~/.vim/backups
set undofile

"             ==== pymode ====
let g:pymode_options_max_line_length = 120
autocmd FileType python setlocal nonumber
let g:pymode_folding = 0

"             ==== TagBar ====
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_width = 30
let g:tagbar_compact = 1


" 		==== airline ====
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
set laststatus=2 "always display line status
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline_section_x = ''


"		==== ycm ====
let g:ycm_autoclose_preview_window_after_insertion=1
let g:airline_exclude_preview = 1
map <C-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>


"		==== CtrlP ====
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'


"		==== syntastic ====
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_python_flake8_args='--ignore=E225,E251,E221'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_enable_signs = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"		==== virtualenv ====
let g:virtualenv_auto_activate = 1
let g:virtualenv_stl_format = '(%n)'

"		==== devicons ====
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

"               ==== Theme ====
let g:monokai_term_italic = 1
colorscheme monokai
