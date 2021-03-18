"""""""""""""""""""""""""""""""""""""""""
" Remap keys
"""""""""""""""""""""""""""""""""""""""""

" Use Esc to exit terminal state
:tnoremap <Esc> <C-\><C-n>

" use fd as escape
 :inoremap fd <esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug - manage plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim')

" Declare the list of plugins.

" Sensible vim defaults
Plug 'tpope/vim-sensible'

"Plug 'junegunn/seoul256.vim'

" ?? don't remember
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Ale linter 
Plug 'dense-analysis/ale'

"""""""""""""""""""""""""""""""""""""""""""""""
" Clojure specific plugins
"""""""""""""""""""""""""""""""""""""""""""""""

" Conjure clojure inline completion
Plug 'Olical/conjure', {'tag': 'v4.15.0'}

" Necessary for vim-jack-in plugins for Clojure REPL integration
Plug 'tpope/vim-dispatch'
Plug 'clojure-vim/vim-jack-in'
Plug 'radenling/vim-dispatch-neovim'

" parinfer parentheses balancing for Clojure
Plug 'eraserhd/parinfer-rust', {'do':
        \  'cargo build --release'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End Clojure Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug - end plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set leader key
let maplocalleader = ","

" Set Gruvbox
autocmd vimenter * ++nested colorscheme gruvbox

"Full color theme support for neovim
set termguicolors

" Set relative numbering
set relativenumber
