let g:python3_host_prog = '/usr/local/bin/python3.5'
"let g:python2_host_prog='/usr/bin/python2.7'

call plug#begin('~/.vim/plugged')



" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'dkprice/vim-easygrep'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }

Plug 'sickill/vim-monokai'
Plug 'klen/python-mode'
Plug 'Lokaltog/vim-powerline'
Plug 'rhysd/accelerated-jk'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
"
" Add plugins to &runtimepath
call plug#end()
map <f4> :NERDTreeToggle<CR>
map <F2> :e .<CR>
:colorscheme monokai
"let g:molokai_original = 1

let mapleader=" "

set clipboard=unnamed
set relativenumber
let g:Powerline_symbols = 'fancy'


nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
:hi Search term=standout ctermfg=0 ctermbg=10
set tabstop=4               " 设置tab键的宽度
set shiftwidth=4            " 换行时行间交错使用4个空格
set autoindent              " 自动对齐
set backspace=2             " 设置退格键可用
set cindent shiftwidth=4    " 自动缩进4空格
set smartindent             " 智能自动缩进
set ai!                     " 设置自动缩进
set nu!                     " 显示行号
set showmatch               " 显示括号配对情况
"set hlsearch                " 开启高亮显示结果
set incsearch               " 开启实时搜索功能
set nowrapscan              " 搜索到文件两端时不重新搜索
"set cursorline             " 突出显示当前行
""set hidden                 " 允许在有未保存的修改时切换缓冲区
"set list                   " 显示Tab符，使用一高亮竖线代替
"syntax enable               " 打开语法高亮
"syntax on                   " 开启文件类型侦测
"filetype on                 "
"filetype indent on          " 针对不同的文件类型采用不同的缩进格式
"filetype plugin on          " 针对不同的文件类型加载对应的插件
"set nobackup                " 设置无备份文件
"set nocompatible            " 不使用vi兼容的模式
"


let g:netrw_sizestyle= "h"
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 2
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax=1 

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
set t_Co=256
""""""""""""""""""""""""""""""
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly


" airline
" """"""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" airline
autocmd! bufwritepost $HOME/.vimrc source %


:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>



" Incomplete example inserting text without moving cursor.
" DO NOT USE, use a plugin instead.
function! InsertClosing(char)
  let line = getline('.')
  let colm = col('.')
  let colmIdx = colm - 1
  call setline('.', line[:colmIdx].a:char.line[colmIdx+1:])
  return ""
endfunction
inoremap ( (<C-R>=InsertClosing(')')<CR>
" sudo write 
cmap w!! w !sudo tee > /dev/null %
