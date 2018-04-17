" Pathogen first

execute pathogen#infect()

" Basic settings

filetype plugin indent on
syntax on
set tabstop=3
set encoding=utf-8
set colorcolumn=80

" Aesthetics

syntax enable
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

if &term =~ "xterm"
	" 256 colors
	let &t_Co = 256
	" restore screen after quitting
	let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
	let &t_te = "\<Esc>[?47l\<Esc>8"
	if has("terminfo")
		let &t_Sf = "\<Esc>[3%p1%dm"
		let &t_Sb = "\<Esc>[4%p1%dm"
	else
		let &t_Sf = "\<Esc>[3%dm"
		let &t_Sb = "\<Esc>[4%dm"
	endif
endif
