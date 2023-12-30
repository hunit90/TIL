set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"플러그인 목록
Plugin 'VundleVime/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasiser/vim-code-dark'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Node JS
Plugin 'node.js'
Plugin 'isRuslan/vim-es6'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()
filetype plugin indent on

if has ("syntax")
    syntax on
endif
let g:molokai_original=1
let g:rehash256=1

let vim_markdown_preview_browser='Chrome'
let vim_markdown_preview_github=1
let g:syntastic_javascript_checkers = ['eslint']

colorscheme molokai

" for indent guide
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

nnoremap <C-n><C-t> :NERDTreeToggle<CR>

set rnu
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set hlsearch
set ignorecase
set clipboard=unnamedplus