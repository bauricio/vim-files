" vim: filetype=vim
inoremap <expr> <C-Space> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
imap <S-CR>    <CR><CR>end<Esc>-cc
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
if has("autocmd") 
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete 
endif 

" capitalize
if (&tildeop)
  nmap gcw guw~l " capitalize word (from cursor position to end of word)
  nmap gcW guW~l " capitalize WORD (from cursor position to end of WORD)
  nmap gciw guiw~l 
  nmap gciW guiW~l
  nmap gcis guis~l
  nmap gc$ gu$~l
  nmap gcgc guu~l " capitalize whole line (from start to end)
  nmap gcc guu~l " capitalize whole line
  vmap gc gu~l
else
  nmap gcw guw~h
  nmap gcW guW~h
  nmap gciw guiw~h
  nmap gciW guiW~h
  nmap gcis guis~h
  nmap gc$ gu$~h
  nmap gcgc guu~h
  nmap gcc guu~h
  vmap gc gu~h
endif

" set mapping to navigate between open split windows
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>
" set mapping to navigate in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap <expr> <C-Space> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
imap <S-CR>    <CR><CR>end<Esc>-cc
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
if has("autocmd") 
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete 
endif 

if (&tildeop)
  nmap gcw guw~l
  nmap gcW guW~l
  nmap gciw guiw~l
  nmap gciW guiW~l
  nmap gcis guis~l
  nmap gc$ gu$~l
  nmap gcgc guu~l
  nmap gcc guu~l
  vmap gc gu~l
else
  nmap gcw guw~h
  nmap gcW guW~h
  nmap gciw guiw~h
  nmap gciW guiW~h
  nmap gcis guis~h
  nmap gc$ gu$~h
  nmap gcgc guu~h
  nmap gcc guu~h
  vmap gc gu~h
endif

" set mapping to navigate between open split windows
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>

" set mapping to navigate in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" keep visual selection after ident
vmap > >gv
vmap < <gv
vmap = =gv

" set mapping expand the window
noremap <expr> <silent> <Space><Space> ":vertical res<CR>:res<CR>"
noremap <Space>= <C-w>=
noremap <Space>_ <C-w>_
noremap <Space><Bar> <C-w><Bar>
noremap <Space>o <C-w>o

noremap <Tab> :tabn<CR>
noremap <S-Tab> :tabp<CR>

noremap <CR> :nohlsearch<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" map for showing the current directory on command-line mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>
