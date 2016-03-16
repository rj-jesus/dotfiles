""""""""""
" Vundle "
""""""""""
set nocompatible       
filetype off            

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""
" UltiSnips "
"""""""""""""

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"

""""""""
" Mine "
""""""""

set expandtab       " Use spaces instead of tabs
set tabstop=4       " 1 tab := 4 spaces
set shiftwidth=4    " Use 4 spaces for indentation
set softtabstop=4   " Backspace removes 4 spaces
set encoding=utf8   " Use UTF-8 as default encoding
set number          " Show line numbers
set numberwidth=3   " Width of numbers column
set colorcolumn=80

" Use M-<K, J> to move lines up/down
" Note: To get the ^[ (not seen) press Ctrl-V and Ctrl-[
set <M-j>=j       " ...=^[j
set <M-k>=k       " ...=^[k
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" Open matching braces, parenthesis, ...
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

if has("gui_running")
    set guioptions-=T
    " set lines=24 columns=100
    set lines=24
    let &columns = 80 + (&number || &relativenumber ? &numberwidth : 0)
    set guifont=Monospace\ 12
endif

"""""""""""""""""""""""""""
" Theme (Base16-Eighties) "
"""""""""""""""""""""""""""

set t_Co=16
syntax enable
set background=light
colorscheme base16-eighties
