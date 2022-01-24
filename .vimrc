
"dein Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tarou/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/tarou/.cache/dein')

let s:toml = '~/.vim/dein/dein.toml'
call dein#load_toml(s:toml, {'lazy': 0})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"call map(dein#check_clean(), "delete(v:val, 'rf')")

"End dein Scripts-------------------------

runtime! setting/*.vim

"dictionary"
"augroup vimrc
"	autocmd!
"	autocmd BufNewFile,BufRead *.c set dictionary=$HOME/.vim/dict/c
"augroup END
"set complete=.,w,b,u,t,i,k
