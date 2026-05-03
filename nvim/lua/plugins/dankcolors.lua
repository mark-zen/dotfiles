return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#252423',
				base01 = '#252423',
				base02 = '#8c877f',
				base03 = '#8c877f',
				base04 = '#e2dcd2',
				base05 = '#fffcf7',
				base06 = '#fffcf7',
				base07 = '#fffcf7',
				base08 = '#ff958c',
				base09 = '#ff958c',
				base0A = '#edbe74',
				base0B = '#a5ff94',
				base0C = '#ffe4ba',
				base0D = '#edbe74',
				base0E = '#ffd594',
				base0F = '#ffd594',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#8c877f',
				fg = '#fffcf7',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#edbe74',
				fg = '#252423',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8c877f' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffe4ba', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffd594',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#edbe74',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#edbe74',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffe4ba',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#a5ff94',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#e2dcd2' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#e2dcd2' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#8c877f',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
