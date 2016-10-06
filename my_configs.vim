""""""""""""""""""""""""""""""
" => Personal setting
""""""""""""""""""""""""""""""

" Trim space
autocmd BufWritePre * :%s/\s\+$//e

" Switch to alternate file
map <S-k> :bnext<cr>
map <S-j> :bprevious<cr>

" Set relative line number
set relativenumber

" Set `Ctrl + N` `Ctrl + N` to toggle to relative line number
nmap <C-N><C-N> :set invrelativenumber<CR>

" Press `jk` to esc insert mode.
imap jk <Esc>

" Press `Ctrl + M` to add new line
nmap <C-m> i<Enter><Esc>

" OS X clipboard sharing
set clipboard=unnamed

""""""""""""""""""""""""""""""
" => Plugin setting
""""""""""""""""""""""""""""""

" Show airline tab bar
let g:airline#extensions#tabline#enabled = 1

" Confirm loading YCM conf
let g:ycm_confirm_extra_conf = 1
" Jump to the definition
nnoremap <leader>jd :YcmCompleter GoTo<CR>

" EasyAlign shortcuts
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
