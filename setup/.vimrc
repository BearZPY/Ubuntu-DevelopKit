set number
filetype on
set history=2000 
set background=dark 
syntax on
set mouse=a
set autoindent
set cindent  
set smartindent
set tabstop=4   
set shiftwidth =4   
set ai!  
set showmatch  
set ruler
set incsearch 
set backspace=2
set ts=4
set noexpandtab
"set list  
set hlsearch 
map <F4> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>  
set tags=tags
set autochdir 

map <F3> : Tlist<CR>  
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Use_Right_Window=0
let Tlist_Show_One_File=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1


