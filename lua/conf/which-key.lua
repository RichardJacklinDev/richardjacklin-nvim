local whichkey = require("which-key")

local conf = {
	window = {
		border = "single", -- none, single, double, shadow
		position = "bottom", -- bottom, top
	},
}

local leader_opts = {
	mode = "n",
	prefix = "<leader>",
	buffer = nil,
	silent = false,
	noremap = true,
	nowait = true,
}

local opts = {
	silent = false,
	noremap = true,
	nowait = true,
}

local mappings = {
	-- Save / Quit
	["w"] = { "<cmd>update!<CR>", "Save" },
	["q"] = { "<cmd>q!<CR>", "Quit" },

	-- Format Document
	["f"] = { "<cmd>:lua vim.lsp.buf.format()<CR>", "Format" },

	-- Hop Keybindings
	["h"] = { "<cmd>:HopWord<CR>", "HopWord" },
}

-- Tree keybindings
local tree_mappings = {
	-- Toggle
	["<tab><tab>"] = { "<cmd>:NvimTreeToggle<CR>", "NERDTreeToggle" },
	["<tab>f"] = { "<cmd>::NvimTreeFocus<CR>", "NERDTreeFocus" },
}

-- NVIM Buffer keybindings
local buffer_mappings = {
	-- Move to previous/next
	["<S-l>"] = { "<cmd>:BufferNext<CR>", "BufferNext" },
	["<S-h>"] = { "<cmd>:BufferPrevious<CR>", "BufferPrevious" },

	-- Move to previous/next splits
	["<leader>k"] = { "<cmd>:wincmd l<CR>", "Next Split" },
	["<leader>j"] = { "<cmd>:wincmd h<CR>", "Previous Split" },

	-- Re-order to previous/next
	["<C-l>"] = { "<cmd>:BufferMoveNext<CR>", "BufferMoveNext" },
	["<C-h>"] = { "<cmd>:BufferPrevious<CR>", "BufferPrevious" },

	-- Close buffer
	["<S-x>"] = { "<cmd>:BufferClose<CR>", "BufferClose" },
}

-- Setup WhichKey
whichkey.setup(conf)

-- Register global mappings
whichkey.register(mappings, leader_opts)

-- Register NVIM Tree mappings
whichkey.register(tree_mappings, opts)

-- Register NVIM Buffer mappings
whichkey.register(buffer_mappings, opts)
