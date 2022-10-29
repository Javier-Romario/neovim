local nvim_tree = require('nvim-tree')
local gwidth = vim.api.nvim_list_uis()[1].width
local gheight = vim.api.nvim_list_uis()[1].height
local width = 60
local height = 20

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    float = {
      enable = true,
      open_win_config = {
        relative = "editor",
        width = width,
        height = height,
        row = (gheight - height) * 0.4,
        col = (gwidth - width) * 0.5,
      },
    },
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
