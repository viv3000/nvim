local map = vim.api.nvim_set_keymap 

function nm(key, command) 
	map('n', key, command, {noremap = true})
end

function im(key, command)
	map('i', key, command, {noremap = true})
end

function vm(key, command)
	map('v', key, command, {noremap = true})
end

function tm(key, command)
	map('t', key, command, {noremap = true})
end

local map = function(type, key, value)
	vim.fn.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end
local custom_attach = function(client)
	print("LSP started.");
	require'diagnostic'.on_attach(client)

	map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
	map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
	map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
	map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
	map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
	map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
	map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
	map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
	map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
	map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
	map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
	map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
	map('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
	map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
	map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
	map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
end

vim.g.mapleader = " "

-- NeoTree
nm('<leader>e', ':Neotree focus<CR>')
--vim.keymap.set('n', '<leader>e', ':Neotree focus<CR>')
nm('<leader>d', ':Neotree close<CR>')
nm('<leader>o', ':Neotree git_status<CR>')

-- Telescope
-- Find files using Telescope command-line sugar.

nm("<leader>t", ":lua args = {'rg','--color=never','--no-heading','--with-filename','--line-number','--column','--smart-case'} require('telescope.builtin').live_grep( { vimgrep_arguments = args} )<CR>")
nm('<leader>f', ':Telescope find_files theme=dropdown<CR>')
nm('<leader>g', ':Telescope live_grep theme=dropdown<CR>')
nm('<leader>fs', ':Telescope grep_string theme=dropdown<CR>')
nm('<leader>b', ':Telescope buffers theme=dropdown<CR>')
nm('<leader>h', ':Telescope help_tags theme=dropdown<CR>')


-- Set keymaps to control the debugger
nm('<leader>b', ':DapToggleBreakpoint<CR>')
nm('<F5>', ':DapContinue<CR>1<CR><CR>')

nm('<F7>', ':DapStepOver<CR>')
nm('<F8>', ':DapContinue<CR>')

nm('<F9>', ':DapStepInto<CR>')
nm('<F10>', ':DapStepOut<CR>')

nm('<F12>', ':DapTerminate<CR>')
vim.keymap.set('n', '<leader>B', function()
	require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end)
-- dap-ui
local dap, dapui = require("dap"), require("dapui")
vim.keymap.set('n', '<leader>ui', require 'dapui'.toggle)


-- for map
local keymap = vim.keymap
  local map = function(mode, l, r, opts)
    opts = opts or {}
    opts.silent = true
    opts.buffer = bufnr
    keymap.set(mode, l, r, opts)
  end

map("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
