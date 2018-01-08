" basic
set nocompatible
set nowrap
set encoding=utf8
syntax on

" set indentation
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" set absolute line number on current line,
" relative on all others
set number
set relativenumber

" plugins via vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'jodosha/vim-godebug'

call plug#end()

" set 256 colors and default colorscheme
set t_Co=256
colorscheme molokai
let g:airline_theme='deep_space'

" ctrlp stuff
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.lbb,*.pyc,*/node_modules/*,*/build/*,*/out/*
 
" Disable AutoComplPop.
 let g:acp_enableAtStartup = 0
 " Use neocomplete.
 let g:neocomplete#enable_at_startup = 1
 " Use smartcase.
 let g:neocomplete#enable_smart_case = 1
 " Set minimum syntax keyword length.
 let g:neocomplete#sources#syntax#min_keyword_length = 3
 " auto close preview
 let g:neocomplet#enable_auto_close_preview = 1
 " neosnippet
let g:neosnippet#enable_snipmate_compatibility=1
let g:go_snippet_engine = "neosnippet"
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-go/gosnippets/snippets,~/mysnippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" To conceal snippet markers
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
"   endif
"
