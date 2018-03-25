set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ## PLUGINS HERE ##
" let Vundle manage Vundle, required!
Plugin 'VundleVim/Vundle.vim'

" The bundles you install will be listed here
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'christoomey/vim-tmux-navigator'

" on try-out from John Crepezzi
" Blend-ins
Plugin 'sickill/vim-pasta'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
" NoBlend-ins
Plugin 'vim-scripts/ZoomWin'
Plugin 'vim-scripts/tComment'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tristen/vim-sparkup'

call vundle#end()
" General settings
syntax on
filetype indent plugin on
set t_Co=256
let g:solarized_termcolors=256
colorscheme molokai
set hlsearch
set rnu
set t_ut=
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


nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv




"PLUGIN SETUPS
" Powerline setup
"let g:Powerline_symbols = 'fancy'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
set laststatus=2

" ctrl-p setup "
let g:ctrlp_follow_symlinks=1
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = ''
let g:ctrlp_max_files = ''
let g:ctrlp_max_depth = 40
let g:ctrlp_show_hidden = 1

" nerdtree setup
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

