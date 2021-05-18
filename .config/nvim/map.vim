" Disable mappings
nnoremap Q <nop>
map q <nop>
noremap ; :

" remap <C-Space> to leader key
" || Space || Show leader | vim
nmap <C-Space> <leader>
imap <C-Space> <ESC><leader>
vmap <C-Space> <leader>


" Goto to link
" || Ctrl+l || Show vim help link | vim
map <silent> <C-L> <C-]>

" Help mappings
" || F1 || Show user vim help | vim
map <silent> <F1> :h MyHelp<CR>
map <silent> <F25> :helptags ~/.config/nvim/doc/<CR>

" Indent
" || F12 || Intent | vim
map <silent> <F12> gg=G

" Disable cursor search
" || ESC || Disable search cursor | vim
map <silent> <ESC> :noh<cr>

" shift+arrow selection
set keymodel=startsel,stopsel
nmap <silent> <S-Up> V
nmap <silent> <S-Down> V
vmap <silent> <S-Up> k
vmap <silent> <S-Down> j

" Tagbar
" || Ctrl+t || Show tagbar | vim
map <silent> <C-t> :TagbarToggle<CR>

" NERDTree
" || Ctrl+d || Show NERD Tree folder | vim
map <silent> <C-d> :NERDTreeToggle<CR>

" Linter & Fixer
" || Ctrl+k || Previous linter | vim
" || Ctrl+j || Next linter | vim
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Buffer navigation, used by airlines(tablines)
" || Ctrl+Left || Previous buffer | vim
" || Ctrl+Right || Next buffer | vim
nmap <silent> <C-Left> :bprevious<CR>
nmap <silent> <C-Right> :bnext<CR>

" Align
" || ga || Align | vim
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)


" Comment
" || cc || Comment | vim
" || ga || Uncomment | vim
nmap <silent> cc <Plug>NERDCommenterToggle
vmap <silent> cc <Plug>NERDCommenterToggle<CR>gv
nmap <silent> cu <Plug>NERDCommenterToggle
vmap <silent> cu <Plug>NERDCommenterToggle<CR>gv

" Copy/Paste
" || Ctrl+c || Copy | vim
" || Ctrl+x || Cut | vim
" || Ctrl+v || Paste | vim
" || Ctrl+z || Cancel | vim
vmap <silent> <C-c> y`]
vmap <silent> <C-x> d
map  <silent> <C-v> gpi
imap <silent> <C-v> <Esc>gpi
imap <silent> <C-z> <Esc>ui

" Quit with CTRL-Q
" || Ctrl+q || Quit | vim
noremap <silent> <C-q>          :bw<CR>
vnoremap <silent> <C-q>         <C-C>:bw<CR>
inoremap <silent> <C-q>         <C-O>:bw<CR>

" Quit buffer CTRL+B
" || Ctrl+b || Quit | vim
noremap <silent> <C-b>         :bw<CR>
vnoremap <silent> <C-b>         <C-C>:bw<CR>
inoremap <silent> <C-b>         <C-O>::bw<CR>

function! ShowMaps()
  let l:old_reg = getreg('a')          " save the current content of register a
  let l:old_reg_type = getregtype('a') " save the type of the register as well
try
  redir @a                           " redirect output to register a
  " Get the list of all key mappings silently, satisfy "Press ENTER to continue"
  silent map | call feedkeys("\<CR>")
  redir END                          " end output redirection
  vnew                               " new buffer in vertical window
  put a                              " put content of register
  " Sort on 4th character column which is the key(s)
  %!sort -k1,14
finally                              " Execute even if exception is raised
  call setreg('a', l:old_reg, l:old_reg_type) " restore register a
endtry
endfunction
