" ~/.vimrc
" settings of the tabs
syntax on
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=0
"only one line without breaking
set nowrap 
"set number // setting left side number
" no vi compat
set nocompatible
set tags=~/remote/rox/fri.tags;/
" filetype func off
filetype off

" initialize vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" start- all plugins below

Plugin 'VundleVim/Vundle.vim'

" stop - all plugins above
call vundle#end()

" filetype func on
filetype plugin indent on

Plugin 'scrooloose/nerdtree.git'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ctrlp_max_files=0
let g:ctrlp_match_window='bottom,order:ttb,min:1,max:30,results:30'

"Going to end of the line
inoremap <C-E> <Esc><S-a>
"Going to the beginging of the line
inoremap <C-A> <Esc>0i

set noswapfile
set nobackup

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nnoremap q :NERDTreeFind<CR>


"Going to match
highlight ExtraWhitespace ctermbg=green guibg=green
match ExtraWhitespace /\s\+$/
