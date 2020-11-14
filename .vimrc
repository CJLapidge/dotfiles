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

"plugins for js/react dev
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense engine
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

"plugins that might be helpful for unity/c# dev, which I'm trying out over time
"Plug 'ycm-core/YouCompleteMe'
"Plug 'lyuts/vim-rtags'                     " C++ code navigation
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

let mapleader = " "
"use the system clipboard
set clipboard=unnamedplus

"don't copy deleted chars to the clipboard
nnoremap x "_x

"options to not copy deleted lines to the clipboard
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

"clear search term with leader esc
nnoremap <leader><esc> :noh<return><esc> 

"make splits more natural
set splitbelow
set splitright

"navigate splits without ctrl-w
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"alt j+k to move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <leader>n :NERDTree<return> 
