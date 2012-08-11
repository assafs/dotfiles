set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" ctrl-j/k deletes blank line below/above, and option-j/k inserts.
" nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

call pathogen#infect()
syntax on
filetype plugin indent on

colorscheme solarized
set background=dark

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs

let g:Powerline_symbols='fancy'

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

cs add cscope.out
