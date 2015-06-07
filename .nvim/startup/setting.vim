" Basic setting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline

" NERDTree setting

" open NERDTree when opening .
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" Close NERDTree when there are no more tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Include jsx indentation in .js file
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']
