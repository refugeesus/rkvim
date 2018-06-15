set nocompatible              " be iMproved, required
filetype off                  " required
set pyxversion=0

execute pathogen#infect()
syntax on 
filetype plugin indent on

" call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdtree'
" Plug 'altercation/vim-colors-solarized'
" Plug 'ervandew/supertab'
" Plug 'rip-rip/clang_complete'
" Plug 'scrooloose/syntastic'
" Plug 'davidhalter/jedi-vim'
" Plug 'keith/swift.vim'
" Plug 'rust-lang/rust.vim'
" Plug 'racer-rust/vim-racer'
" Plug 'flazz/vim-colorschemes'
" Plug 'vim-erlang/vim-erlang-runtime'
" Plug 'vim-erlang/vim-erlang-omnicomplete'
" Plug 'vim-erlang/vim-erlang-compiler'
" Plug 'vim-erlang/vim-erlang-tags'
" Plug 'sudar/vim-arduino-syntax'
" All of your Plugins must be added before the following line
" call plug#end()            " required

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ycm_global_ycm_extra_conf = ''

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" runtime macros/matchit.vim
set term=xterm-256color

colorscheme one
set background=dark
let g:one_allow_italics =1 
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

map <C-m> :NERDTreeToggle<C-n>

" Settings for Clang
let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

" Settings for rust
set hidden
let g:racer_cmd = "/Users/robert/.cargo/bin"
let g:racer_experimental_completer = 1
let g:syntastic_rust_checkers = ['cargo']

" The shiftwidth() function is relatively new.                                            
" Don't require it to exist.                                                              
if exists('*shiftwidth')                                                                  
  func s:sw()
    return shiftwidth()                                                                   
  endfunc                                                                                 
else
  func s:sw()
    return &shiftwidth                                                                    
  endfunc                                                                                 
endif

set mouse=a
set number
set tabstop=4
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
set clipboard=unnamed

