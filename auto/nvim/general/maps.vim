let g:mapleader = "\<Space>"

noremap <leader>h :wincmd h<cr>
noremap <leader>j :wincmd j<cr>
noremap <leader>k :wincmd k<cr>
noremap <leader>l :wincmd l<cr>

noremap <C-p> :FZF<cr>

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

nnoremap <C-p> <cmd>lua require'telescope.builtin'.find_files{}<CR>
" consider mapping it for the git files instead of locals

nnoremap <leader>fg <cmd>lua require'telescope.builtin'.live_grep()<cr>

" copy the hole file
nnoremap <leader>yy maggVG"+y'a

lua require('init')

" toggle spellcheck
nnoremap <leader>sc :lua spellcheck()<cr>
nnoremap <leader>rt :lua retard_case();<cr>
nnoremap <leader>li gUU:s/\(.\)/\1 /g<cr>:nohl<cr>

" latex live preview
" autocmd FileType tex noremap <leader>T :LLPStartPreview<cr>
au FileType tex nnoremap <leader>T :!xelatex %<cr>


