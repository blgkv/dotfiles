syntax on
set number
set autoindent 
set noexpandtab 
set tabstop=4
set shiftwidth=4
set et
set wrap
set ai
set cin
set showmatch
set hlsearch
set incsearch
set ignorecase
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
augroup twig_ft
  au!
    autocmd BufNewFile,BufRead *.asm   set syntax=avr8bit
augroup END
highlight Comment cterm=italic
execute pathogen#infect()
call pathogen#helptags()
