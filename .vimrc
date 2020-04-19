"Solarize all stuff
let g:solarized_termcolors=256
set t_Co=256

syntax enable

set background=dark	
set background=light	
colorscheme solarized	

set incsearch

"Cursor stuff
set cursorline
set cursorcolumn

set number		"Show linenumbers
set rnu			"Show relative linenumbers alongside linenumber

"Tab = 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

set colorcolumn=80

"Indention
set autoindent
set cindent
"set hlsearch

noremap L gt
noremap H gT

" Path search order to tags file for ctags
set tags=./tags,tags;$HOME

" Search for cscope database in parent directories
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  " else add the database pointed to by environment variable 
  elseif $CSCOPE_DB != "" 
    cs add $CSCOPE_DB
  endif
endfunction
au BufEnter /* call LoadCscope()

"set cscopetag
"set cst
"set csto=0
"set tags=./tags,tags;/
"cs add cscope.out

" Comments in 42-style format
set comments=sl:/*,mb:**,ex:*/

" After hitting enter new line of comment will appear.
set formatoptions+=r

" pretty statusline
set laststatus=2

"Autocomplete in insert ''mode
ino " ""<left>
ino [ []<left>
ino ( ()<left>
ino { {}<left>

"Switch on when copy-paste from the clipboard
set pastetoggle=<F2>

noremap <C-i> <C-w><C-]><C-w>T
