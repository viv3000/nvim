local opt = vim.opt
local g = vim.g
vim.opt.relativenumber = true
vim.opt.clipboard= "unnamedplus,unnamed"

opt.ignorecase = true
opt.smartcase = true
opt.showmatch = true

opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

opt.completeopt = 'menuone,noselect'
vim.cmd("autocmd BufEnter * set fo-=c fo-=r fo-=o")

vim.cmd("colorscheme tokyonight-night")

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.opt.foldtext = ""
-- vim.opt.foldlevel = 99
