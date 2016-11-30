call plug#begin('~/.config/nvim/plugged')

Plug 'benekastah/neomake'
Plug 'kien/ctrlp.vim'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'duggiefresh/vim-easydir'
Plug 'hynek/vim-python-pep8-indent'
Plug 'groenewege/vim-less'
"Plug 'blueyed/vim-diminactive'

call plug#end()

colorscheme wombat

syntax enable

set visualbell
set showcmd

set timeoutlen=1000 ttimeoutlen=10

set splitright
set ruler

"set relativenumber
set number

set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

set backspace=indent,eol,start  " backspace through everything in insert mode

set wildignorecase

let g:netrw_list_hide='\.pyc$,\.DS_Store$'
set wildignore=*.pyc

set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/tmp
set nobackup
set nowritebackup

" disable middle click
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>


inoremap <C-space> <C-x><C-o>
imap <C-z> <C-y>,

" search results in the middle of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> <esc> :noh<cr><esc>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

let mapleader = ","
cnoreabbrev W w

" highlight and clean up whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace on save

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType python setlocal colorcolumn=80
hi ColorColumn ctermbg=lightgrey guibg=#3a3a3a
hi Search guibg=peru guifg=wheat

ab ipdb import ipdb; ipdb.set_trace()
ab pdb import pdb; pdb.set_trace()
ab clog console.log(

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

highlight NeomakeErrorMsg ctermbg=red guibg=#CC0000
highlight NeomakeWarningMsg ctermbg=yellow guibg=#FED428 guifg=#872C0C
let g:neomake_error_sign = { 'text': 'X', 'texthl': 'NeomakeErrorMsg', }
let g:neomake_warning_sign = { 'text': 'W', 'texthl': 'NeomakeWarningMsg', }

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_html_enabled_makers = []

autocmd! BufWritePost * Neomake
autocmd! BufRead * Neomake


function! HideEchoCurrentError()
    let g:neomake_echo_current_error=0
    return ''
endfunction

function! ShowEchoCurrentError()
    let g:neomake_echo_current_error=1
    return ''
endfunction

vnoremap <silent> <expr> <SID>HideEchoCurrentError HideEchoCurrentError()
nnoremap <silent> <script> v v<SID>HideEchoCurrentError
nnoremap <silent> <script> V V<SID>HideEchoCurrentError
nnoremap <silent> <script> <C-v> <C-v><SID>HideEchoCurrentError

augroup EchoCurrentError
    autocmd!
    autocmd InsertEnter * call ShowEchoCurrentError()
    autocmd InsertLeave * call ShowEchoCurrentError()
    autocmd CursorHold * call ShowEchoCurrentError()
augroup END


let g:gitgutter_sign_column_always = 1
