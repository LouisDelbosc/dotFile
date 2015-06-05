" leader key
let mapleader=","

" Saut de ligne en normal
nmap <leader>o o<ESC>k
nmap <leader>O O<ESC>j

" utilisation des fleches customisees
imap <S-up> <ESC>ddkPa
imap <S-down> <ESC>ddpa
nmap <S-up> ddkP
nmap <S-down> ddp

nmap <left> b
imap <left> <ESC>bi

nmap <right> w
imap <right> <ESC>wa

" Gestion des split/onglet
nmap <Tab>l :tabnext<CR>
nmap <Tab>h :tabprevious<CR>
nmap H <C-W>h
nmap L <C-W>l

" Terminal use
tnoremap <ESC><ESC> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-j> <C-\><C-n><C-w>j
