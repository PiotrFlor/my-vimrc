set nocompatible              " be iMproved, required
filetype off                  " required
" Focus the panel when opening it

call plug#begin('~/.vim/plugged')
 " PolyGlot
Plug 'sheerun/vim-polyglot'
 " NERD Tree
Plug 'preservim/nerdtree'
 "Tagbar
Plug 'preservim/tagbar'
 " Auto Pairs
Plug 'LunarWatcher/auto-pairs'
 " Vim Simple Complete
Plug 'maxboisvert/vim-simple-complete'
 " Hugo Helper
Plug 'robertbasic/vim-hugo-helper'
 " crtlsf 
Plug 'dyng/crtlsf'

call plug#end()
call vundle#end()            " required
filetype plugin indent on    " required

"----------------------"
"     vim settings     "
"----------------------"
set nu      " Enable line numbers
syntax on   " Enable syntax highliting
set tabstop=4                 " How many columns of whitespace a \t is worth
set incsearch                 " Enable incremental search
set shiftwidth=4              " How many columns of whitespaces a "level of indentation" is worth
set expandtab                 " Use spaces when tabbing
set hlsearch                  " ENable highlight search
set termwinsize=12x0          " Set terminal size
set splitbelow                " Always split below
set mouse=a                   " Enable mouse drag on window splits
" Key mapping
nmap <C-B> :buffers<CR>
nmap <C-J> :term<CR>

"----------------------"
" NERDTree  settings   "
"  --------------------"
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinSize = 31        " Set panel width to 31 columns
" Key mapping
nmap <F2> :NERDTreeToggle<CR>

"----------------------"
"   tagbar settings    "
"----------------------"
let g:tagbar_autofocus = 1" Highlight the active tag
let g:tagbar_autoshowtag = 1" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'" Mapping to open and close the paneln
" Key mapping
nmap <F8> :TagbarToggle<CR>

"----------------------"
" Auto Pairs settings  "
"----------------------"
let g:AutoPairsShortcutToggle = '<C-P>'

"----------------------"
"   crtlsf settings    "
"----------------------"
let g:ctrlsf_backend = 'ack'
let g:ctrlsf_auto_close = { "normal": 0, "compact": 0 }
let g:ctrlsf_auto_focus = { "at": "start" }
let g:ctrlsf_auto_preview = 0
let g:ctrlsf_case_sensitive = 'smart'
let g:ctrlsf_default_view = 'normal'
let g:ctrlsf_regex_pattern = 0
let g:ctrlsf_position = 'right'
let g:ctrlsf_windsize = '46'
let g:ctrlsf_default_root = 'cwd'
" Key mapping
nmap <C-F>f <Plug>CtrlSFPrompt " (Ctrl+F) Open search prompt (Normal Mode)
xmap <C-F>f <Plug>CtrlSFVwordPath " (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-F>F <Plug>CtrlSFVwordExec " (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath " (Ctrl-F + F) Perform search with selection (Visual Mode)
nmap <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR> " (Ctrl-F + o )Open CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>  " (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR> " (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
