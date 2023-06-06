function Colorize(color)
  color = color or 'catppuccin'
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })

  vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'StatusLineTerm', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'none' })

  vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = 'none', fg = 'none' })
  vim.api.nvim_set_hl(0, 'NvimTreeVertsplit', { bg = 'none', fg = 'none' })
end

Colorize()
