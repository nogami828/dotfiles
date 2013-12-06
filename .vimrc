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

"map ,pt <Esc>:%! perltidy -se<CR>
"map ,ptv <Esc>:'<,'>! perltidy -se<CR>
"augroup filetypedetect
"autocmd! BufNewFile,BufRead *.t setf perl
"autocmd! BufNewFile,BufRead *.psgi setf perl
"autocmd! BufNewFile,BufRead *.tt setf tt2html
"augroup END
"autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl-script.txt
"autocmd BufNewFile *.t  0r $HOME/.vim/template/perl-test.txt
