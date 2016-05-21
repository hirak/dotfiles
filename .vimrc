" my .vimrc
" @author Hiraku NAKANO
" vim: set foldmethod=marker:

scriptencoding 'utf-8'
filetype off

"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.vim/dein/'))
" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/vimproc', {
"          \ 'build': {
"          \     'windows': 'tools\\update-dll-mingw',
"          \     'cygwin': 'make -f make_cygwin.mak',
"          \     'mac': 'make -f make_mac.mak',
"          \     'linux': 'make',
"          \     'unix': 'gmake'}})
call dein#add('Shougo/vimproc')

call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('mattn/emmet-vim')
call dein#add('kchmck/vim-coffee-script')
call dein#add('Shougo/neocomplete')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/unite.vim')
call dein#add('thinca/vim-quickrun')
call dein#add('thinca/vim-localrc')
call dein#add('pangloss/vim-javascript')
call dein#add('joonty/vdebug')
call dein#add('itchyny/lightline.vim')
call dein#add('itchyny/landscape.vim')
call dein#add('elzr/vim-json')
call dein#add('mxw/vim-jsx')
call dein#add('shawncplus/phpcomplete.vim')
call dein#add('toyamarinyon/vim-swift')
call dein#add('vim-jp/vim-go-extra')
call dein#add('NLKNguyen/papercolor-theme')
call dein#add('ekalinin/Dockerfile.vim')
call dein#add('tyru/open-browser.vim')
call dein#add('tyru/open-browser-github.vim')
call dein#add('majutsushi/tagbar')

" from vim.org
call dein#add('smartchr')
call dein#add('xml.vim')
call dein#add('sudo.vim')
call dein#add('netrw.vim')

" Required:
call dein#end()

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


"""""""
set encoding=utf-8
set termencoding=utf-8

set nobackup
set noswapfile
set nowritebackup

set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,eucjp-ms,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" タブ文字の見える化
set list
set listchars=tab:>-,trail:_

set backspace=indent,eol,start
set showmatch
set tabstop=4 shiftwidth=4 softtabstop=4
set expandtab

set term=xterm
set ignorecase
set smartcase
set incsearch
set hlsearch

" unite
let g:unite_source_grep_command = 'grep'
let g:unite_source_grep_default_opts = '-In --exclude-dir=.git --exclude-dir=node_modules --exclude-dir=vendor --exclude-dir=bower_components --exclude="*.min.js" --exclude="*.min.css" --include="*.php"'
let g:unite_source_grep_max_candidates = 200

" xml.vim
let b:match_words="begin:end"
let b:match_ignorecase=1

" netrwの設定
let g:netrw_liststyle = 3
let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
let g:netrw_altv = 1
let g:netrw_alto = 1

" filetype
let g:filetype_m='objc'
let g:filetype_md='markdown'

" zencoding 設定
let g:user_emmet_settings = {
\  'lang' : 'ja',
\  'indentation' : ' ',
\  'css' : {
\    'filters': 'fc',
\  },
\}

"" quickrun.vim 設定
let g:quickrun_config = {}
let g:quickrun_config._ = {
\  'outputter': 'message',
\}
"
" smartchr
"inoremap <expr> = smartchr#loop(' = ', '=', ' === ')
"inoremap <expr> , smartchr#one_of(', ', ',')

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 20
let g:neocomplcache_plugin_disable = {
\ 'syntax_complete' : 1,
\ }
let g:neocomplcache_plugin_completion_length = {
\ 'syntax_complete' : 100,
\}

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

inoremap <expr><C-g>    neocomplete#undo_completion()
inoremap <expr><C-l>    neocomplete#complete_common_string()

let g:lightline = {
\ 'colorscheme': 'PaperColor',
\}

set completeopt=menuone

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" statusline
set laststatus=2
function! GetStatusEx()
    let str = ''
    let str = str . '[' . &fileformat . ']'
    if has('multi_byte') && &fileencoding != ''
        let str = '[' . &fenc . ']' . str
    endif
    return str
endfunction
set statusline=%y%{GetStatusEx()}%f%m%r%=<%c:%l>


"" 背景反転
nnoremap ,r :set background=light<CR>
nnoremap  :nohlsearch<CR>

""
" PHP Lint
" ノーマルモード,lで文法チェックが発動
function! PHPLint()
    let result = system(&ft . ' -nl ' . bufname(""))
    echo result
endfunction
nnoremap ,l :call PHPLint()<CR>

""
"
function! ShebangExecute()
    let m = matchlist(getline(1), '#!\(.*\)')
    if (len(m) > 2)
        execute '!'.m[1]. ' %'
    else
        execute '!' &ft ' %'
    endif
endfunction

nnoremap ,e :call ShebangExecute()<CR>

syntax on
"普段は黒背景で使っているので。
set background=dark

"256色表示の許可
set t_Co=256
colorscheme PaperColor


" commentout {{{
" lhs comments
vnoremap ,# :s/^/#/<CR>:nohlsearch<CR>
vnoremap ,/ :s/^/\/\//<CR>:nohlsearch<CR>
vnoremap ,> :s/^/> /<CR>:nohlsearch<CR>
vnoremap ," :s/^/\"/<CR>:nohlsearch<CR>
vnoremap ,% :s/^/%/<CR>:nohlsearch<CR>
vnoremap ,! :s/^/!/<CR>:nohlsearch<CR>
vnoremap ,; :s/^/;/<CR>:nohlsearch<CR>
vnoremap ,- :s/^/--/<CR>:nohlsearch<CR>
vnoremap ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>

" wrapping comments
vnoremap ,* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
vnoremap ,( :s/^\(.*\)$/\(\* \1 \*\)/<CR>:nohlsearch<CR>
vnoremap ,< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
vnoremap ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>
"}}}

filetype indent plugin on

set grepprg=grepa
