require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = '|',
    section_separators = '',
    refresh = {
      statusline = 10,
      tabline = 100,
      winbar = 100,
    },
  },
}

