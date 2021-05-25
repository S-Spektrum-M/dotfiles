"####################################################################################
"####################################################################################
"##████████████████████████████████████████████████████████████████████████████████##
"##█░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░██████████░░░░░░███████████████████████████████##
"##█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░░░░░▄▀░░███████████████████████████████##
"##█░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀░░█████░░░░░░█████████░░░░░░█████##
"##█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░▄▀░░░░░░▄▀░░█████░░▄▀░░█████████░░▄▀░░█████##
"##█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░██░░▄▀░░██░░▄▀░░█░░░░░░▄▀░░░░░░█░░░░░░▄▀░░░░░░█##
"##█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░██░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█##
"##█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░██░░░░░░██░░▄▀░░█░░░░░░▄▀░░░░░░█░░░░░░▄▀░░░░░░█##
"##█░░▄▀▄▀░░▄▀▄▀░░███░░▄▀░░███░░▄▀░░██████████░░▄▀░░█████░░▄▀░░█████████░░▄▀░░█████##
"##█░░░░▄▀▄▀▄▀░░░░█░░░░▄▀░░░░█░░▄▀░░██████████░░▄▀░░█████░░░░░░█████████░░░░░░█████##
"##███░░░░▄▀░░░░███░░▄▀▄▀▄▀░░█░░▄▀░░██████████░░▄▀░░███████████████████████████████##
"##█████░░░░░░█████░░░░░░░░░░█░░░░░░██████████░░░░░░███████████████████████████████##
"##████████████████████████████████████████████████████████████████████████████████##
"####################################################################################
"####################################################################################


set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'                       " Vundle(might switch to vim-plugged)
Plugin 'tpope/vim-fugitive'                         " Fugitive for git
Plugin 'rakr/vim-one'                               " One Dark/Light colorscheme
Plugin 'gcmt/taboo.vim'                             " Tab Editing
Plugin '907th/vim-auto-save'                        " Auto-Save
Plugin 'ctrlpvim/ctrlp.vim'                         " Fuzzy Finding
Plugin 'puremourning/vimspector'                    " Debbuging
Plugin 'preservim/nerdcommenter'                    " Commenting
Plugin 'preservim/nerdtree'                         " NERDtree
Plugin 'git@github.com:Valloric/YouCompleteMe.git'  " YCM code completions
Plugin 'airblade/vim-gitgutter'                     " Git Gutter
Plugin 'frazrepo/vim-rainbow'                       " Rainbow pharenthesis
Plugin 'karoliskoncevicius/vim-sendtowindow'        " Send to window
Plugin 'vim-airline/vim-airline'                    " Airline(Because I couldn't get light line to work 😥 )
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sheerun/vim-polyglot'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-glaive'
" No longer using
"Plugin 'frazrepo/vim-rainbow'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'joshdick/onedark.vim'
"Plugin 'severin-lemaignan/vim-minimap'
call vundle#end()

au VimEnter * NERDTree | wincmd p
au BufWrite * %s/\s\+$//e | "NERDTreeRefreshRoot

let NERDTreeShowHidden=1
let g:auto_save = 1
let g:ctrlp_show_hidden = 1
let g:vimspector_enable_mappings = 'HUMAN'
let g:rainbow_active = 1
let mapleader = " "
let g:airlinethme = "onedark"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


filetype plugin indent on
if &t_Co > 1
    syntax enable
endif
set smartcase
set incsearch
set autowrite
set relativenumber
set number
set smartindent
set tabstop=4
set expandtab
set nowrap
set hidden
colo one
set background=dark
set termguicolors
set encoding=UTF-8
set cursorline
set nobackup
set nowritebackup
set noswapfile
set colorcolumn=110
set scl=auto
set updatetime=100 " 100ms update

"highlight ColorColumn ctermbg=524384
"highlight Normal ctermbg=none
"highlight Terminal ctermbg=none
"highlight TabLineSel ctermfg=white ctermbg=524384
"highlight TabLine ctermfg=524384 ctermbg=white

fu GetTerm()
    terminal
    wincmd x
    res 45
endfu

fu Run() " Run Command
    if &filetype ==# 'python'
            ! python3 %
    elseif &filetype ==# 'javascript'
            ! node %
    elseif &filetype ==# 'c'
            make
            make run
    elseif &filetype ==# 'cpp'
            make
            make run
    elseif &filetype ==# 'typescript'
            ! tsc % --outFile outfile.js; node outfile.js
    elseif &filetype ==# 'java'
            make
            make run
    else
        echom "unsupported filetype"
    endif
endfu

fu ToggleColors()
    if &background ==# 'dark'
        set background=light
    else
        set background=dark
    endif
endfu


" Git
nnoremap <leader>gc :Git commit     %
nnoremap <leader>gp :Git push origin
nnoremap <leader>gP :Git pull origin
" YCM
nnoremap <leader>gd :YcmCompleter GoTo<cr>
nnoremap <leader>gf :YcmCompleter FixIt<cr>

" Send To Window commands
nmap    <leader> H <Plug>SendLeft
nmap    <leader> J <Plug>SendDown
nmap    <leader> K <Plug>SendUp
nmap    <leader> L <Plug>SendRight

" Misc
nnoremap <leader><F10> :call Run()
nnoremap <leader><C-t> :NERDTreeToggle
nnoremap <leader><C-f> :call ToggleColors()
nnoremap <leader><F2>  :FormatCode
