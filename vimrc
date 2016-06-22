set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
let vundle_root="~/.vim/bundle"
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'Valloric/YouCompleteMe.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-markdown.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'leafgarland/typescript-vim.git'
Plugin 'fatih/vim-go'
Plugin 'burnettk/vim-angular'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tpope/vim-surround'
Plugin 'JuliaLang/julia-vim'
Plugin 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Plugin 'vim-scripts/taglist.vim.git'
Plugin 'vim-scripts/cscope.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nu
set ic
hi LineNr ctermfg=grey
hi SignColumn ctermbg=black
set nocursorline " don't highlight current line
set hlsearch
set mouse=a

inoremap jj <ESC>

" option name default optional ------------------------------------------------
let g:solarized_termcolors= 256
let g:solarized_termtrans = 1
let g:solarized_degrade = 1
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_contrast = "normal"
let g:solarized_visibility= "normal"
" ------------------------------------------------
silent! syntax enable
set t_Co=256
set background=dark
silent! colorscheme solarized

" set cursorcolumn
" highlight CursorColumn ctermbg=Black

" set cc=80
call matchadd('ColorColumn', '\(\%80v\|\%100v\)', 100)

set nobackup
set nowb
set expandtab
set smarttab
set noswapfile
set smartcase
filetype indent on

set shiftwidth=2
set tabstop=2

set ai
set si
set laststatus=2

" Set leader key to somewhere that makes sense
let mapleader=","

" Remove the annoying autocomment next line behaviour
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Gitgutter
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow

" YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1

" Command-t
" let g:CommandTAcceptSelectionMap = '<C-t>'
" let g:CommandTAcceptSelectionTabMap = '<CR>'

" Tagbar
nmap <F8> :TagbarToggle<CR>

" To stop long lines slowing down vim
set synmaxcol=400
" set nowrap
set wrap

" Vim airline
let g:airline_powerline_fonts = 0
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1

" Remove weird trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

" To see tabs are a symbol
set list
set listchars=tab:\ \|

" Typescript plugin (Uncomment this if the indenter annoys you)
" let g:typescript_indent_disable = 1

" To autoclose html tags using a script
au FileType html,xml,xsl source ~/.vim/scripts/closetag.vim
let g:closetag_html_style=1

" Fix annoying weirdness with backspace not working as advertised
set backspace=indent,eol,start

" Syntastic checkers
let g:syntastic_javascript_checkers = ['jshint']

