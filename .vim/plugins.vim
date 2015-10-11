" wird von Vundle benötigt
set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" Pluginmanager
Plugin 'gmarik/Vundle.vim'

" 'Startpunkt'
Plugin 'tpope/vim-sensible'

" Fügt zusätzliche Objekte hinzu die mit anderen Befehlen benutzt werden
" können. Erlaubt es das Klammern, etc einfach zu bearbeiten.
" ci) kommt da her.
Plugin 'wellle/targets.vim'

" Kommentare
Plugin 'scrooloose/nerdcommenter'

" Klammern u.ä. einfach hinzufügen/ändern
Plugin 'tpope/vim-surround'

" Git Integration
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Bessere Statusleiste
Plugin 'bling/vim-airline'

" Tab completion
Plugin 'valloric/YouCompleteMe'

" solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

" Suche nach Dateien und Tags
Plugin 'kien/ctrlp.vim'

" Macht es einfacher vims undo tree zu navigieren
Plugin 'mbbill/undotree'

call vundle#end()

" airline einstellungen
let g:airline_left_sep=''
let g:airline_right_sep=''
