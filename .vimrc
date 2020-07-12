colorscheme desert

set colorcolumn=128
set nocompatible
set nojoinspaces
syntax on

set smartindent
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
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

au BufRead,BufNewFile *.js.test setfiletype javascript

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
map <C-J> :bprev <CR>
map <C-K> :bnext <CR>

map <F5> :Explore <CR>
nnoremap ff :call OpenNetrwBuffer() <CR>
nnoremap fq :call CloseNetrwBuffers() <CR>

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4

ca ls ls!

let g:airline_section_y = '%{strftime("%I:%M")}'
let g:airline_section_z = 'line %l, col %c'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_detect_whitespace=0
let g:airline#extensions#whitespace#enabled = 0

imap <Leader><Leader> <Esc>

function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bwipeout' join(empty)
    endif
    exe 'filetype detect'
endfunction

function! OpenNetrwBuffer()
  exe 'Lexplore'
  exe 'vertical resize 40'
endfunction

function! CloseNetrwBuffers()
    let [i, n; netrw] = [1, bufnr('$')]
    while i <= n
      if getbufvar(i, '&filetype') == 'netrw'
        call add(netrw, i)
      endif
      let i += 1
    endwhile
    if len(netrw) > 0
      exe 'bwipeout' join(netrw)
    endif
    call DeleteEmptyBuffers()
endfunction

autocmd VimEnter * call DeleteEmptyBuffers() 
"autocmd VimEnter * exe '20Lexplore'
