"    )         )          (       *     
" ( /(      ( /(          )\ )  (  `    
" )\()) (   )\()) (   (  (()/(  )\))(   
"((_)\  )\ ((_)\  )\  )\  /(_))((_)()\  
" _((_)((_)  ((_)((_)((_)(_))  (_()((_) 
"| \| || __|/ _ \\ \ / / |_ _| |  \/  |     author: albuquerque53
"| .` || _|| (_) |\ V /   | |  | |\/| |     role:   go developer
"|_|\_||___|\___/  \_/   |___| |_|  |_|                                     
                             
" Plugins "{{{
" ---------------------------------------------------------------------
call plug#begin()
Plug            'neoclide/coc.nvim',                {'branch': 'release'}
Plug            'fatih/vim-go',                     { 'do': ':GoUpdateBinaries' }

Plug            'airblade/vim-gitgutter'

Plug            'ctrlpvim/ctrlp.vim'
Plug            'mg979/vim-visual-multi',           {'branch': 'master'}

Plug            'vim-airline/vim-airline'
Plug            'vim-airline/vim-airline-themes'
Plug            'dyng/ctrlsf.vim'

Plug            'nanotech/jellybeans.vim'
Plug            'luchermitte/lh-vim-lib'
Plug            'mhinz/vim-startify'
call plug#end()


" Editor "{{{
" ---------------------------------------------------------------------
set 		    cursorline
set 		    hidden
set 		    number
set 		    relativenumber
set 		    inccommand=split
set 		    modifiable
set             tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set             clipboard+=unnamedplus
set             mouse=a


" KeyBinds "{{{
" ---------------------------------------------------------------------
let 		    mapleader="\\"

" misc binds
nnoremap        <leader>fs      :CtrlSF 
nnoremap 	    <leader>fcs     :vsplit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fce     :edit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fcl     :source ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader><space> :nohlsearch<cr>

" file binds
nnoremap 	    <leader>fe      :CocCommand explorer<Enter>

" go binds
nnoremap 	    <leader>lr      :GoRun<cr>
nnoremap 	    <leader>lt      :GoTest<cr>
nnoremap 	    <leader>lds     :GoDebugStart<cr>
nnoremap 	    <leader>ldp     :GoDebugStop<cr>
nnoremap 	    <leader>ldc     :GoDebugContinue<cr>
nnoremap 	    <leader>ldb     :GoDebugBreakpoint<cr>


" Style "{{{
" ---------------------------------------------------------------------
colorscheme     jellybeans


" Conf "{{{
" ---------------------------------------------------------------------

" go debug conf
let             g:go_debug_windows = {
          \ 'vars':       'rightbelow 60vnew',
          \ 'stack':      'rightbelow 10new',
\ }
