set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape

set noswapfile
set nowrap
set incsearch
set hlsearch "highlight persists after search
set ignorecase smartcase
set history=500
set cc=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey
syntax on
" set nu rnu
set nu
set mouse=a
set smartindent
"tab size to 4
set tabstop=4
set shiftwidth=4
set softtabstop=0 "noexpandtab set to not make spaces out of tabs
set expandtab
set cursorline
set guicursor=

set wildmenu		"Tab autocomplete in command modea

" Persistent undo
set undodir=/home/sorin/.config/nvim/undo
set undofile
set undolevels=1000
set undoreload=10000

" colorscheme gruvbox8
" set background=dark


" lua require'nvim_lsp'.clangd.setup{ }
" lua require('colorbuddy').colorscheme('gruvbuddy')
" lua require'nvim_lsp'.clangd.setup{on_attach=require'completion'.on_attach}

" ------------- LSP
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
