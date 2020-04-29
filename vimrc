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


"open filename in new tab
nnoremap tt <c-w>gf

" ## begin plugins
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
call plug#end()

let g:ale_linters_explicit = 1
"let g:ale_linters = { 'yaml': ['yamllint']}
let g:ale_linters = { 'python': ['flake8']}
let b:ale_fixers = {'python': ['autopep8']}
let g:ale_python_flake8_options='--ignore=E501,E265,E262,E731,E226,E261'
nnoremap fe :ALEFix<CR>


" settings for vim-gitgutter
set updatetime=5000

" ## end plugins


" go to next window with TAB
map <Tab> <C-W>w
nnoremap sp :set paste<CR>
nnoremap snp :set paste!<CR>

" The default timeout waiting for another short cut is too long (1000 ms)
" type faster! wait shorter!
" http://vimdoc.sourceforge.net/htmldoc/options.html#'timeoutlen'
set timeoutlen=200


"############ BEGIN USING VIM AS IDE ############

"tmux integration
"clear;arrow up; enter; enter to clear vim :! message
nnoremap rr :w<CR> :! tmux send-keys -t bottom C-l C-p C-m<CR><CR> 


"insert breakpoint() into next line
nnoremap bp obreakpoint()<Esc>

"insert print(f"") to next line
nnoremap pf oprint(f"")<Esc>hi

"insert print(f"{}") to next line
nnoremap pff oprint(f"{=}")<Esc>hhhi



" mm: make markdown (requires python-markdown)
nnoremap mm :w<CR> :! python -m  markdown % -f %.html <CR><CR> 
" mo: markdown open
nnoremap mo :! chromium %.html >/dev/null 2&1<CR><CR> 

"############ END USING VIM AS IDE ############
