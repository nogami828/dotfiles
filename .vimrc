syntax on
hi Comment ctermfg=yellow cterm=none
hi Constant ctermfg=green cterm=none
set nocp
set nowrap
set autoindent
set cindent
set shiftwidth=4
set softtabstop=4
set expandtab
set t_Co=256
set encoding=utf-8
set t_kD=
set t_kd=
set nu!
set showmatch
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set wildmode=list,full
inoremap <C-L>  <C-O>l
inoremap <C-H>  <C-O>h
inoremap <C-J>  <C-O>j
inoremap <C-K>  <C-O>k
inoremap <C-Y>  <C-O>y
inoremap <C-U>  <C-O>u

function! s:get_package_name()
    let mx = '^\s*package\s\+\([^ ;]\+\)'
    for line in getline(1, 5)
        if line =~ mx
        return substitute(matchstr(line, mx), mx, '\1', '')
        endif
    endfor
    return ""
endfunction

function! s:check_package_name()
    let path = substitute(expand('%:p'), '\\', '/', 'g')
    let name = substitute(s:get_package_name(), '::', '/', 'g') . '.pm'
    if path[-len(name):] != name
        echohl WarningMsg
        echomsg "ぱっけーじめいと、ほぞんされているぱすが、ちがうきがします！"
        echomsg "ちゃんとなおしてください＞＜"
        echohl None
    endif
endfunction

function! s:pm_template()
    let path = substitute(expand('%'), '.*lib/', '', 'g')
    let path = substitute(path, '[\\/]', '::', 'g')
    let path = substitute(path, '\.pm$', '', 'g')

    call append(0, 'package ' . path . ';')
    call append(1, 'use strict;')
    call append(2, 'use warnings;')
    call append(3, 'use utf8;')
    call append(4, '')
    call append(5, '')
    call append(6, '')
    call append(7, '1;')
    call cursor(6, 0)
    " echomsg path
endfunction

map ,pt <Esc>:%! perltidy -se<CR>
map ,ptv <Esc>:'<,'>! perltidy -se<CR>
augroup filetypedetect
autocmd! BufNewFile,BufRead *.t setf perl
autocmd! BufNewFile,BufRead *.psgi setf perl
autocmd! BufNewFile,BufRead *.tt setf tt2html
augroup END
autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl-script.txt
autocmd BufNewFile *.t  0r $HOME/.vim/template/perl-test.txt
