colorscheme desert

set colorcolumn=128
set nocompatible
set nojoinspaces
syntax on

set smartindent
set autoindent
filetype indent on
set shiftwidth=4
set expandtab
set softtabstop=4
set nu
set hidden
" set clipboard=unnamed

au BufRead,BufNewFile *.txt setlocal colorcolumn=0
au BufRead,BufNewFile *.txt imap <buffer> >> >>A
au BufRead,BufNewFile *.txt imap <buffer> << <<A
au BufRead,BufNewFile *.txt nmap <buffer> j gj
au BufRead,BufNewFile *.txt nmap <buffer> k gk
au BufRead,BufNewFile *.txt setlocal wrap linebreak

" au BufRead,BufNewFile *.{yaml,yml} setlocal colorcolumn=0 shiftwidth=4 expandtab softtabstop=4
" save existing buffers
" set viminfo^=%

au BufRead,BufNewFile *.js.test setfiletype javascript
au BufRead,BufNewFile *.kt set filetype=kotlin

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

let g:netrw_list_hide= '.*\.swp$'

ca ls ls!

let g:airline_section_y = '%{strftime("%I:%M")}'
let g:airline_section_z = 'line %l, col %c'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_detect_whitespace=0
let g:airline#extensions#whitespace#enabled = 0

" let g:airline_exclude_preview = 1
" imap <Leader><Leader> <Esc>

if executable("ag")
  let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

ca git Git

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
  let g:netrw=1
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
    let g:netrw=0
endfunction

function! OpenMultipleFiles(...)
    execute 'args ' . join(a:000)
    execute 'argdelete*'
endfunction

command! -nargs=+ Open call OpenMultipleFiles(<f-args>)

autocmd VimEnter * call DeleteEmptyBuffers() 

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

let git_path = substitute(system("git rev-parse --show-toplevel 2>/dev/null"), '\n', '', '')
let git_branch = substitute(system("git branch --show-current 2>/dev/null"), '\n', '', '')

if git_path != "/home/shubhamk/.setup-files"
  let git_session = git_path . "/.session" . "." . git_branch
  if argc() == 0
      if !empty(git_path) && !empty(git_branch)
        autocmd VimLeave * exe 'mksession! ' . git_session
      endif
      if !empty(glob(git_session))
        exe 'silent source ' . git_session
      endif
  endif

  let git_vimrc = git_path . "/.vimrc"
  if !empty(glob(git_vimrc))
    sandbox exec ":source " . git_vimrc
  endif
endif

command CD :lcd %:p:h
