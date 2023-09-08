-- Aliases --
opt = vim.opt
g = vim.g

-- Plugins --
require('plugins.packer_install')

-- Hotkeys --
require('hotkeys.lsp_hotkeys')

-- Options --
require('options.tabs')
require('options.other')
require('options.colorscheme')
