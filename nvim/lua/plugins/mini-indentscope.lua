-- lua/plugins/mini-indentscope.lua

return {
  'echasnovski/mini.indentscope',
  version = false, 
  config = function()
    require('mini.indentscope').setup({
      draw = {
        delay = 100,
        animation = require('mini.indentscope').gen_animation.none(),
        priority = 2,
      },
      mappings = {
        object_scope = 'ii',
        object_scope_with_border = 'ai',
        goto_top = '[i',
        goto_bottom = ']i',
      },

      options = {
        border = 'both',
        indent_at_cursor = true,
        try_as_border = false,
      },
      -- │

      symbol = '│',

    })
  end,
}
