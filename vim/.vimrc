" Use vim, not vi
set nocompatible

""""""""""""""""""""""""""""""
"Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'fatih/vim-go'
Plug 'bling/vim-airline'
Plug 'tikhomirov/vim-glsl'
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'

call plug#end()
filetype plugin indent on
" End of Vim Pluf stuff
""""""""""""""""""""""""""""""
syntax on

if (has("termguicolors"))
    set termguicolors
endif

set background=dark
" Make this silent so that we don't get an error message before it's installed
silent! colorscheme gruvbox
"Don't clear the background color
set t_ut=

set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set wildmenu
set wildmode=longest:full,full

"YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_rust_src_path = '/home/andy/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:ycm_goto_buffer_command = 'vertical-split'
nnoremap <leader>t :YcmCompleter GetType<CR>

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2
set encoding=utf-8

" Rainbow Settings
let g:rainbow_active = 1

autocmd FileType javascript,css,scheme,lua setlocal shiftwidth=2 softtabstop=2
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=8 tabstop=8
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType php setlocal smartindent
autocmd FileType go noremap <F5> :GoTest<CR>

" Disable arrow keys in normal mode, to force the use of hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> :bprevious<CR>
noremap <Right> :bnext<CR>
"use jj to get back to normal mode
inoremap jj <esc>

" Open splits on the right hand side
set splitright

" Set swp file directory
set directory=~/.vim/swp//

set nobackup writebackup

" allow vim to open man pages
runtime ftplugin/man.vim