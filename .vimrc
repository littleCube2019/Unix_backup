"================Vundle==========================="
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
	"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'crusoexia/vim-monokai' "for vim style and in  ~/.vim/colors

Plugin 'majutsushi/tagbar' "tagbar with ctag
map <F2> :TagbarToggle<CR>
set tags=./tags;/

Plugin 'bling/vim-airline'  "line statuis
set laststatus=2
let g:airline_powerline_fonts=1


Plugin 'scrooloose/nerdtree' "nerdtree for file system
Plugin 'jistr/vim-nerdtree-tabs'
:nnoremap <F1> :NERDTreeTabsToggle<CR>>


Plugin 'mattn/emmet-vim' "emmet for html
let g:user_emmet_leader_key = '<C-x>'


Plugin 'ycm-core/YouCompleteMe' "YCM autocompletement
" the following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
"===================my setting ==========================="
" 1.auto complete parentheses
:imap { {}<LEFT>
:imap [ []<LEFT>
:imap ( ()<LEFT>
:autocmd VimEnter *.html  imap < <><LEFT>
" only html file
:imap jj <ESC>

" 2.misc
:set nu  "line number
syntax on
colorscheme monokai "vim sytle
set belloff=all "turn off beep sound

" 3.vim python directly execute
autocmd FileType python map <buffer> <leader>p :w<CR>:exec '!python3' shellescape(@%, 1)<CR>



