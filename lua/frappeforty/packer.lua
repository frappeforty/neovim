return require("packer").startup(function(use)
	-- {{ PLUGIN MANAGER }} ------------------------------------------------
	use("wbthomason/packer.nvim") -- package manager

	-- {{ INTERFACE }} -----------------------------------------------------
	use("ellisonleao/gruvbox.nvim") --colorscheme
	use("nvim-lualine/lualine.nvim") -- statusbar

	-- {{ TELESCOPE }} -----------------------------------------------------
	--
	-- install 'ripgrep' and 'fd' using pacman or dnf or apt etc.
	--
	use("nvim-lua/plenary.nvim") -- plenary
	use("nvim-treesitter/nvim-treesitter") -- treesitter
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0" }) -- telescope

	-- {{ LSP CONFIGS }} ---------------------------------------------------

	use("neovim/nvim-lspconfig") -- configurations for Nvim LSP
	use("jose-elias-alvarez/null-ls.nvim") -- for code formatting, diagnostics and completion
	use("williamboman/mason.nvim") -- package manager for lsp,formatter etc

	-- {{ NVIM COMPLETION }} -----------------------------------------------

	use("hrsh7th/nvim-cmp") -- core nvim cmp
	use("hrsh7th/cmp-nvim-lsp") -- cmp for nvim's built-in LSP

	use("L3MON4D3/LuaSnip") -- luasnip for vs code snippets
	use("rafamadriz/friendly-snippets") -- code snippets
	use("saadparwaiz1/cmp_luasnip") -- cmp for luasnip
	use("hrsh7th/cmp-nvim-lua") -- neovim cmp

	use("hrsh7th/cmp-buffer") -- buffer words cmp
	use("hrsh7th/cmp-path") -- filesystem paths cmp
	use("hrsh7th/cmp-calc") -- math calculations cmp
	use("hrsh7th/cmp-nvim-lsp-signature-help") -- function args cmp

	-- {{ GIT }} ------------------------------------------------------

	use("mhinz/vim-signify") -- git decorations
	use("tpope/vim-fugitive") -- git wrapper

	-- {{ Web Dev }} --------------------------------------------------

	use("mattn/emmet-vim") -- web toolkit for code fragments
	use("norcalli/nvim-colorizer.lua") -- color highlighter

	-- {{ Go Dev }} --------------------------------------------------

	use("ray-x/go.nvim")
	use("ray-x/guihua.lua")

	-- {{ auto pairs }} ----------------------------------------------

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
end)
