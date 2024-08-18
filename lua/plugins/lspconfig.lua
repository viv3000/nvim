local util = require('lspconfig.util')

lsp.configure('eslint', {
    root_dir = util.root_pattern('.git')
})

