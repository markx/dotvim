"APPEARENCE
set nocompatible    " 关闭兼容模式
set t_Co=256
"set background=dark
colorscheme lucius_dark
set encoding=utf8
set fileencodings=utf8,gb2312,gb18030,ansi
set number		" 显示行号
set cursorline

if has("gui_running")
    colorscheme smyck
    set columns=88
    set lines=42
endif

"FUNCTION
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set showcmd         " 显示命令
set lz              " 当运行宏时，在命令执行完成之前，不重绘屏幕
set hid             " 可以在没有保存的情况下切换buffer
set backspace=eol,start,indent
set whichwrap+=<,>,h,l "退格键和方向键可以换行
set incsearch       " 增量式搜索
"set nohlsearch
set hlsearch        " 高亮搜索
set smartcase	    "搜索时如果全部小写，则忽略大小写
"set ignorecase      " 搜索时忽略大小写
"set magic           " h magic吧
set showmatch       " 显示匹配的括号
set nobackup        " 关闭备份
"set backupdir=.,/tmp
set noswapfile
"set lbr             " 在breakat字符处而不是最后一个字符处断行
"set si              " 智能缩进


"LANGUAGE
syntax on       " 语法高亮
filetype plugin indent on  " 文件类型插件

set completeopt=longest,menu,preview
autocmd FileType python setlocal et sta sw=4 sts=4 foldmethod=indent 
"autocmd FileType python setlocal mnifunc=python3complete#Complete
set foldlevel=99



"Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"

"Bundle 'garbas/vim-snipmate'
""depended by snipmate
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'

"COLOR  SCHEME
Bundle 'w0ng/vim-hybrid'

"PLUGINS
Bundle 'scrooloose/syntastic'
" vim-scripts repos
Bundle 'php.vim'

Bundle 'surround.vim'




"SHORTCUT
inoremap <C-F> <Right>
inoremap <C-B> <Left>
:nmap \l :setlocal number!<CR>
nmap j gj
nmap k gk
cmap w!! w !sudo tee % 

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


set pastetoggle=<F11>
"PLUGIN SETTINGS

Bundle 'scrooloose/nerdcommenter'
"nerdtree
Bundle 'scrooloose/nerdtree'
:nmap <F7> :NERDTreeToggle<CR>



Bundle 'majutsushi/tagbar'
"tagbar
let g:tagbar_left = 1
nmap <F8> :TagbarToggle<CR>


"Ctrl-P
Bundle 'kien/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 't'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc


"
"vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"


Bundle 'Shougo/neocomplcache.vim'
"neocomplacache
let g:neocomplcache_enable_at_startup = 1
" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 0
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 2



Bundle 'Shougo/neosnippet.vim'
Bundle 'honza/vim-snippets'

"Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"let  g:neosnippet#disable_runtime_snippets=1
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"Auto-pairs
Bundle 'vim-scripts/Auto-Pairs'
let g:AutoPairs={'{':'}'} 
let g:AutoPairsShortcutToggle="<F9>"


"esaymotion
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>'

"Gist
"depend on webapi-vim
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
let g:gist_clip_command = 'xsel -i -b -l /dev/null'

"powerline
set laststatus=2
set noshowmode
"set rtp+=/usr/lib/python3.3/site-packages/powerline/bindings/vim
set rtp+=/usr/lib/python2.7/site-packages/powerline/bindings/vim
