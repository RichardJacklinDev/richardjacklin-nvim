local api = vim.api
local g = vim.g
local opt = vim.opt

-------------
-- GLOBALS --
-------------
-- Disable netrw at the very start of your init.lua (strongly advised)
-- g.loaded = 1
-- g.loaded_netrwPlugin = 1

-- Set leader
g.mapleader = " "

-- Turn off highlight search
g.noh = true

-- Hidden (keep closed file in buffer)
g.hidden = true

-- No wrap text
g.nowrap = true
opt.wm = 80

-- Add offset when scrolling
g.scrolloff = 8

-------------
-- OPTIONS --
-------------
-- Line Numbers
opt.relativenumber = true
opt.nu = true

-- Tab Options
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Keep cursor as block in all modes
-- opt.guicursor = ""

-- Column options
opt.colorcolumn = "80"
opt.signcolumn = "yes"

-------------
-- PLUGINS --
-------------
-- Moonlight Theme
-- g.moonlight_contrast = true
-- g.moonlight_borders = false
-- g.moonlight_disable_background = true

-- Tokyonight Theme
-- g.colorscheme = "tokyonight"
-- vim.cmd("colorscheme tokyonight-night")

-- Material Theme
-- vim.g.material_style = "deep ocean"
-- vim.cmd('colorscheme material')

-- NERD Commentor Options
vim.cmd("let g:NERDCreateDefaultMappings = 1")
vim.cmd("let g:NERDSpaceDelims = 1")

--------------
-- COMMANDS --
--------------
-- Format on Save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])

------------------
-- CHECK HEALTH --
------------------
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0
g.python3_host_prog = "/usr/bin/python3.8"
