call plug#begin('~/appdata/Local/nvim/plugged')
Plug 'JuliaEditorSupport/julia-vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'lervag/vimtex'
Plug 'nvie/vim-flake8'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/csv.vim'
Plug 'cespare/vim-toml'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.x'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'stephpy/vim-yaml'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Plug 'ckunte/latex-snippets-vim', { 'tag': '*' }
call plug#end()

" Enable shift insert for copying
imap <S-Insert> <C-R>*

" Enable Python3
let g:python3_host_prog = 'C:\Users\sigurdj\AppData\Local\Programs\Python\Python310\python.exe'

" Colorscheme
colorscheme gruvbox

" Configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#fnamemod = ':t'

" Change the leader key
let mapleader = ","

" Line numbering
set number
set relativenumber

" Filetype stuff
filetype plugin on
filetype plugin indent on

" Set tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Julia stuff
let g:latex_to_unicode_auto = 1
 
" Ultisnip stuff
let g:UltiSnipsExpandTrigger="<Enter>"

" coc stuff
" Use tab for trigger completion with characters ahead and navigate.
 " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
 " other plugin before putting this into your config.
" Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
 inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ CheckBackspace() ? "\<Tab>" :
	\ coc#refresh()
	inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" LaTeX stuff
filetype on
au BufNewFile,BufRead *.tikz set filetype=tex
" This enables Vim's and neovim's syntax-related features. Without this, some
 " VimTeX features will not work (see ":help vimtex-requirements" for more
 " info).
 syntax enable
 " Viewer options: One may configure the viewer either by specifying a built-in
 " viewer method:
 let g:vimtex_general_viewer = 'SumatraPDF'

 let g:tex_flavor = 'latex'

 syntax on
