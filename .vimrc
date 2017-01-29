set nocompatible              " required
filetype off                  " required
colo evening
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'Valloric/YouCompleteMe'

Plugin 'nvie/vim-flake8'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'vim-airline/vim-airline'
Plugin 'powerline/fonts'
Bundle 'chase/vim-ansible-yaml'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=","
let python_highlight_all=1
syntax on
set number
set autoread
" Sets how many lines of history VIM has to remember
set history=500

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 

set showcmd


let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_path_to_python_interpreter='/usr/bin/python3'
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" This configuration filters out .pyc, .git, .hg, .svn 

" NERDTree -----------------------------

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap <leader>t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']


filetype plugin on
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

" use goimports for formatting
let g:go_fmt_command = "goimports"

" turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Open go doc in vertical window, horizontal
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"  <CR>
