let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <BS> lexima#expand('<BS>', 'i')
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <Plug>(emmet-merge-lines) =emmet#util#closePopup()=emmet#mergeLines()
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
inoremap <Plug>(emmet-image-encode) =emmet#util#closePopup()=emmet#imageEncode()
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
inoremap <Plug>(emmet-move-prev) =emmet#util#closePopup()=emmet#moveNextPrev(1)
inoremap <Plug>(emmet-move-next) =emmet#util#closePopup()=emmet#moveNextPrev(0)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
vmap c <Plug>(emmet-code-pretty)
nmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap I <Plug>(emmet-image-encode)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
nnoremap ,d :YcmShowDetailedDiagnostic
vnoremap ,e :python3 debugger.handle_visual_eval()
nnoremap ,= <C-=>
nnoremap ,h 
nnoremap ,l 
nnoremap ,k 
nnoremap ,j <NL>
nnoremap , :set list!
nnoremap ,  :nohlsearch
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
noremap <F10> :python3 debugger.set_breakpoint()
noremap <F6> :python3 debugger.close()
noremap <F5> :python3 debugger.run()
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
nnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nnoremap <Plug>(emmet-image-encode) :call emmet#imageEncode()
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap <silent> <expr>  lexima#expand('<CR>', 'i')
imap m <Plug>(emmet-merge-lines)
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap I <Plug>(emmet-image-encode)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
inoremap  
inoremap <silent> <expr>   lexima#expand('<SPACE>', 'i')
inoremap <silent> <expr> " lexima#expand('"', 'i')
inoremap <silent> <expr> ' lexima#expand('''', 'i')
inoremap <silent> <expr> ( lexima#expand('(', 'i')
inoremap <silent> <expr> ) lexima#expand(')', 'i')
inoremap <silent> <expr> [ lexima#expand('[', 'i')
inoremap <silent> <expr> ] lexima#expand(']', 'i')
inoremap <silent> <expr> ` lexima#expand('`', 'i')
inoremap <silent> <expr> { lexima#expand('{', 'i')
inoremap <silent> <expr> } lexima#expand('}', 'i')
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set completefunc=youcompleteme#CompleteFunc
set completeopt=menuone,noinsert
set cpoptions=aAceFsB
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Monospace\ 11
set helplang=en
set hlsearch
set laststatus=2
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set mouse=a
set path=.,/usr/include,,,**
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/pack/plugins/start/youcompleteme,~/.vim/pack/plugins/start/vdebug,~/.vim/pack/plugins/start/python-mode,~/.vim/pack/plugins/start/lexima,~/.vim/pack/plugins/start/emmet-vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/pack/plugins/start/python-mode/after
set scrolloff=3
set shiftround
set shiftwidth=4
set shortmess=filnxtToOc
set showcmd
set showmatch
set smartindent
set splitbelow
set splitright
set statusline=%<%F%m%r%h%w%=%{&fileformat}/%Y%8l/%L,%-8v(%p%%)
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set visualbell
set wildignore=*.pyc
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/prj/mp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 app/config.py
badd +17 app/forms.py
badd +0 app/__init__.py
badd +18 app/models.py
badd +18 app/routes.py
badd +0 app/templates/base.html
badd +9 app/templates/grade.html
badd +16 app/templates/index.html
badd +0 bapp/models.py
badd +0 e\ app/models.py
badd +0 app/class\ GradeForm(FlaskForm):
argglobal
silent! argdel *
$argadd app/config.py
$argadd app/forms.py
$argadd app/__init__.py
$argadd app/models.py
$argadd app/routes.py
$argadd app/templates/base.html
$argadd app/templates/grade.html
$argadd app/templates/index.html
edit app/forms.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe '2resize ' . ((&lines * 22 + 23) / 47)
argglobal
if bufexists('app/forms.py') | buffer app/forms.py | else | edit app/forms.py | endif
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> ,r :PymodeRun
nnoremap <buffer> <silent> ,r :PymodeRun
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
inoremap <buffer> <nowait> <silent>  =lexima#insmode#escape()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 027|
lcd ~/prj/mp
wincmd w
argglobal
if bufexists('~/prj/mp/app/routes.py') | buffer ~/prj/mp/app/routes.py | else | edit ~/prj/mp/app/routes.py | endif
nnoremap <buffer> <silent> ,b :call pymode#breakpoint#operate(line('.'))
vnoremap <buffer> <silent> ,r :PymodeRun
nnoremap <buffer> <silent> ,r :PymodeRun
onoremap <buffer> C :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> <silent> K :call pymode#doc#show(@*)
nnoremap <buffer> <silent> K :call pymode#doc#find()
onoremap <buffer> M :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
vnoremap <buffer> [M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', 'b')
vnoremap <buffer> [[ :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
onoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
nnoremap <buffer> [M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', 'b')
nnoremap <buffer> [[ :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', 'b')
onoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]C :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> ]M :call pymode#motion#vmove('^\s*\(async\s\+\)\=def\s', '')
vnoremap <buffer> ]] :call pymode#motion#vmove('^\(class\|\%(async\s\+\)\=def\)\s', '')
onoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
onoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
nnoremap <buffer> ]M :call pymode#motion#move('^\s*\(async\s\+\)\=def\s', '')
nnoremap <buffer> ]] :call pymode#motion#move('^\(class\|\%(async\s\+\)\=def\)\s', '')
vnoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
onoremap <buffer> aM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 0)
vnoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
onoremap <buffer> aC :call pymode#motion#select_c('^\s*class\s', 0)
vnoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
onoremap <buffer> iM :call pymode#motion#select('^\s*\(async\s\+\)\=@', '^\s*\(async\s\+\)\=def\s', 1)
vnoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
onoremap <buffer> iC :call pymode#motion#select_c('^\s*class\s', 1)
inoremap <buffer> <nowait> <silent>  =lexima#insmode#escape()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=+1
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^s*\\(def\\|class\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(substitute(substitute(v:fname,b:grandparent_match,b:grandparent_sub,''),b:parent_match,b:parent_sub,''),b:child_match,b:child_sub,'g')
setlocal indentexpr=pymode#indent#get_indent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=python3complete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=79
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 22 - ((6 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
exe '1resize ' . ((&lines * 22 + 23) / 47)
exe '2resize ' . ((&lines * 22 + 23) / 47)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
