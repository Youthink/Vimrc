" 文件编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936t
set fileencoding=utf-8
set langmenu=zh_CN.UTF-8 helplang=cn

set number                                         " 显示行号
set hidden                                         " 隐藏缓冲区 否则会提示保存文件
set t_Co=256                                       " 使用256色
set laststatus=2                                   " 总是显示状态行
set showtabline=2                                  " 为了 lightline-bufferline 显示
set cmdheight=1                                    " 命令行（在状态行下）的高度，默认为1，这里是2
set cursorline                                     " 突出显示当前行
set scrolloff=3                                    " 光标移动到buffer的顶部和底部时保持3行距离
set ruler                                          " 显示标尺
set nofoldenable                                   " 不允许折叠
set guifont=Monaco:h16                             " 字体设置
set confirm                                        " 在处理未保存或只读文件的时候，弹出确认
"set wrap                                          " 换行
set linebreak                                      " 合适的地方折行 ^I!@*-+_;:,./?
set noeb                                           " 不要错误提示音

set autoindent                                     " 语法自动缩进
set cindent                                        " 类似C语言程序的缩进
set tabstop=2                                      " 一个TAB字符占多少个空格的位置
set softtabstop=2                                  " 每次退格将删除X个空格
set shiftwidth=2                                   " 使用每层缩进的空格数。
set backspace=2                                    " 使回格键（backspace）正常处理indent, eol, start等
set expandtab                                      " 用空格代替Tab
set smarttab                                       " 在行首按TAB将加入 shiftwidth 个空格

set nobackup                                       " 不备份
set noswapfile                                     " 禁止生成临时文
set nocompatible                                   " 不要使用vi的键盘模式，而是vim自己的
set ignorecase                                     " 搜索忽略大小写
set smartcase                                      " 智能大小写搜索
set hlsearch                                       " 搜索逐字符高亮
set incsearch                                      " 输入搜索内容时就显示搜索结果
set wildmenu                                       " vim 自身命令行模式智能补全
set history=1000                                   " 记录1000条历史
set gdefault                                       " 行内替换
set viminfo+=!                                     " 保存全局变量
set mouse=a                                        " 使用鼠标
"set selection=exclusive                            " 光标所在位置不属于被选中的范围
set selectmode=mouse,key                           " 鼠标键盘都可以选择文本
set report=0                                       " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set shortmess=atl                                  " 启动的时候不显示那个援助索马里儿童的提示
set showmatch                                      " 高亮显示对应的括号
set matchtime=5                                    " 匹配括号高亮的时间（单位是十分之一秒）
set fillchars=vert:\ ,stl:\ ,stlnc:\               " 在被分割的窗口间显示空白，便于阅读
set completeopt=longest,menu                       " 打开文件类型检测, 加了这句才可以用智能补全
"set autochdir                                      " 自动切换当前目录为当前文件的目录 //会影响搜索等，禁用了
set guioptions-=m                                  " 隐藏菜单栏
set guioptions-=T                                  " 隐藏工具栏
set guioptions-=L                                  " 隐藏左侧滚动条
set guioptions-=r                                  " 隐藏右侧滚动条
set guioptions-=b                                  " 隐藏底部滚动条
set list                                           " 显示空格
set listchars=tab:>-,trail:~,extends:>,precedes:<  " 显示空白字符 方便团队协作时使用规范的代码间隔

filetype on                                        " 侦测文件类型
filetype indent on                                 " 为特定文件类型载入相关缩进文件
filetype plugin indent on                          " 开启插件
syntax on                                          " 语法高亮


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-plug 插件管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"初始化 自动安装插件
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 插件管理
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } " 项目目录树
Plug 'itchyny/lightline.vim'                                             " 状态栏显示
Plug 'mengelbrecht/lightline-bufferline'                                 " lightline 插件 展示 buffer 栏
Plug 'airblade/vim-gitgutter'                                            " git 显示文件的修改情况
Plug 'tpope/vim-fugitive'                                                " git
Plug 'Yggdroot/indentLine'                                               " 展示代码缩进对齐线
Plug 'godlygeek/tabular'                                                 " 代码格式化对齐
Plug 'dyng/ctrlsf.vim'                                                   " 文件内搜索
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }                        " 搜索文件 类似于 ctrlp
Plug 'altercation/vim-colors-solarized'                                  " 主题 solarized
Plug 'kaicataldo/material.vim'                                           " 主题 material
Plug 'arcticicestudio/nord-vim'                                          " 主题 nord
Plug 'rakr/vim-one'                                                      " 主题 one
Plug 'posva/vim-vue'                                                     " 前端库 Vue
Plug 'groenewege/vim-less', { 'for': 'less' }                            " 前端 less
Plug 'pangloss/vim-javascript'                                           " 前端 js
Plug 'mattn/webapi-vim'                                                  " web-api
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }                  " 显示 import 包大小
Plug 'docunext/closetag.vim'                                             " 前端 HTML tag auto close
Plug 'leafgarland/typescript-vim'                                        " typescript highlight
Plug 'HerringtonDarkholme/yats.vim'                                      " typescript highlight
Plug 'mxw/vim-jsx'                                                       " 前端库 React
Plug 'mattn/emmet-vim'                                                   " 前端 快捷补全
Plug 'gko/vim-coloresque', { 'for': ['html', 'css', 'scss', 'less'] }    " CSS颜色显示
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }                       " 语言 elixir
Plug 'mhinz/vim-mix-format'                                              " mix format for elixir
Plug 'dart-lang/dart-vim-plugin'                                         " 语言 Dart
Plug 'rhysd/vim-gfm-syntax', { 'for': 'markdown' }                       " markdown
Plug 'suan/vim-instant-markdown', { 'for': 'markdown' }                  " markdown 预览
Plug 'Raimondi/delimitMate'                                              " 引号、括号自动匹配
Plug 'scrooloose/nerdcommenter'                                          " 注释插件
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'                                      " 多光标
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }                   " 代码格式化
Plug 'w0rp/ale'                                                          " for eslint
Plug 'vim-syntastic/syntastic'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置leader建为逗号
let mapleader = ','
let g:mapleader = ','

