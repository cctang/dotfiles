" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.


"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Enable syntax highlighting
syntax on


"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Show partial commands in the last line of the screen
set showcmd

" Better command-line completion
set wildmenu

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Use incremental searching
set incsearch

" Always display the status line, even if only one window is displayed
set laststatus=2

" Wrap long lines at a character in 'breakat' rather than at the last
" character that fits on the screen
set linebreak

" Enable local to buffer
set modeline

" Enable use of the mouse for all modes
"set mouse=a

" Enable use of the mouse for normal and visual modes
"set mouse=nv

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Quickly time out on keycodes, but never time out on mappings
"set notimeout ttimeout ttimeoutlen=200
set timeoutlen=200 ttimeoutlen=200

" Do not wrap text that flows off the screen
set nowrap

" Display line numbers on the left
set number

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Name of the shell to use for ! and :! commands
set shell=/bin/sh

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Use visual bell instead of beeping when doing something wrong
set visualbell


"------------------------------------------------------------
" Vim options {{{1
"
" These options are Vim specific

" Strings that can start a comment line
set comments=://,:%,fb:-,fb:*,b:#,n:>

" Configure template for comment
set commentstring=\ %s

" Options for Insert mode completion
set completeopt=menuone,longest,preview
set complete=.,w,b,u,t,i,kspell

" Copy the structure of the existing lines indent when autoindenting a new
" line
set copyindent

" Set encoding
set encoding=utf-8

" Set file encoding
set fileencoding=utf-8

" Set fill characters
set fillchars="stl: ,stlnc: ,vert: ,fold: ,diff:-"

" Set text folding
set foldtext=substitute(getline(v:foldstart),'\\t',repeat('\ ',&ts),'')

" Set formation options
set formatoptions+=ron

" Set grep program
set grepprg=grep\ -nH\ $*

" Configure GUI tab label
set guitablabel=%t

" Set history depth
set history=1000

" Format list characters
set listchars=precedes:<,extends:>,trail:_,tab:\ \

" Set the number of lines that is checked for set commands
set modelines=20

" Set printing options
set printfont=Courier:h8:cDEFAULT
set printoptions=left:10mm,right:10mm,top:10mm,bottom:10mm,syntax:y,number:y,paper:letter
set printencoding=utf-8

" Set scrolling options
set scrolloff=5
set sidescroll=1

" Keep curson in the same column after certain commands
set nostartofline

" Use forward slash to expand file names. This is useful when a Unix-like
" shell is used instead of command.com or cmd.exe.
set shellslash

" Show (partial) command in the last line of the screen.
set showcmd

" Configure tab page labels to always display
set showtabline=2

" Spelling language
setlocal spelllang=en

" Pattern to locate the end of a sentence
set spellcapcheck=

" Splitting a window will put the new window right of the current one
set splitright

" Configure content of status line
"set statusline=%<%f%(:%{Tlist_Get_Tagname_By_Line()}%)\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P

" Configure content of the title string
"set titlestring=%<%f%(:%{Tlist_Get_Tagname_By_Line()}%)\ %h%w%m%r\ -\ \%{v:servername}

" Automatically save undo history to an undo file when writing a buffer to a
" file
set undofile

" Allow virtual editing in Visual block mode
set virtualedit=block

" Options for wildmenu
set wildmode=longest:full

"
"------------------------------------------------------------
" Autocommand settings {{{1
"
" Related to line numbering
autocmd InsertEnter,FocusLost,WinLeave * :set norelativenumber
autocmd InsertLeave,FocusGained,WinEnter * :set relativenumber

" Related to sessions
au VimLeave * :mksession! ~/LastVimSession.vim
au BufRead LastVimSession.vim so %

" Turn on spell-checking for git commands
au FileType gitcommit set spell


"------------------------------------------------------------
" Backup options {{{1
"
" Backup, undo, and swap directory locations
set backupdir=~/vimfiles/backup
set undodir=~/vimfiles/undo
set directory=~/vimfiles/swp

" Configure viminfo
set viminfo+=n~/.viminfo


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set smarttab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4


"------------------------------------------------------------
" Cursor Options
"
" These don't seem to be working.
"set cuc
"set cul

" Adjust cursor to be more visible.
if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;red\x7"
    silent !echo -ne "\033]12;red\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

"Adjust cursor to differentiates between modes.
if &term =~ '^xterm\\|rxvt'
    " solid underscore
    let &t_SI .= "\<Esc>[4 q"
    " solid block
    let &t_EI .= "\<Esc>[2 q"
    " 1 or 0 -> blinking block
    " 3 -> blinking underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
