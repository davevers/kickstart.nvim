return {
  { -- highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':tsupdate',
    opts = {
      ensure_installed = { 'bash', 'c', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'query' },
      -- autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- some languages depend on vim's regex highlighting system (such as ruby) for indent rules.
        --  if you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },
    },
    config = function(_, opts)
      -- [[ configure treesitter ]] see `:help nvim-treesitter`

      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)

      -- there are additional nvim-treesitter modules that you can use to interact
      -- with nvim-treesitter. you should go explore a few and see what interests you:
      --
      --    - incremental selection: included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },
}
