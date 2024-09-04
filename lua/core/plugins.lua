local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	{ 'hadronized/hop.nvim' },
	{ 'nvim-treesitter/nvim-treesitter' },

	-- lsp
	{ 'neovim/nvim-lspconfig' },
	{ 'williamboman/nvim-lsp-installer' },
	{ 'nvim-lua/plenary.nvim' },
	{ 'onsails/lspkind-nvim' },
	{ 'nvim-lua/diagnostic-nvim' },

	-- emmet
	{ 'pedro757/emmet' },

	-- Autocomplit
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },
	-- For vsnip users.
	{ 'hrsh7th/cmp-vsnip' },
	{ 'hrsh7th/vim-vsnip' },

	-- Telescope
	{ 'nvim-telescope/telescope.nvim'},

	-- Theme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	-- Debug
	'mfussenegger/nvim-dap',
	{
		'mxsdev/nvim-dap-vscode-js',
		dependencies = {"mfussenegger/nvim-dap"},
	},
	{
		'microsoft/vscode-js-debug',
		lazy = false,
  		build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
	},
	{ "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
  	{ 'mfussenegger/nvim-dap-python'},

	-- Neotree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	}

})
