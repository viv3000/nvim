require'nvim-treesitter.configs'.setup {
	ensure_installed = { 
		"c", "cpp",
		"lua",
		"vim", "vimdoc", "query", 
		"python", 
	      	"javascript", "typescript", "tsx",
		"html", "css",
		"bash", "fish"
	},

	sync_install = false,
	auto_install = true,

	highlight = {
	enable = true,
	},
}