" 找到git合并中冲突的地方
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" 映射 ESC 键接口：接口：w
:imap jk <Esc>

" 查看单行文字"
map j gj
map k gk

"<Ctrl-s> for saving
map <silent><C-s> :update<CR>
inoremap <C-s> <ESC>:update<CR>a

" buffers
nmap <leader>bq :bp <BAR> bd #<CR>

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: nerdcommenter
let g:NERDCustomDelimiters={'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' }}

" Plugin: emmet
let g:user_emmet_leader_key='<C-D>'
autocmd Filetype javascript.jsx setlocal filetype=jsx

" Plugin: NERD-tree
"autocmd StdinReadPre * let s:std_in=1                       " 随 vim 自启动
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")&&b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1                                    " 是否显示隐藏文件
let NERDTreeWinPos="right"                                  " 在右边显示
let NERDTreeIgnore=['.DS_Store']                            " 不显示的文件名单
map <leader>n :NERDTreeToggle<CR>
"打开 vim 时光标定位到编辑区，而不是在 nerdTree 区域
"autocmd VimEnter * NERDTree
"wincmd w
"autocmd VimEnter * wincmd w

" Plugin: vim-jsx 插件配置 在.js文件内支持jsx语法
let g:jsx_ext_required=0

" Plugin: Indent Guides
let g:indent_guides_enable_on_vim_startup=1          " 随 vim 自启动
let g:indent_guides_start_level=2                    " 从第二层开始可视化显示缩进
let g:indent_guides_guide_size=1                     " 色块宽度
" 禁止隐藏 比如 json 的双引号
autocmd InsertEnter *.json setlocal concealcursor=
autocmd InsertLeave *.json setlocal concealcursor=inc

" Plugin: ale
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" Plugin: ctrlsf.vim 项目内搜索文件内容
" 搜索当前光标下的内容
nnoremap <silent> <leader>f :CtrlSF<CR>
" 全局搜索
nmap <Leader><Leader>f :CtrlSF<space>

let g:ctrlsf_default_root = 'project'
" 默认忽略目录
let g:ctrlsf_ignore_dir = ['node_modules', 'dist', 'bugsnag-sourcemapsUEvDfY']

" Plugin: leaderF.vim 搜索文件
let g:Lf_ShortcutF = '<C-P>'

" Plugin: vim-jsx .js 后缀的 jsx 文件
let g:jsx_ext_required = 0

" Plugin: mix format
let g:mix_format_on_save = 1

" Plugin: Tabularize
" hit <leader> twice to auto align codes
noremap <leader><leader> :Tabularize /from<CR>
"noremap <leader>,        :Tabularize /=<CR>

" Plugin: syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

" Plugin: lightline and lightline-bufferline
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline                  = {}
let g:lightline.colorscheme      = 'one'
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline#bufferline#filename_modifier = ':t' " hidden path

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

"主题设置
if has('gui_running')
  set guioptions-=e
  syntax enable
  let g:solarized_termcolors=256

  "set background=dark
  set background=light
  "solarized one palenight material nord
  colorscheme solarized
  " 主题 material
  "let g:material_terminal_italics = 1
  "let g:lightline.colorscheme = 'material_vim'
  "let g:material_theme_style = 'palenight'
  "let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
else
  let g:molokai_original = 1
  let g:rehash256 = 1
  colorscheme one
endif

if (has('termguicolors'))
  set termguicolors
endif

" 背景颜色切换 , + bg
nnoremap <silent> <Leader>bg :call ToggleBackground()<CR>
function! ToggleBackground()
  let &background = ( &background ==# 'dark'? 'light' : 'dark' )
  if exists("g:loaded_lightline") && g:colors_name =~# 'one'
    execute "source " . g:plug_home . "/lightline.vim/autoload/lightline/colorscheme/one.vim"
    windo call lightline#colorscheme()
  elseif exists('g:colors_name')
    exe 'colorscheme ' . g:colors_name
  endif
endfunction

"小程序 .wpy 后缀识别成 vue 文件
au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css
autocmd! BufRead,BufNewFile *.wxml set filetype=html
autocmd! BufRead,BufNewFile *.wxss set filetype=less

" python 文件的缩进格式
au BufNewFile,BufRead *.py
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4

"ejs 高亮
au BufNewFile,BufRead *.ejs set filetype=html

"crontab
autocmd filetype crontab setlocal nobackup nowritebackup

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

