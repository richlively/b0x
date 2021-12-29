syntax on

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
