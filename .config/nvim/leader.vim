" Active leader key
" call leaderGuide#register_prefix_descriptions(' ','g:lmap')
" nnoremap <silent> <leader> :<c-u>LeaderGuide ' '<CR>
" vnoremap <silent> <leader> :<c-u>LeaderGuideVisual ' '<CR>

" || <Space> || Show leader | vim,leader
" || , || Show local leader | vim,leader
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" TODO: rewrite user leader dict with new leader tool (liuchengxu/vim-which-key) 
" Init leader dictionary
"let g:lmap =  {' ': {'name': 'MYSEARCH'}}

let g:lmap = {}

let g:lmap.c = { 'name' : 'Comment' }

" Search menu
let g:lmap.f = {
				\'name' : 'Find',
                \'c': ['Content','Search content text'],
                \'g': ['Commits','Search in commits'],
                \'f': ['call FzSearchFiles()','Search git/files'],
                \'b': ['Buffers','Search in buffers'],
                \}

" || Ctrl+f c || Search content in current folder | vim
" || Ctrl+f f || Search file | vim
" || Ctrl+f g || show Commits | vim
" || Ctrl+f b || Show buffer | vim
" || fc || Search content in current folder | vim
" || ff || Search file | vim
" || fg || show Commits | vim
" || fb || Show buffer | vim

nnoremap <C-f>c :Contents<CR>
nnoremap <C-f>f :Files<CR>
nnoremap <C-f>g :Commits<CR>
nnoremap <C-f>b :Buffers<CR>
nmap fc :Contents<CR>
nmap ff :Files<CR>
nmap fg :Commits<CR>
nmap fb :Buffers<CR>

" My leaders menu
" TODO: rewrite user leader dict with new leader tool (liuchengxu/vim-which-key) 
let g:lmap.m = {
				\'name' : 'my leader',
				\'c' : ['ColorToggle','Hex Color'],
				\'k' : ['ShowMaps','Show key mapping'],
				\'s' : ['Startify','Show startify page'],
                \}

" leader sync key mapping
" || mc || Toggle color | vim
" || ms || Startify | vim
" || mk || Show key map | vim
nmap <silent> mc :ColorToggle<CR>
nmap <silent> ms :Startify<CR>
nmap <silent> mk :call ShowMaps()<CR>

" Git map
"let g:lmap.g = {
				"\'name' : 'Git Menu',
				"\'s' : ['Gstatus', 'Git Status'],
                "\'p' : ['Gpull',   'Git Pull'],
                "\'u' : ['Gpush',   'Git Push'],
                "\'c' : ['Gcommit', 'Git Commit'],
                "\'w' : ['Gwrite',  'Git Write'],
                "\}
