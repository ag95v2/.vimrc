"Solarize all stuff                                                             
let g:solarized_termcolors=256                                                  
set t_Co=256                                                                    
                                                                                
syntax enable                                                                   
                                                                                
set background=light                                                            
colorscheme solarized                                                           
                                                                                
set incsearch                                                                   
                                                                                
"Cursor stuff                                                                   
set cursorline                                                                  
set cursorcolumn                                                                
                                                                                
set number      "Show linenumbers                                               
set rnu         "Show relative linenumbers alongside linenumber                                                                                
                                                                                   
"Autocomplete in insert ''mode                                                  
ino " ""<left>                                                                  
ino [ []<left>                                                                  
ino ( ()<left>                                                                  
ino { {}<left>                                                                  
"ino ' ''<left>                                                                 
                                                                                   
"set lines=70 columns=85                                                        
"syntax on                                                                      
                                                                                   
"Tab = 4 spaces                                                                 
set tabstop=4                                                                   
set shiftwidth=4                                                                
set softtabstop=4                                                               
                                                                                   
set colorcolumn=80                                                              
                                                                                   
"Indention                                                                      
set autoindent       
set cindent                                                                     
set hlsearch                                                                    
                                                                                
noremap L gt                                                                    
noremap H gT                                                                    
                                                                                
" Path search order to tags file for ctags                                      
set tags=./tags,tags;$HOME                                                      
                                                                                
set comments=sl:/*,mb:**,ex:*/                                                  
                                                                                
" After hitting enter new line of comment will appear.                          
set formatoptions+=r                                                            
                                                                                
" pretty statusline                                                             
set laststatus=2      
