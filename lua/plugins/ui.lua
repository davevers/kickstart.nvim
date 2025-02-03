return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'echasnovski/mini.icons' },
    opts = {
      options = {
        theme = 'auto',
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
