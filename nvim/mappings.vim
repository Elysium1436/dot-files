
""Line/block moving shortcuts
nnoremap <A-j> :m+1<CR>
nnoremap <A-k> :m-2<CR>
inoremap <A-j> <Esc>:m+1<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

""Window moving shortcuts
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-k> <C-w><C-k>

command! Erc edit $MYVIMRC
command! Elsprc edit ~/.config/nvim/after/plugin/lspconfig.rc.vim


