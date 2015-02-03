" vimrc by Joonas Rouhiainen

" Don't limit features to retain backwards compatibility with vi. 
" This must be set first, because it changes other options as a side effect.
set nocompatible

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Backup strategy: keep a backup file but store it in .vim/tmp
" Note that vim does not create this directory if it doesn't exist.
set backup
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

set history=50 " keep 50 lines of command line history
set ruler      " show the cursor position all the time
set showcmd    " display incomplete commands
set incsearch  " do incremental searching (= search while typing)

set number        " show line numbers
set numberwidth=6 " line number gutter width
set cul           " highlight current line
set laststatus=2  " always include status line in last window

set visualbell " Flash the screen instead of sounding terminal bell

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Init pathogen
call pathogen#infect()
call pathogen#helptags()

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  filetype plugin indent on
  set hlsearch
endif

set autoindent
set tabstop=2     " a tab character counts as 2 spaces
set softtabstop=2 " pressing tab should add 2 spaces
set shiftwidth=2  " indent/outdent size: 2 spaces
set shiftround    " round indent/outdent to nearest tabstop
set expandtab     " use spaces instead of tabs

" Enable indent guides plugin by default (leader-ig to toggle)
let g:indent_guides_enable_on_vim_startup = 1

" Disable fancy unicode tricks in haskell plugin
let g:haskell_conceal = 0

" Disable folding
set nofoldenable 

colorscheme default

" Clear search pattern with :C
:command C let @/=""
