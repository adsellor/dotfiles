" Initialize pathogen 
execute pathogen#infect()
filetype plugin indent on

" Mapleader key
let mapleader = ','
" Color schemek
syntax on
" absolute width of netrw window
let g:netrw_winsize = -28
" tree-view
let g:netrw_liststyle = 3
" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'
" open file in a new tab
let g:netrw_browse_split = 3
" Key mappings 
noremap <silent><Leader>cc :TComment<CR>
noremap <silent><Leader>n :tabnext<CR>
noremap <silent><Leader>n :tabprevious<CR>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
map <C-n> :NERDTreeToggle<CR>
" set softtabs 
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
" JS/FLowtype
autocmd Filetype js noremap <Leader>fm :FlowMake<CR>
autocmd Filetype js noremap <Leader>ft :FlowToggle<CR>
autocmd Filetype js noremap <Leader>fd :FlowJumpToDef<CR>
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
