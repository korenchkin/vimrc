" Plugins
set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-sensible'

Bundle 'wellle/targets.vim'
Bundle 'Lokaltog/vim-easymotion'
"let g:EasyMotion_leader_key = '<Leader>'

Bundle 'scrooloose/nerdcommenter'

Bundle 'tpope/vim-surround'

" Ende Plugins

" Setze <Leader>
let mapleader=" "

" syntax highlighting
filetype plugin indent on
syntax on

" Zeilennummern
set number

" Hebe aktuelle Zeile hervor
set cursorline

" Bildschirm nicht refreshen wenn makros ausgeführt werden
set lazyredraw

" Persistent undo
set undodir=$HOME/.vim/undo
set undofile

" Farbschema
colorscheme github

if has("gui_running")
	" Schalte Menüleiste aus
	set guioptions-=m
	set guifont=source\ code\ pro
else
	" Mausunterstützung im Terminal
	set mouse=a
endif

" Spaces statt tabs für rust
autocmd FileType rust setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

" Keine Zeilennummern für vims Hilfedateien
autocmd FileType help setlocal nonumber

" Keymappings

" Kopiere in die Zwischenablage
nnoremap <Leader>y "+y
nnoremap <Leader>Y "+Y
vnoremap <Leader>y "+y
vnoremap <Leader>Y "+Y

" Einfügen von der Zwischenablage
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P
