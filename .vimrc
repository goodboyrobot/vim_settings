set nocompatible
" Set up Vundle
	let iCanHazVundle=1
	let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
	if !filereadable(vundle_readme)
		echo "installing Vundle.."
		echo ""
		silent !mkdir -p ~/.vim/bundle
		silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
		let iCanHazVundle=0
	endif
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
	Bundle 'gmarik/vundle'
	if iCanHazVundle == 0
		echo "Installing Bundles, please ignore key map error messages"
		echo ""
		:BundleInstall
	endif

" Bundles
"	Bundle 'ervandew/supertab'
	Bundle 'jeffreyiacono/vim-colors-wombat'
	Bundle 'jnurmine/Zenburn'
	Bundle 'kien/rainbow_parentheses.vim'
"	Bundle 'koron/nyancat-vim'
	Bundle 'Lokaltog/vim-powerline'
	Bundle 'mrtazz/molokai.vim'
	Bundle 'msanders/snipmate.vim'
	Bundle 'rickharris/vim-monokai'
	Bundle 'scrooloose/nerdtree'
"	Bundle 'koron/nyancat-vim'
"	Bundle 'Rip-Rip/clang_complete'
	Bundle 'mattn/gist-vim'
	Bundle 'mattn/webapi-vim'

" common sets
	set guifont=Consolas	" set the font of my vim
	set clipboard=unnamed 	" set the clipboard to linux
	set autoindent 			" set vim to autoindent after newline
	set tabstop=4 			" tab = 4 spaces
	set shiftwidth=4 		" 
	set textwidth=80
	set expandtab
	set colorcolumn=+1
	set number
	set ignorecase
	set smarttab
	set foldmethod=marker
	set incsearch
	set hlsearch
	set t_Co=256
	set wildchar=<tab>
	set nobackup
	set nowritebackup
	set noswapfile
	set scrolloff=5
	set sidescroll=1
	set sidescrolloff=10
	set autochdir
	set laststatus=2
	set encoding=utf-8
	set list
	set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮ " show me invisible chars
	set noswapfile
	let mapleader = ","
	let maplocalleader = "\\"

syntax on
set background=dark
colorscheme solarized
highlight ColorColumn ctermbg=0
au BufWinEnter * silent! loadview
au BufWinLeave * silent! mkview
au BufWritePost .vimrc so ~/.vimrc "reload .vimrc on every save
au FocusLost * :wa
"au Syntax * RainbowParenthesesLoadBrace
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au VimEnter * RainbowParenthesesToggle
"au VimResized * exe "normal! \<c-w>="
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>
iabbrev (c) ©
iabbrev ldis ಠ_ಠ
iabbrev lhap ಥ‿ಥ
iabbrev lmis ಠ‿ಠ
iabbrev lsad ಥ_ಥ
iabbrev (r) ®
iabbrev tflip (╯°□°）╯︵ ┻━┻)
iabbrev (tm) ™
map <c-o> :NERDTreeToggle<cr>
map <f1> <esc>
map <f3> :set hlsearch!<cr>
nmap <f5> :w <cr>:!clear<cr>:!cc %<cr>
nmap <f9> :wa<cr>:!cc % -o %.out<cr>
map <leader>m <c-w><right>
map <leader>n <c-w><left>
map <leader><tab> :scratch<cr>
map <leader>t :tabnew<cr>
map <leader>v <c-w><c-v>
map <leader>w <c-w><c-w>
map <leader>kf gg=G``
map <space> /
map <leader>{ A /*{{{*/<esc>
map <leader>} A /*}}}*/<esc>
nnoremap <leader>! :!
nnoremap <leader>s vip:!sort<cr>
nnoremap m k
nnoremap / /\v
noremap <f7> :set spell!<cr>
noremap j gj
noremap k gk
set mouse=a
vnoremap < <gv
vnoremap > >gv
vnoremap <leader>s :!sort<cr>
vnoremap / /\v
" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15
" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType="context"
" Clang Complete Settings
let g:clang_use_library=1
let g:clang_complete_copen=1
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
let g:clang_memory_percent=70
let g:clang_auto_select=2
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'
let g:clang_hl_errors=1
