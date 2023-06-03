vim.keymap.set("n", "<leader>fe", vim.cmd.Ex) -- file explorer

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- move line down in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- move line up in visual mode

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])                                                    -- delete and paste

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])                                            -- delete without yanking

vim.keymap.set('n', '<C-s>', ':lua vim.lsp.buf.format()<CR>:w<CR>', { noremap = true })       -- format and save
vim.keymap.set('i', '<C-s>', '<Esc>:lua vim.lsp.buf.format()<CR>:w<CR>a', { noremap = true }) -- format and save

vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format)                                         -- format

vim.keymap.set("i", "<C-c>", "<Esc>")                                                         -- escape with ctrl+c

vim.keymap.set("n", "<leader>rn", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])     -- replace word under cursor

function ToggleTerminalWindow()
  if vim.bo.buftype == 'terminal' then
    vim.cmd('hide')
  else
    vim.cmd('belowright split +terminal')
  end
end

vim.keymap.set('n', '<C-t>', ':lua ToggleTerminalWindow()<CR>', { noremap = true })
vim.keymap.set('i', '<C-t>', '<Esc>:lua ToggleTerminalWindow()<CR>', { noremap = true })
