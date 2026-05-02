return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      indent = {
        char = "│", 
      },
      scope = {
        enabled = false,
        show_start = false,
        show_end = false,
        highlight = { "Function", "Label" }, 
      },
    },
  },
}

