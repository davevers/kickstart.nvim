return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'echasnovski/mini.icons' },
    opts = {
      options = {
        theme = 'catppuccin-mocha',
        section_separators = '',
        component_separators = '',
      },
    },
  },
  {
    'echasnovski/mini.icons',
    opts = {},
  },
}
