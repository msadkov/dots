set term=screen

set nocompatible                " use vim defaults
set ls=2                        " allways show status line
set tabstop=4                   " numbers of spaces of tab character
set softtabstop=4               " makes the spaces feel like real tabs
set expandtab                   " tabs are converted to spaces, use only when required
set shiftwidth=4                " numbers of spaces to (auto)indent
set scrolloff=3                 " keep 3 lines when scrolling
set showcmd                     " display incomplete commands
set hlsearch                    " highlight searches
"set incsearch                  " do incremental searching
set ruler                       " show the cursor position all the time
set visualbell t_vb=            " turn off error beep/flash
set novisualbell                " turn off visual bell
set nobackup                    " do not keep a backup file
set number                      " show line numbers
set ignorecase                  " ignore case when searching
"set noignorecase               " don't ignore case
set title                       " show title in console title bar
set ttyfast                     " smoother changes
"set ttyscroll=0                " turn off scrolling, didn't work well with PuTTY
set modeline                    " last lines in document sets vim mode
set modelines=3                 " number lines checked for modelines
set shortmess=filnxtToO         " Abbreviate messages
set nostartofline               " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set backspace=2

set pastetoggle=<C-P>
set autoindent                  " always set autoindenting on
"set smartindent                " smart indent
"set cindent                    " cindent
"set noautoindent
set nosmartindent
set nocindent   
set nofoldenable

filetype plugin on

"set sm                         " show matching braces, somewhat annoying...
set nowrap                      " don't wrap lines

set directory=~/.vim/swp

set path=.,,/usr/include

set t_Co=256
syntax on
set background=dark
colorscheme solarized

nnoremap <silent> <Leader>b :TagbarToggle<CR>
set tags=./tags;

set mouse=a
set ttymouse=xterm2

set statusline=%F%m%r%h%w\ [%{&ff}/%Y]\ [\%02.2B]\ [%04l:%04v][%p%%]\ [%L]

if has("autocmd")
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
    au BufRead,BufNewFile *.hrl set filetype=erlang

    au FileType html setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2
    au FileType css setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2
    au FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab softtabstop=2
endif

nmap <C-C> :w! ~/.vim/.tmp<CR>
vmap <C-C> :w! ~/.vim/.tmp<CR>
nmap <C-V> :-1r ~/.vim/.tmp<CR>

" fix keycodes for screen + iterm2
map OH <Home>
map OF <End>
imap OH <Home>
imap OF <End>
