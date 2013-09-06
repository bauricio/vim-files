set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'
Bundle 'kchmck/vim-coffee-script'
Bundle 'bling/vim-airline'

filetype plugin indent on 
