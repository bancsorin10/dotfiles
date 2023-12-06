call plug#begin('~/.config/nvim/plugged')

"Plug 'lifepillar/vim-gruvbox8'
" Plug 'neovim/nvim-lspconfig'
" Plug 'skammer/vim-css-color'
" Plug 'preservim/nerdcommenter'
" Plug 'neovim/nvim-lspconfig'
" Plug 'tjdevries/colorbuddy.vim'
" Plug 'tjdevries/gruvbuddy.nvim'
" Plug 'nvim-lua/completion-nvim'
" Plug 'ThePrimeagen/vim-be-good'
Plug 'neovim/nvim-lspconfig'
" Plug 'vmchale/ion-vim'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-lua/telescope.nvim'


" Plug 'jremmen/vim-ripgrep'


" bs of c# thingy
" Plug 'OmniSharp/omnisharp-vim'
" Plug 'dense-analysis/ale'

" plugin for java lsp
" Plug 'mfussenegger/nvim-jdtls'

call plug#end()

" ---------- NERDCommenter ---------------------
" Space after comment delimiter
let g:NERDSpaceDelims = 1


" ---------- completion-nvim -------------------
" Completion settings
set completeopt=menuone,noinsert,noselect

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
" Avoid showing message extra message when using completion
set shortmess+=c
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
