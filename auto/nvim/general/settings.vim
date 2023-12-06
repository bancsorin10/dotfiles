set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape

set noswapfile
set nowrap
set incsearch
set hlsearch "highlight persists after search
set ignorecase smartcase
set history=500
set cc=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
syntax on
" set nu rnu
set nu
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

" set foldmethod=syntax
set foldmethod=indent
set foldlevel=99
" set foldopen=all

" colorscheme gruvbox8
" set background=dark

" iletype on
" set shortmess-=F

" how do you add this on autocommands? unsilent is proly necessary at least
" but how .... 
" augroup lsp
    " au!
    " au filetype c unsilent lua require'lspconfig'.clangd.setup{ }
    " au filetype cpp unsilent lua require'lspconfig'.clangd.setup{ }
" augroup end
lua require'lspconfig'.clangd.setup{ }
" au bufreadpost *.c unsilent lua require'lspconfig'.clangd.setup{}

" au filetype c unsilent lua print("oetnuh")



colorscheme Tomorrow-Night-Bright
" lua require('colorbuddy').colorscheme('gruvbuddy')
" lua require'nvim_lsp'.clangd.setup{on_attach=require'completion'.on_attach}

" kinda slows things down going to get it off
" lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }

" ------------- LSP
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>

" set runtimepath=~/.config/nvim


function! SourceExtra(file)
    if filereadable(expand(a:file))
        exe 'source' a:file
    endif
    let git_repo = system('git rev-parse --is-inside-work-tree')->split('\n', 1)
    if (git_repo[0] == 'true')
        let git_root = system('git rev-parse --show-toplevel')->split('\n', 1)
        let extra    = git_root[0] . '/.vim_extra'
        if filereadable(expand(extra))
            exe 'source' extra
        endif
    endif
endfunction

au VimEnter * :call SourceExtra(".vim_extra")

syn match markdownError "\w\@<=\w\@="
