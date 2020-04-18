colorscheme desert

set colorcolumn=80
set nocompatible
set nojoinspaces
syntax on

set smartindent
set autoindent
set shiftwidth=4
set expandtab
set softtabstop=4
set nu
set hidden

au BufRead,BufNewFile *.txt set colorcolumn=0
au BufRead,BufNewFile *.txt imap <buffer> >> >>A
au BufRead,BufNewFile *.txt imap <buffer> << <<A

" save existing buffers
:set viminfo^=%

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set softtabstop=8

set formatoptions+=r

nmap ; :
nmap <C-S-Up> {[
nmap <C-S-Down> ]}
vmap > >gv
vmap < <gv

imap $$ <Esc>A
imap <F10> <Esc>ui
imap <F11> <Esc>i

" For switching between many opened files by using Ctrl-J or Ctrl-K.
map <C-J> :bnext <CR>
map <C-K> :bprev <CR>

map <F5> :Explore <CR>

