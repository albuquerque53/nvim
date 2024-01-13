-- Enable termguicolors
vim.opt.termguicolors = true

-- Define highlight groups
vim.api.nvim_exec([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalFloat guibg=NONE ctermbg=NONE
]], false)
