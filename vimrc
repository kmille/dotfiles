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

"backspace geht tab zur_ck
set softtabstop=4 expandtab

"switch tabs with L and H

" splitting tabs
nnoremap te :tabedit<Space>
nnoremap H gT
nnoremap L gt

" windows
nnoremap vs :vsplit<Space>
nnoremap s :split<Space>
map <Tab> <C-W>w
