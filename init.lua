-- Setup Packer for plugin
require("plugins")

-- Colourscheme:
-- require("conf/themes/material")
-- require("conf/themes/gruvbox")
-- require("conf/themes/tokyonight")
require("conf/themes/kanagawa")

-- Setup inital vim options
require("options")

-- //
-- Plugin Configurations
-- //

-- MASON + LSPCONFIG
require("conf/mason")
require("conf/mason-lspconfig")
-- require("conf/lspconfig")

-- NULL LS (FORMATTING)
require("conf/null-ls")

-- TREESITTER
require("conf/treesitter")

-- TELESCOPE
require("conf/telescope")

-- NVIM TREE
require("conf/tree")

-- NVIM CMP (Auto complete)
require("conf/cmp")

-- WHICH KEY
require("conf/which-key")

-- LUALINE
require("conf/lualine")

-- BARBAR
require("conf/barbar")

-- FTerm
require("conf/fterm")
