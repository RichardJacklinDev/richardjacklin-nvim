return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Theme (Moonlight.nvim)
	use("shaunsingh/moonlight.nvim")

	-- Theme (Tokyonight.nvim)
	use("folke/tokyonight.nvim")

	-- Theme (Material.nvim)
	use("marko-cerovac/material.nvim")

	-- Theme (Gruvbox.nvim)
	use("ellisonleao/gruvbox.nvim")

	-- Theme (Kanagawa)
	use("rebelot/kanagawa.nvim")

	-- Null ls (Formatting)
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Hop
	use({
		"phaazon/hop.nvim",
		branch = "v2",
		config = function()
			require("hop").setup({})
		end,
	})

	-- Luasnips
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })

	-- Mason + Lspconfig
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Nvim Tree + Webdevicons
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		tag = "nightly",
	})

	-- Nvim-cmp (Auto complete)
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"quangnguyen30192/cmp-nvim-ultisnips",
			"hrsh7th/cmp-nvim-lua",
			"octaltree/cmp-look",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-calc",
			"f3fora/cmp-spell",
			"hrsh7th/cmp-emoji",
		},
	})

	-- Which key
	use({
		"folke/which-key.nvim",
	})

	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- Barbar
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- Editorconfig
	use("editorconfig/editorconfig-vim")

	-- diffview
	use({ "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" })

	-- NERD Commentor
	use("preservim/nerdcommenter")

	-- FTerm
	use("numToStr/FTerm.nvim")
end)
