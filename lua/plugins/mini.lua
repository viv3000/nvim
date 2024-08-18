require("nvim-lsp-installer").setup {}
require('telescope').setup({
  defaults = {
    ripgrep_arguments = {
		--hidden,
		--u
    },
  },
})
