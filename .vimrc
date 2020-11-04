syntax on

set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

"LINE NUMBERING
set number
set relativenumber
"Relative numbering, apart from the active line
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
"highlight current line in insert mode
hi CursorLine cterm=NONE ctermbg=black
autocmd InsertEnter,InsertLeave * set cul!  

"SEARCH
set incsearch                               " incremental search
set hlsearch                                " highlight seatch results

"PLUGINS
"requires https://github.com/junegunn/vim-plug:
"   put https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   in your ~/vimfiles/autoload
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes',
Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'                   " file search with ctrl-p
Plug 'mg979/vim-visual-multi'               " sublime-style multiselect with ctrl-n
Plug 'tpope/vim-surround'                   " allows replace-around with 'ca'
Plug 'preservim/nerdtree'                   " file explorer
Plug 'tpope/vim-fugitive'                  " git wrapper

"plugins that might be helpful for unity/c# dev, which I'm trying out over time
"Plug 'ycm-core/YouCompleteMe'
"Plug 'neoclide/coc.nvim',{'branch':'release'}" Intellisense engine
"Plug 'lyuts/vim-rtags'                     " C++ code navigation
"Plug 'leafgarland/typescript-vim'
"Plug 'jremmen/vim-ripgrep'
"Plug 'mbbill/undotree'
"Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'tpope/vim-dispatch'
"Plug 'vim-syntastic/syntastic'
call plug#end()

"THEMING
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
set colorcolumn=88


"use the system clipboard
set clipboard=unnamedplus

"make splits more natural
set splitbelow
set splitright

"navigate splits without ctrl-w
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = " "
nnoremap <leader><esc> :noh<return><esc>    " clear search term with leader esc

nnoremap <leader>n :NERDTree<return> 
