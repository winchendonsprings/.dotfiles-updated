call plug#begin('~/.config/vim/plugged')

" Make sure you use single quotes
Plug 'morhetz/gruvbox'
Plug 'chriskempson/base16-vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'potatoesmaster/i3-vim-syntax'
Plug 'tmux-plugins/vim-tmux'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'myusuf3/numbers.vim'
Plug 'chrisbra/colorizer'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'captbaritone/better-indent-support-for-php-with-html'
Plug 'neomake/neomake'
Plug 'scrooloose/syntastic'
"Plug '2072/php-indenting-for-vim'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'

" Add plugins to &runtimepath
call plug#end()

"use true colors in term
"set termguicolors

colorscheme gruvbox
set bg=dark
" show line numbers
set number

" airline settings
"let g:airline_theme='base16_eighties'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts=0
""let g:airline#extensions#tabline#enabled=1
""let g:airline_theme='powerlineish'

" Ctrlp mappings
let g:ctrlp_map = '<c-p>'               " invokes Ctrlp
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_cmd = 'CtrlPBuffer'         " opens ctrlp in buffer mode rather than filesmode
"let g:ctrlp_max_files = 0               " no max file limit
let g:ctrlp_working_path_mode = 0       " search from current directory rather than project root
let g:ctrlp_by_filename = 1 	          " search by fuzzy filename rather than path
let g:ctrlp_match_window_reversed = 0	  " start results at top of ctrlp window
let g:ctrlp_max_height = 30 	          " ctrlp window lines high
let g:ctrlp_clear_cache_on_exit = 0     " does not clear cache after vim close
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp' "use cache
if executable('ag') "use ag if available
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" number of  spaces that a tab counts for
set tabstop=2

" number of  spaces that a tab counts for while editing a file
set softtabstop=2

" change shift size to 4
set shiftwidth=2

" tabs are actually spaces
set expandtab

" show line numbers
set number

" netrw
" show netrw in tree mode
let g:netrw_liststyle=3

" open files viewed in netrw in previous split
"let g:netrw_browse_split = 4
let g:netrw_browse_split = 0 

" set netrw size to 20%
let g:netrw_winsize = 20

" hide netrw banner
let g:netrw_banner = 0

" change from left splitting to right splitting netrw
let g:netrw_altv = 1

"     " force netrw into split
"     augroup ProjectDrawer
"       " Remove ALL autocommands for the current group.
"       autocmd! 
"       " force netrw into verticle split
"       autocmd VimEnter * :Vexplore 
"     augroup END


" show command in bottom bar
set showcmd

" highlight current line
set cursorline

" redraw only when we need to
set lazyredraw

" highlight matching [{()}]
set showmatch

" case insensitive search
set ignorecase

" only search upper case specific if upper case is type as search pattern
set smartcase

" allows :w!! to save if you forgot to open a readonly without perms
cmap w!! %!sudo tee > /dev/null %

" no welcome message
"set shortmess+=I

" More natural split opening open new split panes to right and bottom, which feels more natural than Vim’s default
set splitbelow
set splitright

" Round indent to multiple of 'shiftwidth'.
set shiftround

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=1

" add colors
set t_Co=256

" Change vims directory when navigating new files
set autochdir

" hit insert key before and after pasting
set pastetoggle=<Insert>

" Don't clutter dirs with tmp & swp
set backupdir=~/.tmp
set directory=~/.tmp

"NEOMAKE
autocmd! BufWritePost,BufEnter * Neomake "NeoMake on opening or saving file
"let g:neomake_verbose = 3
"let g:neomake_open_list = 1
let g:neomake_error_sign = {'text': 'E>', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': 'W>', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': 'M>', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': 'I>', 'texthl': 'NeomakeInfoSign'}
" php syntax checker
"set makeprg=php\ -l\ %
"set errorformat=%m\ in\ %f\ on\ line\ %l

" Syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
