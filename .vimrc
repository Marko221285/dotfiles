" OPTIONS {{{

" 1 important {{{

" }}}

" 2 moving around, searching, patterns {{{

" case insensitive
set ignorecase

" case sensitive when a pattern contains upper chars
set smartcase

" incremental search highlight
set incsearch

" }}}

" 3 tags

" 4 text display {{{

" add line numbers
set number

" numbers relative to cursor
set relativenumber

" number column width
set numberwidth=4

" set maximum scrolling offset so the cursor is always
" in the center of the screen
set scrolloff=999

" preserve indentation in wrapped text
set breakindent

" make break indentation at least 2 chars, and shift breaks by 2 chars put
" 'showbreak' at the beginning of break indented lines
set breakindentopt=min:2,shift:2,sbr

" show this at the beginning of break indented lines
set showbreak=↳

" extra info
set list
set listchars=tab:⇥\ ,trail:·
set fillchars=fold:\ ,vert:\ 

" don't redraw when executing macros
set nolazyredraw

" }}}

" 5 syntax, spelling and highlight {{{

" syntax highlighting
syntax on

" allow auto-indenting and plugins depending on file type
filetype indent on

" highlight the cursor column
set nocursorcolumn

" highlight search
set hlsearch

if has('gui')
  " use true colors in terminal
  set termguicolors
endif

" set an 80 column border for good coding style
set colorcolumn=80

" TODO: configure spell check
" set spell

" treat camel-cased words as separate
set spelloptions=camel

" }}}

" 6 multiple windows {{{

" on vsplit or vnew open a new window to the right of the current one
set splitright

" }}}

" 7 multiple tab pages

" 8 terminal

" 9 using the mouse

" 10 printing

" 11 messages and info

" 12 selecting text {{{

" use system clipboard
if has('clipboard')
  set clipboard=unnamedplus
endif

" }}}

" 13 editing text {{{

" use undo files
set undofile

" undo file directory so vim doesn't create undo files all over the place
" always starts in your $HOME directory
" double slash is to add the full path of files as name of file so
" vim can find that stuff
set undodir=~/.local/share/vim/undo//
if !isdirectory($HOME . '/.local/share/vim/undo/')
  call mkdir($HOME . '/.local/share/vim/undo/', 'p')
endif

" wrap above 80 chars
set textwidth=80

" wrap at 80 chars
set wrapmargin=80

" read ':h fo-table
set formatoptions=t,c,r,o,q,n,2,m,M,1,j,p

" read ':h 'complete'
set complete=.,w,b,u,k,s,t

" list completions in insert mode
set completeopt=menu,menuone,noselect

" use ~ like an operator to change casing
set tildeop

" join lines with '.' without adding two spaces?? this one is so weird
set nojoinspaces

" }}}

" 14 tabs and indenting {{{

" number of columns occupied by a tab
set tabstop=2

" width for auto-indents
set shiftwidth=2

" use 2 spaces when <BS> on tabs
set softtabstop=2

" use 'shiftwidth' for '<<' and '>>'
set shiftround

" converts tabs to white space
set expandtab

" indent a new line the same amount as the line just typed
set autoindent

" }}}

" 15 folding {{{

" fold with markers in comments
set foldmethod=marker

" i only want to fold this file anyway
set commentstring=\'\ %s

" maximum nesting folds
set foldnestmax=3

" set fold column width
set foldcolumn=4

" start with all folds closed
set foldlevelstart=0

" TODO: config }}}

" 16 diff mode

" 17 mapping {{{

" i would set noremap here, but that would probably break plugins

" }}}

" 18 reading and writing files {{{

" last line doesn't have end of line - this just sounds confusing when the
" character is not present
set noendofline

" i don't know why people add end-of-line at the end of a file
set nofixendofline

" Byte Order Mark at the beginning of a file is a Microsoft thing i think
set nobomb

" keep a backup file before overwriting a file
set backup

" backup file directory so vim doesn't create backup files all over
" the place
" double slash is to add the full path of files as name of file with some
" magic
set backupdir=~/.local/share/vim/backup//
if !isdirectory($HOME . '/.local/share/vim/backup/')
  call mkdir($HOME . '/.local/share/vim/backup/', 'p')
endif

" }}}

" 19 the swap file {{{

" use swap files
set swapfile

" swap file directory - double slash is to add the full path of files
" as name
" of file so vim can find that stuff
set directory=~/.local/share/vim/swap//
if !isdirectory($HOME . '/.local/share/vim/swap/')
  call mkdir($HOME . '/.local/share/vim/swap/', 'p')
endif

" num of chars to update the swap file
set updatecount=100

" time to update the swap file and CursorHold events
set updatetime=500

" }}}

" 20 command line editing {{{

" list completions in command mode
set wildmenu

" same as wilder
" TODO: configure this to a char
" set wildchar='<C-j>'

" see ':h 'wildmode''
" keeping it here in case I need it
set wildmode=longest,list

" ignore case when completing file names
" keeping it here in case I need it
set wildignorecase

" }}}

" 21 executing external commands {{{

" warn when using shell command when the buffer has changes
set warn

" }}}

" 22 running make and jumping to errors

" 23 language specific

" 24 multi-byte characters {{{

" use utf-8
set encoding=utf-8

" use utf-8 (buffer-local)
set fileencoding=utf-8

" set scriptencoding to utf-8
scriptencoding=utf-8

" emojis as full width
set emoji

" }}}

" 25 various {{{

" use g by default in substitutions
set gdefault

" what to save with view files
set viewoptions=folds,options,cursor,curdir

" view file directory
" double slash is to add the full path of files as name of file so
" vim can find that stuff
set viewdir=~/.local/share/vim/view//
if !isdirectory($HOME . '/.local/share/vim/view/')
  call mkdir($HOME . '/.local/share/vim/view/', 'p')
endif

" session
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,resize,winpos,terminal

" python 2 is deprecated
set pyxversion=3

" other - not from ':opt'

if has('gui')
  " font
  set guifont=JetBrainsMono\ Nerd\ Font,DejaVu\ Sans\ Mono:h16

  " speed up scrolling
  set ttyfast
endif

" }}}

" }}}

" AUTOCMD {{{

augroup user_reload
  autocmd!
  autocmd BufWritePost ~/.vimrc so ~/.vimrc
augroup END

" }}}
