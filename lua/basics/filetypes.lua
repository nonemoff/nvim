g.do_filetype_lua = 1

vim.filetype.add({
  extension = {
    ["cpp"] = function()
      opt.expandtab = true
      opt.tabstop = 2
      opt.shiftwidth = 2
      return "cpp"
    end,
    ["py"] = function()
      opt.expandtab = true
      opt.tabstop = 2
      opt.shiftwidth = 2
      return "py"
    end,
    ["go"] = function()
      opt.expandtab = true
      opt.tabstop = 2
      opt.shiftwidth = 2
      return "go"
    end,
    ["lua"] = function()
      opt.expandtab = true
      opt.tabstop = 2
      opt.shiftwidth = 2
      return "lua"
    end,
    ["html"] = function()
      opt.expandtab = true
      opt.tabstop = 4
      opt.shiftwidth = 4
      return "html"
    end,
    ["js"] = function()
      opt.expandtab = true
      opt.tabstop = 4
      opt.shiftwidth = 4
      return "js"
    end,
    },

  pattern = {
    [".*%.(yaml|yml)$"] = function() 
      vim.bo.expandtab = true
      vim.bo.tabstop = 2
      vim.bo.shiftwidth = 2
      return "yaml"
    end,
    },
})
