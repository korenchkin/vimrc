" Plugins
set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'

Plugin 'wellle/targets.vim'
Plugin 'Lokaltog/vim-easymotion'
"let g:EasyMotion_leader_key = '<Leader>'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

call vundle#end()

" Ende Plugins

" Setze <Leader>
let mapleader=" "

" Mappe jk als Escape
inoremap jk <Esc>

" syntax highlighting
filetype plugin indent on
syntax on

" Zeilennummern
set number

" Hebe aktuelle Zeile hervor
set cursorline

" Mach Whitespace am Ende einer Zeile rot
let wm1=matchadd('ErrorMsg', '\s\+\%#\@<!$')
" Mach Leerzeichen vor Tabs rot
let wm2=matchadd('ErrorMsg', ' \+\ze\t')

" Bildschirm nicht refreshen wenn makros ausgeführt werden
set lazyredraw

" Persistent undo
set undodir=$HOME/.vim/undo
set undofile

" Farbschema
set t_Co=256
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

" Lösche in die Zwischenablage
nnoremap <Leader>d "+d
nnoremap <Leader>D "+D
vnoremap <Leader>d "+d
vnoremap <Leader>D "+D

" Einfügen von der Zwischenablage
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" Fenster befehle

" bewegen
nnoremap <silent> <Leader>h :wincmd h<CR>
nnoremap <silent> <Leader>j :wincmd j<CR>
nnoremap <silent> <Leader>k :wincmd k<CR>
nnoremap <silent> <Leader>l :wincmd l<CR>

" größe ändern
nnoremap <silent> <Leader>_ :wincmd _<CR>
nnoremap <silent> <Leader>= :wincmd =<CR>
nnoremap <silent> <Leader>\| :wincmd \|<CR>
