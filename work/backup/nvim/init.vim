call plug#begin('~/.nvim/plugged')
Plug '~/.nvim/plugged/which-key.nvim'
Plug '~/.nvim/plugged/tagbar'
Plug '~/.nvim/plugged/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" plugin setup
lua << EOF
    require("which-key").setup {

    }
EOF

" other nvim configuration
" most of it is common vimrc

nmap <F2> :TagbarToggle<CR>

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
