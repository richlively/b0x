execute pathogen#infect()
syntax on
filetype plugin indent on

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

set encoding=UTF-8
set nocompatible
if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

set wildmenu
set showcmd
set ignorecase
set smartcase

set autoindent
set confirm
set visualbell
set t_vb=

set mouse=a
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4

set background=dark
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
colorscheme onedark

let g:gitgutter_set_sign_backgrounds=0
set updatetime=500
let g:gitgutter_grep=''

nnoremap <F5> :NERDTreeToggleVCS<CR>
nnoremap <F6> :NERDTreeMirror<CR>:NERDTreeToggleVCS<CR>
nnoremap <F7> :NERDTreeFind<CR>
nnoremap <F8> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeGitStatusUseNerdFonts=1

nnoremap <F10> :GotoHeaderSwitch<CR>
nnoremap <F12> :GotoHeader<CR>
imap <F12> <Esc>:GotoHeader<CR>
let g:goto_header_associate_cpp_h=1
