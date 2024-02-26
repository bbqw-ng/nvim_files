-- Note: c+v use() :so && :PackerSync to install
vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})
	use("nvimtools/none-ls.nvim")
	use("theprimeagen/harpoon")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
  use("christoomey/vim-tmux-navigator")
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  --This is ranger but I chose not to use it, below is a dependency.
  --use { 'francoiscabrol/ranger.vim' }
  --use("rbgrouleff/bclose.vim")
  use {'preservim/nerdtree'}
  use { 'ryanoasis/vim-devicons' }

end)
