""""""" Plugin management stuff """""""
set nocompatible
syntax on

set rtp+=~/.config/nvim/bundle/Vundle.vim
set noshowmode
set number relativenumber
set numberwidth=3
highlight LineNr ctermfg=black

call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'

" Custom plugins...  EasyMotion - Allows <leader><leader>(b|e) to jump to
" (b)eginning or (end) of words.
Plugin 'easymotion/vim-easymotion'
" Ctrl-P - Fuzzy file search
Plugin 'kien/ctrlp.vim'

" Neomake build tool (mapped below to <c-b>)
Plugin 'benekastah/neomake'

" Autocomplete for python
Plugin 'davidhalter/jedi-vim'

" Remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreeforty/lessspace.vim'

" Add elm support
Plugin 'elmcast/elm-vim'

"NerdTree
Plugin 'scrooloose/nerdtree'

" LaTeX editing
Plugin 'LaTeX-Box-Team/LaTeX-Box'

"Markdown Preview
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'


" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

" Tab completion
Plugin 'ervandew/supertab'

" Deoplete for  autocopmlete
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Polyglot
Plugin 'sheerun/vim-polyglot'

" NerdComment
Plugin 'scrooloose/nerdcommenter'
" After all plugins...
call vundle#end()
filetype plugin indent on

""""""" Jedi-VIM """""""
" Don't mess up undo history
let g:jedi#show_call_signatures = "0"


""""""" SuperTab configuration """""""
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>" function! Completefunc(findstart, base) return "\<c-x>\<c-p>" endfunction

"call SuperTabChain(Completefunc, '<c-n>')

"let g:SuperTabCompletionContexts = ['g:ContextText2']

""""""" General coding stuff """""""
"" Set 80 column limit
"set cc=80
"set columns=80
" Highlight todo's
syn match   myTodo   contained   "\<\(TODO\|FIXME\):"
hi def link myTodo Todo
" Always show status bar
set laststatus=2
" Let plugins show effects after 500ms, not 4s
set updatetime=500
" Disable mouse click to go to position
set mouse-=a
" Don't let autocomplete affect usual typing habits
set completeopt=menuone,preview,noinsert
" Let vim-gitgutter do its thing on large files
let g:gitgutter_max_signs=10000
" If your terminal's background is white (light theme), uncomment the following
" to make EasyMotion's cues much easier to read.  hi link EasyMotionTarget
" String hi link EasyMotionShade Comment hi link EasyMotionTarget2First String
" hi link EasyMotionTarget2Second Statement


""""""" Python stuff """""""
syntax enable
set number showmatch
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent
let python_highlight_all = 1

"""""" Elm """"""""
let g:polyglot_disabled = ['elm']
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

""""""" Keybindings """""""
" Set up leaders
let mapleader=","
let maplocalleader="\\"


" Bindings
noremap <silent><Leader>cc :TComment<CR>
noremap <silent><Leader>n :tabnext<CR>
noremap <silent><Leader>n :tabprevious<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt
map <C-n> :NERDTreeToggle<CR>
noremap <silent><Leader><Leader>s :w<CR>
:imap <silent><Leader><Leader>s <ESC>:w<CR><enter>
let g:livepreview_previewer ='zathura'
let vim_markdown_preview_github=1
" RMarkdown render
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" Map Ctrl+Space to toggle between normal and inset modes
imap <Leader><Leader> <Esc>

" Append closing characters
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"

