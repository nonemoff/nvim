local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
opt.rtp:prepend(lazypath)

local status_ok, _ = pcall(require, "lazy")
if not status_ok then
  print("lazy just installed, please restart neovim")
  return
end

require("lazy").setup(
  {
    require("plugins.lualine"),
  },

  {
    ui = {
      border = "rounded",
    },
  }
)
