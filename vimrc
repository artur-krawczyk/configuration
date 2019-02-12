set relativenumber
set number  
set textwidth=80
runtime! debian.vim

if has("syntax")
  syntax on
endif

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

call plug#begin('~/.vim/plugged/')

Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

Plug 'w0rp/ale'
Plug 'ignacysokolowski/python-syntax'
Plug 'ervandew/supertab'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'fisadev/vim-isort'
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'jszakmeister/vim-togglecursor'
Plug 'xolox/vim-misc'

Plug 'xolox/vim-session'
let g:session_autosave = 'yes'
let g:session_autoload = 'no'
nnoremap <leader>s :OpenSession<CR>
nnoremap <leader>S :OpenSession
Plug 'Valloric/YouCompleteMe' " autocompletion
Plug 'bkad/CamelCaseMotion'
Plug 'nathanaelkane/vim-indent-guides'
if has("gui_running")
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_auto_colors = 0
    let g:indent_guides_guide_size = 1
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=234 guibg=#1C1C1C
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234 guibg=#1C1C1C
else
    let g:indent_guides_enable_on_vim_startup = 0
endif

Plug 'tpope/vim-fugitive'

call plug#end()

