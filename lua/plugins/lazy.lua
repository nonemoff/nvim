-- Bootstrap lazy.nvim
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

require("lazy").setup(
  {
    {
      "aktersnurra/no-clown-fiesta.nvim"
    },
    -- Completion --
    { -- Completion framework:
      "hrsh7th/nvim-cmp",
      dependencies = {
        { -- LuaSnip source
          "saadparwaiz1/cmp_luasnip",
          dependencies = { "L3MON4D3/LuaSnip" },
        },
        -- LSP completion source
        "hrsh7th/cmp-nvim-lsp",
        -- Useful completion sources:
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline",
      },
      config = function()
        require("plugins.cmp")
      end,
    },

    -- LSP --
    { -- Mason
      "williamboman/mason.nvim",
      dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
      },
      config = function()
        require("plugins.lspconfig")
      end,
    },

    -- Syntax highlighting
    { -- TreeSitter
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("plugins.tree-sitter")
      end,
    },
  },
  {
  }
)
