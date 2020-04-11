" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

"Distraction-free writing in Vim."
Plug 'junegunn/goyo.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Asynchronous code completion framework the utilizes certain features in 
" Neovim to make code completion more rapid.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Allows you to add matching parentheses, brackets, quotes, XML tags etc.,
" around text without having to navigate back and forth.
Plug 'tpope/vim-surround'

" The most efficient and easy way to open buffers & files on Vim
Plug 'ctrlpvim/ctrlp.vim'

" Makes the process of moving around the lines in a document or piece of 
" code much simpler by adding shortcuts to access different parts of the 
" visible lines.
Plug 'easymotion/vim-easymotion'

" Visual ornament to your Vim setup.
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Automatic quote and bracket completion.
Plug 'jiangmiao/auto-pairs'

" Automatic comment templates.
Plug 'scrooloose/nerdcommenter'

" Jedi
Plug 'davidhalter/jedi-vim'

" Lint
Plug 'neomake/neomake'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Synthwave84 theme
Plug 'artanikin/vim-synthwave84'

nmap <C-m> :NERDTreeToggle<CR>
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Set true colors and fix for tmux.
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Spaces and tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

" Set line numbers
set number
syntax on

" let g:python_host_prog = '/Users/emma/.pyenv/versions/3.7.4/bin/python'
let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/local/bin/python3'
let g:loaded_ruby_provider = 0

" Initialize plugin system
call plug#end()

colorscheme synthwave84
let g:airline_theme='violet'
