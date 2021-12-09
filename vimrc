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
noremap K <nop>

"Ctl-J move line one line above
nnoremap <C-J> I<CR><Esc>
nnoremap <C-K> kdd


"" BEGIN TAB MAGIC
set tabpagemax=50

"tab navigation
nnoremap H gT
nnoremap L gt

"tab reordering with ctrl+h/l
nnoremap <C-h> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <C-l> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
"" END TAB MAGIC


"backspace goes back a tab
set softtabstop=4 expandtab

colorscheme elflord

"open filename in new tab
nnoremap tt <c-w>gf

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

"############ END USING VIM AS IDE ############


""" BEGIN plugins
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
"Plug 'ervandew/supertab'
"Plug 'tpope/vim-commentary'
"Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let g:ale_linters_explicit = 1
let g:ale_linters = { 'python': ['flake8'], 'puppet': ['puppetlint'], 'yaml': ['yamllint']}
let b:ale_fixers = {'python': ['autopep8']}
let g:ale_python_flake8_options='--ignore=E501,E265,E262,E731,E226,E261'
let g:ale_yaml_yamllint_options='-d "{extends: relaxed, rules: {line-length: disable}}"'
nnoremap fe :ALEFix<CR>
" settings for vim-gitgutter
set updatetime=5000
""" END plugins

" color for the tab status line
hi TabLine ctermfg=LightYellow
hi TabLineSel ctermfg=LightGreen
