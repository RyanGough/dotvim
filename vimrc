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
Plug 'rafi/awesome-vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim'

call plug#end()

" set 256 colors and default colorscheme
set t_Co=256
colorscheme molokai
let g:airline_theme='deep_space'

" syntastic settings
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_full_redraws = 1
let g:syntastic_javascript_checkers = ['eslint']


" Disable arrow movement, resize splits instead.

if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif

" patched fonts for powerline to look good
let g:airline_powerline_fonts = 1

" ctrlp stuff
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.lbb,*.pyc,*/node_modules/*,*/build/*,*/out/*