endif


"------------------------------------------------------------
" Lets {{{1
"
" Useful lets

" Set the 'prefix' key, also known as the 'leader'. Not used in Vi.
" NOTE: This shadows the default ',' function
let mapleader = ","


"------------------------------------------------------------
" Abbreviations {{{1
"
" Useful abbreviations

" Abbreviation for time
abbr _time <C-R>=system("echo -n `date '+%s'`")<CR>

" Abbreviation for simplified date
abbr _date <C-R>=system("echo -n `date '+%m/%d/%y'`")<CR>

" Abbreviation for full date
abbr __date <C-R>=system("echo -n `date`")<CR><CR>----------------------------


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Andy's Mappings
map mw diw"_dwea, <C-R>"<Esc>
map mb diwb"_dwbi<C-R>", <Esc>bb
map mm :up<CR>:make!<CR>:copen<CR><C-W>p<C-L>
map tt :up<CR>:make!<CR>:copen<CR>G<C-W>p<C-L>
" delete extra spaces at the end of lines
map <silent> cs :sil!%s/\s\+$//<CR><C-O>
vmap c, :s/\v( +),/,\1/g<CR><C-O>
map zn ]s
map zp [s
map j gj
map k gk
"map 0 g0
"map ^ g^
"map $ g$
noremap <C-E> 2<C-E>
noremap <C-Y> 2<C-Y>
map <C-H> :sh<CR>
map <C-T> :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>
map <C-t> :tabnew<CR>
map <C-.> @:
vmap <C-P> !plumb
vmap _ :s/\%V[\x00-\x80]/\0<C-V>u0332/g<CR>`<
vmap - :s/\%V[\x00-\x80]/\0<C-V>u0336/g<CR>`<
vmap ^ :s/\%V[\x00-\x80]/\0<C-V>u0305/g<CR>`<
imap <A-Space> <C-X><C-O>
"imap / /<C-X><C-F>
"nmap dol :diffget LOCAL<CR>
"nmap dor :diffget REMOTE<CR>
map <C-K> :shell<CR>:
"map gv :wall<CR>:mksession .vim2gvim<CR>:new<CR>:only<CR>:!gvim -S .vim2gvim&<CR>:qall<CR>
"map g* *:vim '<C-R>/' **/*.[ch] *.[ch]pp **/*.ad[abs] **/*.ppc **/*.gpj <CR>:copen<CR>
map g* *:vim '<C-R>/' **/*.{[ch],[ch]pp,ad[abs],ppc,gpj,vhd,VHD,tlc,asm} <CR>:copen<CR>
nmap <C-C> :1,$y+<CR>
vmap <C-C> "+y
map gp :cd %:h<CR>:tab ball<CR>gt
map gs :cd %:h<CR>:ball<CR>gt
map gv :cd %:h<CR>:vert ball<CR>gt
map <A-i> gT
map <A-o> gt
map <A-I> :exec 'tabm '.(tabpagenr()-2)<CR>
map <A-O> :exec 'tabm '.(tabpagenr()-0)<CR>
map <A-h> <C-W>h
map <A-j> <C-W>j
map <A-k> <C-W>k
map <A-l> <C-W>l
map <A-H> <C-W>H
map <A-J> <C-W>J
map <A-K> <C-W>K
map <A-L> <C-W>L
map <Tab> <C-W><C-W>
imap <A-h> <Esc><C-W>h
imap <A-j> <Esc><C-W>j
imap <A-k> <Esc><C-W>k
imap <A-l> <Esc><C-W>l
map <A-q> :qall<CR>
map <A-w> :bp<bar>sp<bar>bn<bar>bd<CR>
map Y y$
map ZC :close<CR>
map <F1> :exec 'help '.expand('<cword>')<CR>
map <F2> :w!<CR>
map <silent> K :sil!exec 'ptag '.expand('<cword>')<CR>
map <leader>db :exec 'vert diffsplit '.&backupdir.'/%~'<CR>
map <silent> <leader>t/ :sil!%s/\\/\//g<CR><C-O>
map <silent> <leader>t\ :sil!%s/\//\\/g<CR><C-O>
map <silent> <C-Return> :!open "<cWORD>"<CR>
noremap <silent> <C-l> :nohlsearch<CR><C-l>

 map vp      :exec "     w !vpaste ft=".&ft<CR>
vmap vp <ESC>:exec "'<,'>w !vpaste ft=".&ft<CR>
 map vt      :exec "     w !vtest  ft=".&ft<CR>
vmap vt <ESC>:exec "'<,'>w !vtest  ft=".&ft<CR>

nmap <A-LeftMouse> <LeftMouse><C-V>
vmap <A-LeftDrag> <LeftDrag>
imap <A-LeftMouse> <LeftMouse><C-O><C-V>
vmap <A-LeftMouse> <Esc><LeftMouse><C-V>

" Leaders
map <leader>b    :e     %:h<CR>
map <leader>B    :split %:h<CR>
map <leader>f    :set fdm=manual<CR>:e<CR>
map <leader>F    :set fdm=syntax<CR>:e<CR>
map <leader>.c   :e     %:r.c<CR>
map <leader>.h   :e     %:r.h<CR>
map <leader>.m   :e     %:r.m<CR>
map <leader>.p   :e     %:r.cpp<CR>
map <leader>.C   :split %:r.c<CR>
map <leader>.H   :split %:r.h<CR>
map <leader>.M   :split %:r.m<CR>
map <leader>.P   :split %:r.cpp<CR>

map <leader>rs   :e ~/LastVimSession.vim<CR>
map <leader>td   :tabdo windo diffthis<CR>
map <leader>tr   :!transpose<CR>
map <leader>wd   :windo diffthis<CR>

map <F9>  :set nolist nonumber conceallevel=2 guioptions-=r<CR>:cclose<CR>:pclose<CR>
map <F10> :set   list   number conceallevel=2 guioptions+=r<CR>
map <F11> :set   list   number conceallevel=0 guioptions+=r<CR>


"------------------------------------------------------------
"" Style {{{1
"
"" Style settings

hi Folded     term=underline guibg=#e0e0e0 ctermbg=white
hi FoldColumn term=underline guibg=#e0e0e0 ctermbg=white

" Colorscheme
hi link matlabTodo Todo
hi cr          ctermfg=white
hi Folded      term=underline ctermbg=white guibg=#e8e8e8 guifg=#404040
hi FoldColumn  term=underline ctermbg=white guibg=#e8e8e8 guifg=#404040
hi SpecialKey  guifg=#aaaaff

" VimDiff colors
hi DiffAdd    term=bold                                   ctermbg=9  guibg=#ccffcc
hi DiffDelete term=bold    ctermfg=9  gui=bold guifg=Blue ctermbg=11 guibg=#e8e8e8
hi DiffChange term=bold                                   ctermbg=13 guibg=#ffd0d0
hi DiffText   term=reverse cterm=bold gui=underline,bold  ctermbg=12 guibg=#ffc0c0


"------------------------------------------------------------
"" Use pathogen {{{1
"
"  Manages the 'runtimepath' with ease. In practical terms, pathogen.vim makes
"  it super easy to install plugins and runtime files in their own private
"  directories.

" Run pathogen
execute pathogen#infect()

" Pathogen plugin - solarized colors
set t_Co=256
let g:solarized_termcolors=256
syntax enable
"------------------------------------------------------------
"" NERDTree {{{1
"
"" NERDTree settings
map <silent> <F7>  :sil!TlistClose<CR>:sil!NERDTreeToggle<CR>
map <silent> <C-F> :sil!TlistClose<CR>:sil!NERDTreeToggle<CR>
let g:NERDTreeWinPos        = 'right'
let g:NERDTreeWinSize       = 30
let g:NERDTreeChDirMode     = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeMouseMode     = 3
let g:NERDTreeQuitOnOpen    = 1
let g:NERDTreeSilent        = 1
let g:NERDTreeIgnore        = ['\v\.(ctl|dla|dnm|dbo|exe|gh_out|o|rcb|rcd|rp1|udb|lst|gcno|gcda|png|jpg|docx)$', '\..*\.c', '^__ghs', '\~$']
let g:NERDTreeSortOrder     = ['\/$', '\.vim$', '\v\.(htm|js|css)$', '\v^[^.]*\.(m|c|h|f|cpp|cc)$', '\.rls$', '\.txt$', '\.\(doc\|xls\)x?$', '*', '\.swp$', '\.bak$', '\~$']
hi link treeRO   treeFile


"------------------------------------------------------------
"" Fix macOS meta key
"
"" This snippet is supposed to fix the meta key problem on macs
let c='a'
while c <= 'z'
  exec "set <M-".tolower(c).">=\e".c
  exec "imap \e".c." <M-".tolower(c).">"
  let c = nr2char(1+char2nr(c))
endw

"------------------------------------------------------------
