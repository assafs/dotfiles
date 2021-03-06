let mapleader = "-"

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" ctrl-j/k deletes blank line below/above, and option-j/k inserts.
" nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

ino jj <esc>
cno jj <c-c>

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

" use Ctrl+L to toggle the line number counting method
function! g:ToggleNuMode()
    if &nu == 1
        set rnu
    else
        set nu
    endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

" make sure cursor doesn't roll off screen
set scrolloff=5

set rnu

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" Open window below instead of above"
nnoremap <C-W>N :let sb=&sb<BAR>set sb<BAR>new<BAR>let &sb=sb<CR>

" Vertical equivalent of C-w-n and C-w-N"
nnoremap <C-w>v :vnew<CR>
nnoremap <C-w>V :let spr=&spr<BAR>set nospr<BAR>vnew<BAR>let &spr=spr<CR>

set wildmenu
set wildmode=full

nnoremap <C-t><left> :tabp<CR>
nnoremap <C-t><right> :tabn<CR>

let g:clang_user_options='|| exit 0'
let g:clang_close_preview=1
