"set mouse=a
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set encoding=utf-8
set fileencoding=utf-8

set incsearch
set number
set ignorecase 
set wrap
set linebreak

map Q :qa<CR>
map q <Nop>
nnoremap <F1> <nop>
"noremap K <nop>

"Ctl-J new line nach unten
nnoremap <C-J> I<CR><Esc>
nnoremap <C-K> kdd

"open filename in new tab
nnoremap tt <c-w>gf

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

"tmux integration
"clear;arrow up; enter; enter to clear vim :! message
nnoremap rr :w<CR> :! tmux send-keys -t bottom C-l C-p C-m<CR><CR> 

" ## begin plugins
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
call plug#end()

let g:ale_linters_explicit = 1
"let g:ale_linters = { 'yaml': ['yamllint']}
let g:ale_linters = { 'python': ['flake8', 'bandit']}
let b:ale_fixers = {'python': ['autopep8']}
let g:syntastic_python_flake8_args='--max-line-length=120'
"let g:syntastic_python_flake8_args='--max-line-length=120 --ignore=E402,E731,E711,E501'
nnoremap fe :ALEFix<CR>


" settings for vim-gitgutter
set updatetime=5000

" ## end plugins

" go to next window with TAB
map <Tab> <C-W>w
nnoremap 1 :Lexplore<CR>
nnoremap sp :set paste<CR>
nnoremap snp :set paste!<CR>
