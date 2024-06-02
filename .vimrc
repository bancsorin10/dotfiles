"Leader mappings
let mapleader = " "

map <F2> :Hex<cr> " horizontal split and explore
map <F3> :Vex<cr> :vertical resize 30<cr> " horizontal split and explore
map <F4> :Tex<cr> " horizontal split and explore

" showcase comments in italics
" highlight Comment cterm=italic gui=italic

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
set mouse=a
set smartindent
"tab size to 4
set tabstop=4
set shiftwidth=4
set softtabstop=0 "noexpandtab set to not make spaces out of tabs
set expandtab

set wildmenu		"Tab autocomplete in command modea

" set evince as file previewer for vim-latex-live-preview
let g:livepreview_previewer = 'evince'
let g:livepreview_engine = 'pdflatex'
" bind space T to start preview
autocmd FileType tex noremap <leader>T :LLPStartPreview<cr>
" nnoremap <leader><leader> :normal!/<--><cr>ca<

" color scheme monokai
"syntax enable
"colorscheme monokai


noremap <leader>h :wincmd h<cr>
noremap <leader>j :wincmd j<cr>
noremap <leader>k :wincmd k<cr>
noremap <leader>l :wincmd l<cr>

vnoremap J :m +1<cr>gv=gv
vnoremap K :m -2<cr>gv=gv

"unbind arrows 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>

"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Right> <Nop>
"inoremap <Left> <Nop>
" inoremap for insert mode disable of arrow keys
" disabling arrows in insert also disables backspace in the vim command :D

"vim bug with alacritty fix

" set ttymouse=sgr

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000


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
