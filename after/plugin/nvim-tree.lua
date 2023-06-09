require('nvim-tree').setup({
  hijack_cursor = true, -- keeps the cursor on the first letter of filename while navigating.
  disable_netrw = true,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories = {
    enable = true,
    auto_open = false,
  },
  actions = {
    open_file = {
      resize_window = true, -- resizes the tree when opening a file.
    },
  },
  filters = {
    dotfiles = true, -- do not show dotfiles, toggle with H.
  },
  view = {
    side = 'right',
    width = 32,
  },
  renderer = {
    highlight_git = true,
    root_folder_label = function(path)
      local project = vim.fn.fnamemodify(path, ':t')
      return string.upper(project)
    end,
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        default = '',
        symlink = '',
        bookmark = '',
        git = {
          unstaged = '',
          staged = '',
          unmerged = '',
          renamed = '',
          deleted = '',
          untracked = '',
          ignored = '',
        },
        folder = {
          default = '',
          open = '',
          symlink = '',
          arrow_closed = '', -- arrow when folder is closed
          arrow_open = '', -- arrow when folder is open
        },
      },
    },
    special_files = {},
  },
})

-- open nvim-tree on setup.
local function open_nvim_tree(data)
  local no_name = data.file == '' and vim.bo[data.buf].buftype == ''

  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  if directory then
    vim.cmd.cd(data.file)
  end

  require('nvim-tree.api').tree.open()
end

vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })
