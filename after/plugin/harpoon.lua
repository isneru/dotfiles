local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>h', mark.add_file)        -- add current file to harpoon
vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu) -- open menu harpoon

vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end)
