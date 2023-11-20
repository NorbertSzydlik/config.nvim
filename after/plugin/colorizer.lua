pcall(function()
  vim.o.termguicolors = true

  require"colorizer".setup({
    "*";
  }, {
    mode = "foreground"
  })
end)
