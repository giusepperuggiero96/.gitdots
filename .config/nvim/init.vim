" NVim configuration

let mapleader = ","

" plugins
call plug#begin('/home/giosef/.config/nvim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'morhetz/gruvbox'
call plug#end()

" options

set title
set ruler
set number relativenumber
set visualbell
set mouse=a
set laststatus=2
set showmode
set showcmd
set wildmenu
set wildmode=list:longest,full

set shiftwidth=4
set smarttab
set tabstop=4
filetype plugin on
filetype indent on

set incsearch
set smartcase
set nohlsearch
set ic

set encoding=utf-8
set scrolloff=1
syntax enable
set wrap

set noshowmode

set history=1000

" Disable autocomment on next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set splits to open below and right
set splitbelow splitright


" mappings

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
nnoremap <leader>t :tabnew %<CR>

" plugin settings
let g:lightline = {'colorscheme': 'one', 'background': 'dark'}
let g:gruvbox_contrast_dark = 'hard'
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none
