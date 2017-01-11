" ========== VUNDLE CONFIGURATION ==========
set nocompatible	" be iMproved, required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, requested
Plugin 'gmarik/Vundle.vim'


" ========== MY BUNDLES HERE ==========

" All of your Plugins must be added before the following line
call vundle#end()		" required

filetype plugin indent on 	" required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" ========== VIM SETTINGS ==========
set hidden               " Hide buffers instead of closing them
set nobackup             " Don't create backup files
set noswapfile           " Don't create swap files
set cursorline           " Highlight current line
set number               " Show line number
set nowrap               " Don't wrap lines
set ignorecase smartcase " Ignore case in searches, unless pattern contains uppercase
set expandtab            " Use spaces instead of tabs
set tabstop=4            " Set tab as 4 spaces
set shiftwidth=4         " Set indent legth as 4 spaces
        

" ========== PLUGIN CONFIGURATION ==========
" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set showtabline=2 " Always show tabline, even if there's only one tab
set laststatus=2  " Always show statusline in all windows
set noshowmode    " Hide the default mode text (e.g. -- INSERT -- below the statusline)


" ========== LANGUAGE SPECIFIC ==========
" Python indent/syntax/anything
source ~/.vim/.vimrc.python

" Brief help
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch	foo	- searches for foo; append `!` to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append `!` to auto-approve
"
" see :h for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
