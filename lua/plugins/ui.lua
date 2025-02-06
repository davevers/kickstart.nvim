return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'echasnovski/mini.icons' },
    opts = {
      options = {
        theme = 'kanagawa',
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
