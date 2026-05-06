return {
  {
    "nvim-lualine/lualine.nvim",
		priority = 999,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3a3937" })
      vim.api.nvim_set_hl(0, "VertSplit", { fg = "#3a3937" })

      vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#8c877f", nocombine = true })
      vim.api.nvim_set_hl(0, "IblIndent", { fg = "#3a3937" })

      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'base16',
          disabled_filetypes = {
            statusline = {}, 
            winbar = {},
          },
          globalstatus = true,
          
          ignore_focus = { 'NvimTree' },
          component_separators = { left = '', right = ''},
          section_separators = { left = '', right = ''},
        },
      }
    end
  }
}
