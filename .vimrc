set nocompatible
filetype on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" ## PLUGINS HERE ##
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" The bundles you install will be listed here
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'christoomey/vim-tmux-navigator'

" on try-out from John Crepezzi
" Blend-ins
Bundle 'sickill/vim-pasta'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
" NoBlend-ins
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/tComment'
Bundle 'FelikZ/ctrlp-py-matcher'
Bundle 'tristen/vim-sparkup'


" General settings
syntax on
filetype indent plugin on
colorscheme blackdust
set hlsearch
set rnu
"
"
"Autocommands
" Highligt excess line length

augroup vimrc_autocmds
    autocmd!
    "autocommands for Python
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap

    "autocommands for HTML
    autocmd FileType html setlocal sw=2 tabstop=2
    augroup END


"MAPPINGS
"Remapping leader to , 
let mapleader = ","
nmap <leader>h :tabnew %:h<CR>
nmap <leader>t :tabnew<CR>

"PLUGIN SETUPS
" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Nerdtree setup
map <F2> :NERDTreeToggle<CR>

" Python-mode setup
" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 1
"
" " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" autoimport nooo
let g:pymode_rope_autoimport = 0
" Don't autofold code
let g:pymode_folding = 0

