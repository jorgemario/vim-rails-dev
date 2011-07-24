set nocompatible
syntax on
if has("autocmd")
  filetype plugin indent on
endif
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set background=dark
set expandtab

" color scheme
colorscheme solarized

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set incsearch "find the next match as we type the search
set hlsearch "hilight searches by default

set wrap "dont wrap lines
set linebreak "wrap lines at convenient points

"hide buffers when not displayed
set hidden

"statusline setup
set statusline=%f "tail of the filename

let mapleader = ","
nmap <leader>v :tabedit /home/jorge/.vimrc<CR>

" Bubble single lines (normal map)
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines (visual map)
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Indentation
nmap <S-Tab> <<
nmap <Tab> >>
vmap <S-Tab> <gv
vmap <Tab> >gv

" Visually select the text that was last edited/pasted
nmap gV `[v`]

" run ruby code with F5
imap <F5> <Esc>:!ruby %<CR>
map <F5> :!ruby %<CR>

" add new line below the current line (like eclipse)
imap <S-CR> <Esc>o
nmap <S-CR> o

" switching tabs ala firefox
" map <C-S-]> gt
" map <C-S-[> gT
map <M-1> 1gt
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt
map <M-9> 9gt
map <M-0> :tablast<CR>

set sw=2
set sts=2

" Ctrl-S save (works in command and insert mode)
map <C-S> :w<CR>
imap <C-S> <Esc>:w<CR>i

" Ctrl-R look for files (FuzzyFile)
" Ctrl-E look in buffers
map <C-R> :FufFile<CR>
imap <C-R> :FufFile<CR>
map <C-E> :FufBuffer<CR>
imap <C-E> :FufBuffer<CR>

"nerdtree settings
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

"explorer mappings
nnoremap <f2> :NERDTreeToggle<cr>

"snipmate settings
let g:snips_author = "Jorge //\\\\\\"

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

"folding settings
set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by defaul

