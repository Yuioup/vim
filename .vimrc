" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'godlygeek/tabular'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'kana/vim-repeat'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set nocompatible
set nu
set nowrap
set hlsearch
set incsearch
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
set laststatus=2
if has("gui_running")
    set cursorline
endif
set autochdir

set noerrorbells 
set novisualbell
set t_vb=
if has("gui_running")
    autocmd! GUIEnter * set vb t_vb=
endif

set noignorecase
"set ignorecase
set nomore
"set autowriteall

set number

filetype on
filetype indent on
filetype plugin on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

au BufNewFile,BufRead *.jira setlocal ft=confluencewiki
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set nowrap

if has("gui_running")
    set guioptions+=b
    set guioptions-=T
    set guifont=Consolas:h11:cANSI
    "set guifont=Terminus:h11:cANSI
endif

set backspace=indent,eol,start 

set tags=./tags,tags,../tags

nnoremap <F10> :syntax on<CR>
nnoremap <F11> "=strftime("%H:%M")<CR>P
inoremap <F11> <C-R>=strftime("%H:%M")<CR>
nnoremap <F12> :NERDTreeToggle<CR>
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

au GUIEnter * simalt ~x
"let g:proj_window_width = 50
"let g:proj_flags = "istgv"

let NERDTreeCaseSensitiveSort=1
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=41
let NERDTreeChDirMode=2

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
"let g:ctrlp_working_path_mode = ""

let g:ctrlp_extensions = ['buffertag']

let g:acp_ignorecaseOption = 0

"colorscheme desert

if has("gui_running")
    set background=dark
    colorscheme solarized
endif

source ~/.regexlist.vim

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{gutentags#statusline()}
set statusline+=%*
