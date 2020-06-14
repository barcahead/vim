inoremap jk <ESC>
let mapleader = " "

filetype plugin indent on
syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set encoding=utf-8
set clipboard=unnamedplus

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

packadd! dracula
colorscheme dracula

" Key Binding
:nnoremap <C-g> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'

" CP
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>

" Go
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save
let g:go_auto_type_info = 1
