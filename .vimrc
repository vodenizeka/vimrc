" Setting up Color
" ===================================
syntax on

highlight Normal ctermbg=Black ctermfg=White
highlight Comment ctermbg=Black ctermfg=Green
highlight Constant ctermbg=Black ctermfg=11
highlight NonText ctermbg=Black ctermfg=Cyan
highlight Special ctermbg=Black ctermfg=Cyan
highlight Cursor ctermbg=Yellow ctermfg=DarkYellow
highlight Visual ctermbg=Cyan ctermfg=Black
" -----------------------------------------------
highlight String ctermfg=202
highlight Title ctermfg=231
" some new stuff:
"highlight Identifier ctermbg=Red ctermfg=Black
highlight Repeat cterm=bold ctermbg=Black ctermfg=92
highlight Function cterm=bold ctermfg=Yellow
highlight Operator ctermfg=White
highlight LineNr ctermfg=LightBlue
highlight MatchParen ctermbg=Yellow ctermfg=5
highlight Pmenu ctermbg=Yellow ctermfg=5
highlight PmenuSel ctermbg=5 ctermfg=Yellow
highlight PmenuSbar ctermbg=LightBlue ctermfg=Blue
highlight PmenuThumb ctermbg=Blue ctermfg=LightBlue 

" testing
" --------------
"highlight StatusLine ctermbg=Yellow ctermfg=Red
highlight SpecialKey ctermbg=Black ctermfg=DarkYellow
highlight Statement ctermbg=Black ctermfg=92
highlight PreProc ctermbg=Black ctermfg=5
highlight Type ctermbg=Black ctermfg=69

set colorcolumn=100 
highlight ColorColumn ctermbg=Yellow ctermfg=Black " highlight column number 100 

" JS COLOR SETTINGS :
" ==========================================
highlight jsObjectProp ctermbg=Black ctermfg=43
highlight jsFuncCall ctermbg=Black ctermfg=135 cterm=bold
highlight jsThis ctermbg=black ctermfg=208 cterm=bold 

" ===================================
set t_Co=256
set hidden               " Leave hidden buffers open
set history=1000         " saved last commands, default is 8
set relativenumber               " Line numbers
" ===========================================================
set nocompatible         " Use vim rather then vi settings
set encoding=utf-8       " Character encoding... duh
set autoread             " Reload files changed outside vim
set hidden               " Buffers can exist in the background
set backspace=indent,eol,start "Allow backspace in insert mode

" General Config
" ==================================================
set showcmd           " Show incomplete cmds down the bottom
set laststatus=2      " Always show status line
set shell=zsh         " shell set to bash
 
" Indentation and Display
" ==================================================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab
set nowrap             " Don't wrap lines

" Folds
" =========================================
set foldmethod=indent  " Fold based on indent
set foldnestmax=3      " Deepest fold is 3 levels
set nofoldenable       " Don't fold by default

" Completion
" ========================
set wildmode=longest,list,full
set wildmenu               " Enable ctrl-n and ctrl-p to scroll (ctrl-n remapped)
set wildignore=*.o,*.obj,*~ " Stuff to ignore when tab completing
set wildignore+=*vim/backups*

" Scrolling
" ==========================================
" Start scrolling when we're getting close to margins
set scrolloff=10
set sidescrolloff=15
set sidescroll=1

" Custom commands
" ==========================================
" \rf => refresh vimrc
map <leader>rf :source ~/.vimrc<CR>
" \s => quick save
noremap <leader>s :update<CR>
" ctrl-n => open NERDTree
map <C-n> :NERDTreeToggle<CR>
map <leader>hg :so $VIMRUNTIME/syntax/hitest.vim<CR>
" ==============================================
" So much for now...

" Some tools for C/C++ plugin
" =============================================
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen='yes'

" Some beginner settings for syntastic
" =====================================
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable the plugin
" =========================
filetype plugin on


" Pathogen plugin exe
execute pathogen#infect() 


" Autocomplete HTML
" ====================================
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags




"     THEME PART - still not sure about this
"let g:thematic#themes = {
"\ 'bubblegum'  : {
"\    },
"\ 'jellybeans' : { 'laststatus': 0,
"\                  'ruler': 1,
"\                },
"\ 'pencil_dark' :{'colorscheme': 'pencil',
"\                 'background': 'dark',
"\                 'airline-theme': 'badwolf',
"\                 'ruler': 1,
"\                },
"\ 'pencil_lite' :{'colorscheme': 'pencil',
"\                 'background': 'light',
"\                 'airline-theme': 'light',
"\                 'ruler': 1,
"\                },
"\ }

" ==========================================
" Shortcuts for C/C++ plugin
" ==========================================
" ----------------
" STATEMENTS
" ----------------
" \sd     do while
" \sf     for
" \sfo    for block
" \sfr    range-based for
" \si     if
" \sif    if block
" \sie    if else
" \sife   if block else
" \se     else block
" \sw     while
" \swh    while block
" \ss     switch
" \sc     case
" \sb     block
" ---------------------
"  IDIOMS
" -------------------
" \if     function
" \isf    function-static
" \im     main
" \ie     enum
" \is     struct
" \iu     union
" \isc    scanf
" \ipr    printf
" \ica    calloc
" \ima    malloc
" \ire    realloc
" \isi    sizeof
" \ias    assert
" \ii     open-input-file
" \io     open-output-file
" \ifpr   fprintf
" \ifsc   fscanf
" \i0     for(x=0;x<n;x++)
" \in     for(x=n-1;x>=0;x--)
" -------------------------------
" RUN
" ------------------------------
" \rc <A-F9>  save and compile
" \rl <F9>    link
" \rr <C-F9>  run
" \re         executable to run
" \ra <S-F9>  cmd.line.arg.
" \rd         run debugger
" ... there's more...
" ===========================================


