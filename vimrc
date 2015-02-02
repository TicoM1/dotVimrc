filetype off

"pathogen plugin organization
set nocp
source /home/ubu/.vim/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()


"Python folding plugin
set foldmethod=indent
set foldlevel=99

" mapping --------------------------------------------------------------------
let mapleader = ','  	" another set of key shourtcuts, after pressing ,
" this one has to be remapped so tasklist.vim doesn't complain.
nnoremap <leader>v <Plug>TaskList
" map sort function to leader key + s
vnoremap <Leader>s :sort<CR>
" insert python print()
nnoremap <leader>p iprint("
" split window on leader+n
nnoremap <leader>n :vsp 
" easier moving of code blocks
vnoremap < <gv " better indention
vnoremap > >gv 

:inoremap ll <Esc>`^
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"syntax highlightinga
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

let g:pyflakes_use_quickfix = 1
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete ts=4 sw=4 et
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" better copy paste
set pastetoggle=<F2> 
set clipboard=unnamed " standard copy paste behavior

" Mouse and backspace
set mouse=a " Mauscursor benutzen, evntl mit strg
set bs=2 "make backspace behavior normal 

"show whitespace (must be inserted before colorscheme
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Showing line numbers and length
set number "lilne numbers
set tw=79 " width of doc
set colorcolumn=80
set nowrap " don't autom wrap on load
set fo-=t " don't autom wrap when typing
highlight ColorColumn ctermbg=233

"Spaces instead of tabs
set softtabstop=4
set shiftround

