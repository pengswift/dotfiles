set nocompatible " Required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself.
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'majutsushi/tagbar'
Plugin 'sjl/gundo.vim'
Plugin 'vim-misc'
Plugin 'xolox/vim-session'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'paranoida/vim-airlineish'
Plugin 'chrisbra/csv.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'docunext/closetag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'uarun/vim-protobuf'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'fatih/vim-go'


" Color schemes
Plugin 'altercation/vim-colors-solarized'

" Required, plugins available after.
filetype plugin indent on  
call vundle#end()            

syntax enable

" Basic
let mapleader = ";"
set laststatus=2
set encoding=utf-8
set fileencodings=utf-8,gbk
set hlsearch
set incsearch
set sw=4 ts=4 et
let g:proj_flags='imstcg'

" Color
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" BufExplorer
nnoremap ,e :e <C-R>=expand('%:p:h') . '/'<CR>
nmap <C-L> :BufExplorer<CR>

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Gundo
nmap <F3> :GundoToggle<CR>

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" enable tabline
let g:airline#extensions#tabline#enabled = 1

" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

" enable powerline-fonts
let g:airline_powerline_fonts = 1

" airline theme
let g:airline_theme = 'airlineish'

" vim-session
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

" ctrlp
let g:ctrlp_map = '<Leader>;'
let g:ctrlp_match_path_mode = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-go
let g:go_disable_autoinstall = 0

nmap <F2> Oimport pdb;pdb.set_trace()<ESC>

nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap <Leader>l :setlocal number!<CR>
nmap <Leader>o :set paste!<CR>
nmap <Leader>q :nohlsearch<CR>

nnoremap j gj
nnoremap k gk

au BufNewFile,BufRead *.py set foldmethod=indent foldnestmax=2
au BufNewFile,BufRead *.lua set foldmethod=indent foldnestmax=2
