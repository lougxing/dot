"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|


" ===
" === Auto load for first time uses
" ===
if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


"load plugins
call plug#begin('$HOME/.config/nvim/plugins')

"Plug 'nvim-treesitter/nvim-treesitter-refactor'
"Plug 'nvim-treesitter/playground'

" autocomplete" {
"	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"	Plug 'Shougo/deoplete-clangx'
"	let g:deoplete#enable_at_startup = 1
" }
"Plug 'derekwyatt/vim-fswitch'

Plug 'tomasr/molokai'
Plug 'preservim/tagbar'
Plug 'neoclide/jsonc.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'zeekay/vim-beautify'
Plug 'mbbill/undotree'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'ziontee113/syntax-tree-surfer'
Plug 'junegunn/goyo.vim'

"  show buffers {
	Plug 'bling/vim-bufferline'
	map <C-J> :bnext<CR>
	map <C-K> :bprev<CR>
" }

"  highlight {
    Plug 'nvim-treesitter/nvim-treesitter'
    au FileType go TSBufToggle highlight
" }

"  vim-go {
    Plug 'fatih/vim-go'
   "let g:go_debug=['lsp']
    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'
    au filetype go inoremap <buffer> . .<C-x><C-o>
    "let g:go_gopls_options = ['-listen.timeout=0']
    au FileType go nmap <leader>d <Plug>(go-def)
" }

"  select the closest text object {
   "<Enter>
	Plug 'gcmt/wildfire.vim'
" }

"  easy jump any where " {
	Plug 'easymotion/vim-easymotion'
	let g:EasyMotion_verbose = 0
	let g:EasyMotion_startofline = 0
	nmap s <Plug>(easymotion-overwin-f2)
" }

"  jump to def and ref {
    " <leader> j
    Plug 'pechorin/any-jump.vim'
" }

"  hightlight/strip whitespace" {
    Plug 'ntpeters/vim-better-whitespace'
    nnoremap <unique> <leader>w :StripWhitespace<CR>
" }

"  fzf for fuzzy search {
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'Yggdroot/LeaderF'

    " activate fzf by ctrl-p
    nnoremap <silent> <C-p> :Files<CR>
" }

"  mundo for navigate in undo-tree {
    Plug 'simnalamburt/vim-mundo'
    nnoremap <F5> :MundoToggle<CR>

" }

"  tab align {
	Plug 'godlygeek/tabular'
" }

call plug#end()

set t_Co=256
let g:rehash256 = 1
colorscheme molokai
"-------------------------------------------------------------------------------------------------

" Compile function
"noremap r :call CompileRunGcc()<CR>
"func! CompileRunGcc()
"	exec "w"
"	if &filetype == 'c'
"		exec "!g++ % -o %<"
"		exec "!time ./%<"
"	elseif &filetype == 'cpp'
"		set splitbelow
"		exec "!g++ -std=c++11 % -Wall -o %<"
"		:sp
"		:res -15
"		:term ./%<
"	elseif &filetype == 'cc'
"		set splitbelow
"		exec "!g++ -std=c++11 % -Wall -o %<"
"		:sp
"		:res -15
"		:term ./%<
"	elseif &filetype == 'java'
"		set splitbelow
"		:sp
"		:res -5
"		term javac % && time java %<
"	elseif &filetype == 'sh'
"		:!time bash %
"	elseif &filetype == 'python'
"		set splitbelow
"		:sp
"		:term python3 %
"	elseif &filetype == 'go'
"		set splitbelow
"		:sp
"		:term go run .
"	endif
"endfunc
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number

set exrc
set secure
set hidden
set noexpandtab
set autoindent
"set list
"set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
silent !mkdir -p $HOME/.config/nvim/tmp/sessions
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.

"if has('persistent_undo')
"	set undofile
"	set undodir=$HOME/.config/nvim/tmp/undo,.
"endif

set updatetime=100
set virtualedit=block
set autoindent
set cindent
set laststatus=2
let mapleader=" "
set mouse=""
let g:tagbar_ctags_bin = '/opt/homebrew/bin/ctags'

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set statusline=%<%F\ %h%m%r%=%{tagbar#currenttag('%s\ ','','f')}%-.(%l,%c%V%)\ %P


