"Filetype
set filetype=on
filetype plugin indent on
call pathogen#infect()
call pathogen#helptags()

colorscheme monokai
set nocompatible
set et
set ai
set sw=4
set ts=4
set ruler
set si
set nu
set is
set ic
set sm
"set sta
syn on
set backspace=indent,eol,start
set hlsearch
set ruler
set nobackup
set nowritebackup
set wildmenu
set incsearch
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
au FileType make set noet
set t_Co=256

set pastetoggle=<F3>
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

"HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set textwidth=0

" Python (tab width 4 chr, wrap at 79th char)
autocmd FileType python set sw=4
autocmd FileType python set ts=4
"autocmd FileType python set textwidth=79

" CSS (tab width 2 chr, wrap at 79th chr)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
"autocmd FileType css set textwidth=79

" JavaScript (tab width 4 chr, wrap at 79th)
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
"autocmd FileType javascript set textwidth=79

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" switch between models, views, urls, admin and forms with the
" following shortcut ,m ,v ,u ,a ,f
let pattern = 'models\|views\|urls\|admin\|forms'
nmap ,m :e <C-R>=substitute(expand("%"), pattern, "models", "")<CR><CR>
nmap ,v :e <C-R>=substitute(expand("%"), pattern, "views", "")<CR><CR>
nmap ,u :e <C-R>=substitute(expand("%"), pattern, "urls", "")<CR><CR>
nmap ,a :e <C-R>=substitute(expand("%"), pattern, "admin", "")<CR><CR>
nmap ,f :e <C-R>=substitute(expand("%"), pattern, "forms", "")<CR><CR>

" Sort the current paragraph.
" Useful for sorting includes, imports, namespaces and other declaration groups.
" With this enabled, you can just insert ur statement anywhere and just press ,s
nmap ,s {jv}k:sort<CR>

" make backspace "more powerful"
set backspace=indent,eol,start

" makes tabs insert "indents" at the beginning of the line
set smarttab

" toggles paste mode
nmap \o :set paste!<CR>

" toggles line numbers
nmap \l :setlocal number!<CR>

" Vim command line
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

"Higlight current line only in insert mode
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

" Toggles nerd tree
nmap \e :NERDTreeToggle<CR>

" Clear highlight search
nmap \q :nohlsearch<CR>
