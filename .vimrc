call plug#begin('~/.vim/plugged')
	if has('nvim')
	  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
	endif
	Plug 'cespare/vim-toml'
	Plug 'morhetz/gruvbox'
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'mengelbrecht/lightline-bufferline'
	Plug 'frazrepo/vim-rainbow'
	Plug 'dense-analysis/ale'
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
call plug#end()

" Filetype stuff
filetype plugin on
syntax on

" Change leader key
let mapleader = ','

" Set up colorscheme
colorscheme gruvbox
set background=dark

" Set up numbering
set number
set relativenumber

" For the lightline pluggin
set laststatus=2
set showtabline=2
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
    \ }
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" Tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Colors for bracket completion
let g:rainbow_active=1

" Configure Ale
let g:ale_julia_executable = 'julia'

" Configure deoplete
let g:deoplete#enable_at_startup = 1

" Tab completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
