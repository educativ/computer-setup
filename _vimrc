"Plugins===================================

set shell=/bin/sh
call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/vim-easymotion' "move anywhere visually
Plug 'MarcWeber/vim-addon-mw-utils' "pre-req for snipmate
Plug 'Raimondi/delimitMate' "injects closing quotes/brackets
Plug 'Shougo/unite.vim' "basically everything
Plug 'Shougo/vimproc.vim' "used by unite
Plug 'airblade/vim-gitgutter' "show git changes in the gutter
Plug 'ap/vim-css-color' "color css
Plug 'bling/vim-airline' "cool statusbar
Plug 'chrisbra/csv.vim' "csv plugin
Plug 'chrisnojima/nojima-vim-snippets' "my snippets
Plug 'ctrlpvim/ctrlp.vim' "smart search (fork)
Plug 'editorconfig/editorconfig-vim' "editorconfig
Plug 'garbas/vim-snipmate' "snippet engine
Plug 'gregsexton/gitv' "better git history
Plug 'honza/vim-snippets' "common snippets
Plug 'kien/rainbow_parentheses.vim' "color parentheses
Plug 'majutsushi/tagbar' "show tags
Plug 'maksimr/vim-jsbeautify' "format js
Plug 'matchit.zip' "smarter %
Plug 'mileszs/ack.vim' "better search than grep
Plug 'moll/vim-node' "helpers for node, jump through requires
Plug 'myusuf3/numbers.vim' "show line numbers as offsets
Plug 'nathanaelkane/vim-indent-guides' "visually shows indents
Plug 'ntpeters/vim-better-whitespace' "show trailing whitespace
Plug 'pangloss/vim-javascript' "better js support
Plug 'rking/ag.vim' "the silver searcher
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } "file explorer
Plug 'scrooloose/syntastic' "better syntax highlighting
Plug 'terryma/vim-multiple-cursors' "multi cursors
Plug 'tomasr/molokai' "simple colorscheme
Plug 'tomtom/tlib_vim' "pre-req for snipmate
Plug 'tpope/vim-abolish' "smarter substitute and abbreviate
Plug 'tpope/vim-dispatch' "async calls
Plug 'tpope/vim-fugitive' "git integration
Plug 'tpope/vim-repeat' "repeat commands better
Plug 'tpope/vim-surround' "surround things better
Plug 'tpope/vim-unimpaired' "toggle mappings quicker

call plug#end()

"Settings ===================================
set ai "auto indent
set autoread "auto reload changed files
set clipboard=unnamed "use system clipboard for yank
set cmdheight=2 "set command height
set diffopt=vertical "vertical diffs
set encoding=utf8 "we like utf8
set expandtab "tabs turn into spaces
set ffs=unix,dos,mac "acceptable file formats
set foldcolumn=1 "how wide the fold column is
set history=700 "how much history to store
set hlsearch "highlight as you search
set ignorecase "ignore case as you search
set incsearch "incremental search
set laststatus=2 "always show the statusbar
set lazyredraw "buffers screen updates
set lbr "linebreak
set magic "magic regexp options
set mat=2 "blink speed
set nobackup "no backup files
set noerrorbells "no sounds
set noswapfile "no backup files
set novisualbell "no sounds
set nowb "no backup files
set nu "show line numbers
set shiftwidth=4 "tab width
set showcmd "show current command on lower right, useful for leader
set showmatch "show matching brackets
set si "smart indent
set smartcase "override ignorecase when you really want case
set smarttab "make tabs correct
set spell "spellcheck
set t_vb= " no sounds
set tabstop=4 "tabs
set tm=500 "no sounds
set tw=0 "never linebreak
set wrap "wrap lines
syntax enable "show syntax

"Style Settings ===================================
colorscheme molokai
set guifont=Anonymous\ Pro\ for\ Powerline:h16

"Plugin Settings ===================================
au BufNewfile,BufRead *.less set ft=scss "less files treated like css
au BufNewfile,BufRead *.css set ft=scss "less files treated like css
au BufNewfile,BufRead *.tpl set ft=php "templates as php
au Syntax * RainbowParenthesesLoadBraces "show rainbow on {
au Syntax * RainbowParenthesesLoadRound "show rainbow on (
au Syntax * RainbowParenthesesLoadSquare "show rainbow on [
au VimEnter * RainbowParenthesesToggle "auto load rainbow

let NERDTreeMinimalUI=1 "Hide help text
let NERDTreeShowBookmarks=1 "show bookmarks on start
let g:airline#extensions#tabline#enabled = 1 "extensions in airline
let g:airline_powerline_fonts = 1 "good fonts in airline
let g:ctrlp_cmd = 'CtrlP' "control-p command
let g:ctrlp_map = '<c-p>' "control-p mapping
let g:ctrlp_match_window = 'max:20,results:20'
let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 'ra' "start ctrp back to the root of our repo
let g:ctrlp_lazy_update = 1 "update after you stop typing
let g:ctrlp_max_files = 0 "unlimited files
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_clear_cache_on_exit = 0 "don't clear cache
let g:indent_guides_enable_on_vim_startup = 1 "show indents on startup
let g:syntastic_aggregate_errors = 0 "don't show all errors, too slow
let g:syntastic_always_populate_loc_list = 1 "so you can jump with ]l
let g:syntastic_check_on_open=1 "auto load syntastic
let g:syntastic_enable_highlighting = 1 "more showy
let g:syntastic_enable_highlighting=1 "highlight syntax errors
let g:syntastic_error_symbol = '' "fancy
let g:syntastic_style_error_symbol = '' "fancy
let g:syntastic_style_warning_symbol = '' "fancy
let g:syntastic_warning_symbol = '' "fancy
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_width = 30
let g:ackprg = 'ag --nogroup --nocolor --column -max-count=10 --silent'

" Key maps
:command! Q :q
let g:mapleader = "," "comma better than \
let mapleader = "," "comma better than \
map <leader>2 :silent !open -a /Applications/iTerm.app/ .<CR>
map <leader>cd :cd %:p:h<CR>
map <leader>n <c-w>w
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
map <leader>nn :NERDTreeToggle<cr>
map <leader>o <c-w>o<cr>
map <leader>t :CtrlPTag<cr>
map <leader>b :TagbarToggle<cr>
map <leader>w :w<cr>
map <leader>jl :%!jsonlint -p<cr>
map <leader>js :set ft=javascript<cr>
map <leader>to :tabo<cr>
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>q :normal @q<CR>
map <leader>sass :%!sass-convert --from=CSS --to=SCSS<CR>

:nnoremap n nzz
:nnoremap N Nzz
