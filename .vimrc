let mapleader=","
set nocompatible
filetype off 
" Let vim know that the terminal can display 256 colors. This is needed when
" using vim through a terminal multiplexer like screen or tmux, when the 
" XTERM variable has value like 'screen' and vim doesn't believe it can use 
" 256 colors. Without this, the background of status bar and vim-airline tabs
" would not display properly.
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" for autocompletion
Plugin 'Valloric/YouCompleteMe'
" for buffer names at the top of the window
Plugin 'vim-airline/vim-airline'
" for heuristic file opening
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-fswitch'


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

" use zc/zo to open/close the fold


" ----------------------- normal vim options {{{

set signcolumn=yes
set number
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set ttimeoutlen=100
set noesckeys
set hlsearch

" hotkey to source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
" hotkey to open vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" hotkey to clear the search
nnoremap <leader>m /fkdlsfkdlsajfkdlsajfdksVCXZVXZMCVXZM<cr>

" save with ctrl-s
nnoremap <c-s> :w<cr>
inoremap <c-s> <c-o>:w<CR>
vnoremap <C-s> <esc>:w<CR>gv

" change to normal mode by presssing jk or kj
inoremap jk <esc>
inoremap kj <esc>

" enable folding for vim files
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


nnoremap <leader>n :bn<cr>
inoremap <leader>n <esc>:bn<cr>a

nnoremap <leader>p :bp<cr>
inoremap <leader>p <esc>:bp<cr>a

nnoremap <leader>e :bp<cr>:bd #<cr>

set pumheight=8

nnoremap <leader>wj <c-w>j 
nnoremap <leader>wk <c-w>k 
nnoremap <leader>wh <c-w>h 
nnoremap <leader>wl <c-w>l 

inoremap <leader>wj <esc>:winc j<cr>
inoremap <leader>wk <esc>:winc k<cr>
inoremap <leader>wh <esc>:winc h<cr>
inoremap <leader>wl <esc>:winc l<cr>

" }}}

" ----------------------- vim-airline options {{{
let g:airline#extensions#tabline#enabled = 1
" }}}

" ----------------------- YouCompleteMe options {{{
nnoremap <F3> :YcmCompleter GoToImprecise<cr>
inoremap <F3> <c-o>:YcmCompleter GoToImprecise<cr>
highlight YcmErrorSection ctermbg=Red ctermfg=White
highlight YcmWarningSection ctermbg=Yellow ctermfg=Red
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1

" }}}

" ----------------------- NERDTree options {{{
nmap <c-n> :NERDTreeToggle<CR>
" }}}

" ----------------------- vim-fswitch options {{{
" hotkey to source vimrc
nnoremap <leader>l :w<cr>:FSHere<cr>
inoremap <leader>l <esc>:w<cr>:FSHere<cr>
" }}}

