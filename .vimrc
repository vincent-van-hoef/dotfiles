	set nocompatible              " be iMproved, required
	set number
	filetype off                  " required
	 
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

	call vundle#end()
	filetype plugin indent on

	colorscheme wombat
	"let R_term = "xterm"
	let R_in_buffer = 0
	let R_applescript = 0
	let R_tmux_split = 1

	" Make external commands work through a pipe instead of a pseudo-tty
	"set noguipty

	" set the X11 font to use
	" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

	set ch=2		" Make command line two lines high

	set mousehide		" Hide the mouse when typing text

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
