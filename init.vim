"    )         )          (       *     
" ( /(      ( /(          )\ )  (  `    
" )\()) (   )\()) (   (  (()/(  )\))(   
"((_)\  )\ ((_)\  )\  )\  /(_))((_)()\  
" _((_)((_)  ((_)((_)((_)(_))  (_()((_) 
"| \| || __|/ _ \\ \ / / |_ _| |  \/  |     author: albuquerque53
"| .` || _|| (_) |\ V /   | |  | |\/| |     role:   PHP/laravel developer
"|_|\_||___|\___/  \_/   |___| |_|  |_|                                     
                             
" Plugins "{{{
" ---------------------------------------------------------------------
call plug#begin()
Plug            'neoclide/coc.nvim',                        {'branch': 'release'}

Plug            'catppuccin/nvim',                          { 'as': 'catppuccin' }

Plug            'jwalton512/vim-blade'

Plug            'nvim-lua/plenary.nvim'
Plug            'nvim-telescope/telescope.nvim',            { 'tag': '0.1.5' }
Plug            'nvim-telescope/telescope-file-browser.nvim'


Plug            'nvim-tree/nvim-web-devicons'
Plug            'akinsho/bufferline.nvim',                  { 'tag': '*' }
Plug            'nvim-lualine/lualine.nvim'
Plug            'm4xshen/autoclose.nvim'
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
let 		    mapleader=" "

" misc binds
nnoremap 	    <leader>fcs     :vsplit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fce     :edit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fcl     :source ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>ho      :nohlsearch<cr>

" file binds
nnoremap 	    <leader>fe      :CocCommand explorer<Enter>
nnoremap        <leader>ff      <cmd>Telescope find_files<cr>
nnoremap        <leader>fg      <cmd>Telescope live_grep<cr>
nnoremap        <leader>fb      <cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>
nnoremap        <leader>fh      <cmd>Telescope help_tags<cr>
nnoremap        <leader>cl      <cmd>bd<cr>
nnoremap        <leader>ca      <cmd>bufdo bd<cr>
nnoremap        gt              <cmd>BufferLineCycleNext<cr>
nnoremap        gT              <cmd>BufferLineCyclePrev<cr>

" Style "{{{
" ---------------------------------------------------------------------
colorscheme catppuccin-latte


" Conf "{{{
" ---------------------------------------------------------------------
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

lua << END
require('lualine').setup()
END

lua << END
require('autoclose').setup()
END

hi Normal guibg=NONE ctermbg=NONE
hi NormalFloat guibg=NONE ctermbg=NONE
