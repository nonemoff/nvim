-- Plugin list configuration file
vim.cmd("packadd packer.nvim")

return require("packer").startup(function()

	use "wbthomason/packer.nvim"
	use "AlexvZyl/nordic.nvim"

end)
