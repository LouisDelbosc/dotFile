call plug#begin('~/.nvim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
" Plug 'fatih/vim-go'
" Plug 'Valloric/YouCompleteMe'
Plug 'chriskempson/base16-vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Lokaltog/vim-easymotion'
" Vim pluggin pour dl les plugin

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

call plug#end()

" Gestion des couleurs
set t_Co=16
colorscheme desert

syntax enable

" Load custom setting
source ~/.nvim/startup/mapping.vim
"source ~/.nvim/startup/color.vim
source ~/.nvim/startup/setting.vim
