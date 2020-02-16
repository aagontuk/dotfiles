" required for Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ajmwagar/vim-deus'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on

" disabled plugins
set runtimepath-=~/.vim/bundle/SimpylFold

" General configuration

" use relative line number
set rnu
" Turn on syntax highlighting
syntax on
" If backspace doesn't work like it should be
set bs=2

" Transform tabs into spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Use SPACE as leader key
let mapleader = " "

" remap Esc to jj as Esc is too far
inoremap ii <Esc>

" remap movement in insert mode
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

" remap tab movements
nnoremap <C-l> gt 
nnoremap <C-h> gT 

" split window settings
set splitright
set splitbelow

" open help in a horizontal split
:cabbrev h vert h

" Alias for opening terminal in right vertical split
" without creating a new copy of the current window
command Term :vs|:term ++curwin
noremap <leader>t :Term<CR>

" keyboard shortcut for openig terminal

" deus colorscheme setup
" NOTE: Does't work properly in gnome-terminal
" may be it doesn't support true color?
set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark " Setting dark mode
colorscheme deus
let g:deus_termcolors=256

" ycm set up
let g:ycm_global_ycm_extra_conf = '$HOME/dotfiles/ycm/ycm_extra_conf.py'
let g:ycm_filetype_whitelist = {'*': 1}
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_semantic_triggers = {'c' : 're![a-z]'}

" NERDTree configuration
" Toggle NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" SimplyFold configurations
let g:SimpylFold_docstring_preview=1

" tagbar configuration
map <F8> :TagbarToggle<CR>
