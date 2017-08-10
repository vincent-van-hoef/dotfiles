let mapleader=";"
let maplocalleader =","

set nocompatible              " be iMproved, required
set number
filetype off                  " required
 
" vimwiki
let g:vimwiki_list = [{'path': '/mnt/c/Users/Vincent/Dropbox/vimwiki',
			\ 'template_path': '/mnt/c/Users/Vincent/Dropbox/vimwiki/templates',
			\ 'template_default': 'default',
			\ 'template_ext': '.html',
			\ 'path_html': '/mnt/c/Users/Vincent/Dropbox/vimwiki/html',
			\ 'auto_export': 1,
			\ 'auto_toc': 1,
			\ 'diary_sort': 'asc'}]
:map <Leader>tt <Plug>VimwikiToggleListItem
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.vim/bundle/')
  
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'jalvesaq/Nvim-r'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'vimwiki/vimwiki'
Plugin 'mattn/calendar-vim'

" autoclose youcompleteme window
let g:ycm_autoclose_preview_window_after_completion=1

nnoremap <F5> :UndotreeToggle<cr>
nnoremap <F6> :NERDTRee<cr>

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call vundle#end()
filetype plugin indent on

colorscheme wombat
" let R_term = "xterm"
let R_in_buffer = 0
let R_applescript = 0
let R_tmux_split = 1

set undofile
set undodir=~/undodir

" set indentation for Python files
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" Flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"set snakemake syntax
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *smk set syntax=snakemake

set encoding=utf-8

let python_highlight_all=1
syntax on

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

set ch=2		" Make command line two lines high
set mousehide		" Hide the mouse when typing text
set showcmd

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
" Cursor is green, Cyan when ":lmap" mappings are active
" Constants are not underlined but have a slightly lighter background
highlight Normal guibg=grey90
highlight Cursor guibg=Green guifg=NONE
highlight lCursor guibg=Cyan guifg=NONE
highlight NonText guibg=grey80
highlight Constant gui=NONE guibg=grey95
highlight Special gui=NONE guibg=grey95

endif





