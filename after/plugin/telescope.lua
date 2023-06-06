require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      'node_modules',
      'dist',
      'build',
      '.git',
    }
  }
}

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', telescope.find_files, {})
vim.keymap.set('n', '<C-p>', telescope.git_files, {})
