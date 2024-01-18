--     )         )          (       *     
--  ( /(      ( /(          )\ )  (  `    
--  )\()) (   )\()) (   (  (()/(  )\))(   
-- ((_)\  )\ ((_)\  )\  )\  /(_))((_)()\  
--  _((_)((_)  ((_)((_)((_)(_))  (_()((_) 
-- | \| || __|/ _ \\ \ / / |_ _| |  \/  |     author: albuquerque53
-- | .` || _|| (_) |\ V /   | |  | |\/| |     role:   PHP/laravel developer
-- |_|\_||___|\___/  \_/   |___| |_|  |_|                                     

-- Plugins
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('neoclide/coc.nvim', { branch = 'release' })
Plug('catppuccin/nvim', { as = 'catppuccin' })

Plug('jwalton512/vim-blade')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.5' })
Plug('nvim-telescope/telescope-file-browser.nvim')

Plug('nvim-tree/nvim-web-devicons')
Plug('akinsho/bufferline.nvim', { tag = '*' })
Plug('nvim-lualine/lualine.nvim')
Plug('m4xshen/autoclose.nvim')

vim.call('plug#end')

-- Editor
vim.api.nvim_set_option("cursorline", true)
vim.api.nvim_set_option("hidden", true)
vim.api.nvim_set_option("number", true)
vim.api.nvim_set_option("relativenumber", true)
vim.api.nvim_set_option("inccommand", "split")
vim.api.nvim_set_option("modifiable", true)
vim.api.nvim_set_option("tabstop", 4)
vim.api.nvim_set_option("softtabstop", 0)
vim.api.nvim_set_option("expandtab", true)
vim.api.nvim_set_option("shiftwidth", 4)
vim.api.nvim_set_option("smarttab", true)
vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.api.nvim_set_option("mouse", "a")

-- KeyBinds
vim.api.nvim_set_keymap("n", "<Space>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>fcs", ":vsplit ~/.config/nvim/init.vim<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>fce", ":edit ~/.config/nvim/init.vim<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>fcl", ":source ~/.config/nvim/init.vim<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>ho", ":nohlsearch<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Space>fe", ":CocCommand explorer<Enter>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>ff", ":Telescope find_files<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>fg", ":Telescope live_grep<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>cl", ":bd<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>ca", ":bufdo bd<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gt", ":BufferLineCycleNext<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gT", ":BufferLineCyclePrev<cr>", { noremap = true, silent = true })
