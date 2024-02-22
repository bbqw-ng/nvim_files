local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here
	-- with the ones you want to install
	-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	ensure_installed = { 'lua_ls' },
	handlers = {
		lsp_zero.default_setup,
	},
})
