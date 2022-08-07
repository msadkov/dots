set ls=2                        " allways show status line
set tabstop=4                   " numbers of spaces of tab character
set softtabstop=4               " makes the spaces feel like real tabs
set expandtab                   " tabs are converted to spaces, use only when required
set shiftwidth=4                " numbers of spaces to (auto)indent
set scrolloff=3                 " keep 3 lines when scrolling
set noshowcmd                     " display incomplete commands
set hlsearch                    " highlight searches
"set noincsearch                  " do incremental searching
set ruler                       " show the cursor position all the time
set visualbell t_vb=            " turn off error beep/flash
set novisualbell                " turn off visual bell
set nobackup                    " do not keep a backup file
set number                      " show line numbers
set ignorecase                  " ignore case when searching
"set noignorecase               " don't ignore case
set title                       " show title in console title bar
set modeline                    " last lines in document sets vim mode
set modelines=3                 " number lines checked for modelines
set shortmess=FfilnxtToO        " abbreviate messages
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
set noshowmode
set guicursor=
set tags=./tags;
set mouse=a
set statusline=%F%m%r%h%w\ [%{&ff}]%y[\%02.2B][%04l:%04v][%p%%][%L]
"set sm                         " show matching braces
set nowrap                      " don't wrap lines
set directory=~/.vim/swp
set path=.,,/usr/include
set background=dark
set termguicolors

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'troydm/zoomwintab.vim'
Plug 'Yggdroot/indentLine'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'simrat39/rust-tools.nvim'
    Plug 'hrsh7th/vim-vsnip'
endif
call plug#end()

let g:indentLine_char = '┊'
set list lcs=tab:\┊\ 

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox_material'
colorscheme gruvbox-material

if has('autocmd')
    " Restore cursor position
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
    au BufRead,BufNewFile *.hrl set filetype=erlang

    au FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
    au FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
    au FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
endif

nmap <C-C> :w! ~/.vim/.tmp<CR>
vmap <C-C> :w! ~/.vim/.tmp<CR>
nmap <C-V> :-1r ~/.vim/.tmp<CR>
