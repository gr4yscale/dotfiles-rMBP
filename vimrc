set nocompatible               " be iMproved

" Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle; required! 
Bundle 'gmarik/vundle'

" Plugins
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'eraserhd/vim-ios'
Bundle 'groenewege/vim-less'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
"Bundle 'tokorom/clang_complete'

"Bundle 'Rip-Rip/clang_complete'
"Bundle 'tokorom/clang_complete-getopts-ios'

"Bundle 'Shougo/neocomplcache'
"Bundle 'osyo-manga/neocomplcache-clang_complete'


Bundle 'jgoulah/cocoa.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
"Bundle 'xolox/vim-easytags'

Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'garbas/snipmate.vim'
Bundle 'Raimondi/delimitMate'

Bundle 'thinca/vim-prettyprint'

" Solarized
syntax enable
if has('gui_running')
  set background=dark
else
  set background=dark
endif
"let g:soloarized_termtrans=1
"let g:solarized_termcolors=256
let g:solarized_contrast="high"
"let g:solarized_visibility="high"
colorscheme solarized

" NERDTree
nmap <silent> <c-n> :NERDTreeToggle<CR>

" some files git always wants to commit
" move them outside the repo
let g:netrw_home=$HOME . "/.vimfiles"

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set hlsearch              " continue to highlight searched phrases.
set incsearch             " highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
:retab
set nowrap                " don't wrap text
set nofoldenable
set foldlevel=1
set swapfile
set dir=~/tmp
set backupdir=~/tmp
set backspace=indent,eol,start

let mapleader=","


"make completion behave like an ide
set completeopt=menu,menuone,longest
set pumheight=15
set ofu=syntaxcomplete#Complete

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"supertab
let g:SuperTabDefaultCompletionType = "context"

" better escape
inoremap jk <Esc>

" ,w to open a split window and switch to it
nnoremap <leader>w <C-w>v<C-w>l

" use <F6> to cycle through split windows
nnoremap <F6> <C-W>w

" cycle backwards
nnoremap <S-F6> <C-W>W

let g:clang_complete_auto=1
let g:clang_debug=1
let g:clang_autoselect=1
let g:clang_complete_copen=1
let g:clang_use_library=1

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"

" clang_complete-getopts-ois
let g:clang_auto_user_options = 'path, .clang_complete, clang, ios'


" neocomplcache
"let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1

" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1

" Use underscore completion.
"let g:neocomplcache_enable_underbar_completion = 1

"Sets minimum char length of syntax keyword.
"let g:neocomplcache_min_syntax_length = 3

" buffer file name pattern that locks neocomplcache. e.g. ku.vim or
" fuzzyfinder 
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()


"if !exists('g:neocomplcache_omni_patterns')
"  let g:neocomplcache_omni_patterns = {}
"endif

"neocomplcache - clang_complete 
"let g:neocomplcache_force_overwrite_completefunc=2

" add clang_complete option
let g:clang_complete_auto=1
"
"
"cocoa.vim
map <leader>l :ListMethods

"ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0       " start searching in current dir"

"tagbar
nmap <Leader>b :TagbarToggle<CR>

" add a definition for Objective-C to tagbar
let g:tagbar_type_objc = {
    \ 'ctagstype' : 'ObjectiveC',
    \ 'kinds'     : [
        \ 'i:interface',
        \ 'I:implementation',
        \ 'p:Protocol',
        \ 'm:Object_method',
        \ 'c:Class_method',
        \ 'v:Global_variable',
        \ 'F:Object field',
        \ 'f:function',
        \ 'p:property',
        \ 't:type_alias',
        \ 's:type_structure',
        \ 'e:enumeration',
        \ 'M:preprocessor_macro',
    \ ],
    \ 'sro'        : ' ',
    \ 'kind2scope' : {
        \ 'i' : 'interface',
        \ 'I' : 'implementation',
        \ 'p' : 'Protocol',
        \ 's' : 'type_structure',
        \ 'e' : 'enumeration'
    \ },
    \ 'scope2kind' : {
        \ 'interface'      : 'i',
        \ 'implementation' : 'I',
        \ 'Protocol'       : 'p',
        \ 'type_structure' : 's',
        \ 'enumeration'    : 'e'
    \ }
\ }


"look for tags in current dir, then fallback on ios repo
:set tags=./tags;~/Code/ios/Tumbleweed/src/tags


"use ack instead of grep
set grepprg=ack\ --column\ --ignore-file=is:tags
set grepformat=%f:%l:%c:%m

set grepprg+=\ --ignore-dir=build
