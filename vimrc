"set mouse=a
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

set incsearch
set number
set ignorecase 
set wrap
set linebreak
map Q :qa<CR>
map q <Nop>
nnoremap <F1> <nop>
noremap K <nop>
"Ctl-J new line nach unten
nnoremap <C-J> I<CR><Esc>
nnoremap <C-K> kdd

"tab switching 
nnoremap H gT
nnoremap L gt

"backspace geht tab zur_ck
set softtabstop=4 expandtab

"set ttyfast
"set mouse=a
"set ttymouse=xterm2

colorscheme elflord
"set guifont=Monaco\ 12
"set guifont=Menlo-Regular\ 12


"set encoding=utf-8
"set fileencoding=utf-8

nnoremap redo :w<CR> :! tmux send-keys -t bottom C-p C-m<CR><CR>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
call plug#end()

" settings for syntastic
"let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_quiet_messages = {  'regex': 'docstring' }
let g:syntastic_check_on_wq = 0
nnoremap cs :SyntasticCheck<CR>
nnoremap se :Errors<CR>
nnoremap he :lclose<CR>
" go to next window with TAB
map <Tab> <C-W>w

