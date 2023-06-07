vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- move line down in visual mode
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- move line up in visual mode

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])         -- delete and paste

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]]) -- delete without yanking

function Format() vim.lsp.buf.format() end

vim.keymap.set('n', '<C-s>', ':lua Format()<CR>:w<CR>', { noremap = true })               -- format and save
vim.keymap.set('i', '<C-s>', '<Esc>:lua Format()<CR>:w<CR>a', { noremap = true })         -- format and save

vim.keymap.set('n', '<leader>fo', Format)                                                 -- format

vim.keymap.set('n', '<leader>rn', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace word under cursor

function ToggleTerminalWindow()
  if vim.bo.buftype == 'terminal' then
    vim.cmd('hide')
  else
    vim.cmd('belowright split +terminal')
  end
end

vim.keymap.set('n', '<C-t>', ':lua ToggleTerminalWindow()<CR>', { noremap = true })      -- toggle terminal window
vim.keymap.set('i', '<C-t>', '<Esc>:lua ToggleTerminalWindow()<CR>', { noremap = true }) -- toggle terminal window

vim.keymap.set('i', '<C-b>', '<ESC>:NvimTreeToggle<CR>')                                 -- toggle file explorer
vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>')                                      -- toggle file explorer
